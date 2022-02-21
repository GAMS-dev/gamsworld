********************************************************
*  Mosel Example Problems
*  ======================
*
* Origin file purch1.mos
*  ```````````````
*  Purchasing problem using SOS-2.
*  Data input using diskdata.
*
*  (c) 2001 Dash Associates
*      author: S.Heipcke
**********************************************************!)
* The formulation of this model is tricky because the discounts are
*   all-quantity, so the graph of cost against quantity purchased is
*   discontinuous.
*   To maintain sanity in the special ordered set formulation, we must
*   coarsen the discontinuity by stopping purchases just at the break
*   point.


* model Purchase                  ! Start a new model

* Problem parameters
$Set NBS  3
$Set NBR  3
$Set NBR2 6

* Counter simple
Set I / i1,i2 /;
* Range of suppliers
Set RS / S1*S%NBS% / ;
* Range of price breaks
Set RB  / B1*B%NBR% / ;
Set RB2 / B1*B%NBR2% / ;

Parameter PARAM[I] ;
          PARAM['i1'] = 600 ;
          PARAM['i2'] = 3 ;

* Base coarsening factor
Scalar delta / 0.10 / ;

* Unit cost
Parameter UC[RS,RB] ;
           UC['s1','b1'] =  9.2 ;
           UC['s1','b2'] =  9.0 ;
           UC['s1','b3'] =  7.0 ;
           UC['s2','b1'] =  9.0 ;
           UC['s2','b2'] =  8.5 ;
           UC['s2','b3'] =  8.3 ;
           UC['s3','b1'] = 11.0 ;
           UC['s3','b2'] =  8.5 ;
           UC['s3','b3'] =  7.5 ;

* Breakpoints (quantities at which unit cost changes)
Parameter BR[RS,RB] ;
           BR['s1','b1'] =  100 ;
           BR['s1','b2'] =  200 ;
           BR['s1','b3'] = 1000 ;
           BR['s2','b1'] =   50 ;
           BR['s2','b2'] =  250 ;
           BR['s2','b3'] = 2000 ;
           BR['s3','b1'] =  100 ;
           BR['s3','b2'] =  300 ;
           BR['s3','b3'] = 4000 ;

* Coarsened break points
Parameter X_big[RS,RB2] ;
* Total cost at break points
Parameter C[RS,RB2] ;
* Pick out the data from the tables into which they have just been read.
  C[RS,'b1']     = 0.0000 ;
* First total cost and (new) breakpoint
  X_big[RS,'b1'] = 0.0000 ;
* are (0,0). Rest calculated:
Alias(RB2,RB2_a);

* Coarsening factors
* Recursively define coarsening factors
Parameter DELTA_big[RB2] ;
 DELTA_big['b1'] = 0      ;
 DELTA_big['b2'] = -delta ;
Loop{RB2$(ord(RB2) gt 2), DELTA_big[RB2] = -DELTA_big[RB2-1] ;   };


Parameter ADD_B_1[RB2];
Parameter ADD_B[RB2];
          ADD_B_1[RB2] = floor({ord(RB2)+1} / 2) ;
          ADD_B[RB2]   = floor(ord(RB2)     / 2) ;

Loop{(RS,RB2)$(ord(RB2) gt 1),
* Unit price*quantity
  C[RS,RB2]    =
                  Sum{RB$(ord(RB) eq ADD_B_1[RB2] ) , UC[RS,RB]}*
                  Sum{RB$(ord(RB) eq ADD_B[RB2]   ) , BR[RS,RB]};
* Coarsened grids
 X_big[RS,RB2] =
                  Sum{RB$(ord(RB) eq ADD_B[RB2]   ) , BR[RS,RB]} +
                  DELTA_big[RB2] ;
};


* Maximum percentages for each supplier ( was read from the file "maxperc.dat")
Parameter MAXPERC[RS] ;
          MAXPERC['S1']  = 40 ;
          MAXPERC['S2']  = 35 ;
          MAXPERC['S3']  = 40 ;


* Total quantity required
Parameter REQ ; REQ = PARAM['i1'] ;

Variable
* Quantity to purchase from supplier s
          x[RS]       ,
* Weights at breakpoint k for supplier s
          lam[RS,RB2] ,
          MinCost     ;

Equation
         DefX(RS)     ,
         Conv(RS)     ,
         MustBuy      ,
         Def_Obj      ;



* Define x and also order the lam variables
* by breakpoint quantities
DefX(RS)..
    Sum{RB2, X_big[RS,RB2] * lam[RS,RB2] } =e= x[RS] ;

* The convexity row (lam sum to 1)
Conv(RS)..
    Sum{RB2, lam[RS,RB2] } =e= 1.0 ;

* The minimum quantity that must be bought
MustBuy..
    Sum{RS, x[RS] } =g= REQ ;

* Define the lam as SOS2 as we can linearly interpolate between the
* breakpoints. The weights are the coefficients X of the DefX constraints,
* all augmented by delta since Mosel does not accept 0-valued weights.

*SetLam(RS)..
*    Sum(RB2, (X(RS,RB2)+delta) * lam(RS,RB2) }  is_sos2

* Objective: sum of costs*weights
Def_Obj..
    MinCost =e= Sum{(RS,RB2), C[RS,RB2] * lam[RS,RB2] } ;


* No more than the maximum percentage
* from each supplier
x.up[RS] = MAXPERC[RS]*REQ/100.0 ;
lam.lo[RS,RB2] = 0 ;
* Solve the MIP-problem
Model Purchase / all / ;

Solve Purchase using LP minimazing MinCost ;

Display MinCost.l ;

*Background:
*
*There are three suppliers of a good, and they have quoted various prices for
*various quantities of product. We want to buy at least total cost, yet not
*buy too much from any one supplier. Each supplier offers decreasing prices
*for increased lot size, and these are all-item prices.
*
*For example :
*
*Supplier Max %age   Price 0-100       Price 101-200   Price 200+
*Bob            40     9.2    100        9    200        7   1000
*                       ^      ^
*                    price    breakpoint
*
*i.e. if you buy 150 items from Bob, the total cost is 9*150.