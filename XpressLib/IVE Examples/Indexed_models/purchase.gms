*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file purchase.mos
*   `````````````````
*   TYPE:         Purchasing with price breaks
*   DIFFICULTY:   3
*   FEATURES:     MIP problem, modeling a piecewise linear function with SOS-2,
*                 graphical representation of data
*   DESCRIPTION:  There are three suppliers of a good, and they have quoted
*                 various prices for various quantities of product. We want
*                 to buy at least total cost, yet not buy too much from any
*                 one supplier. Each supplier offers decreasing prices for
*                 increased lot size, in the form of incremental discounts.
*                 We wish to buy 600 items in total.
*   FURTHER INFO: `Applications of optimization with Xpress-MP teaching
*                 material', Section 2.4 `SOS-2: Purchasing with price breaks';
*                 `Applications of optimization with Xpress-MP',
*                 Section 3.4.5 `Special Ordered Sets of type 2'
*
*   (c) 2001 Dash Associates
*       author: S. Heipcke
********************************************************!)

* model "Purchase"

$Set NB 3
* Price breaks including 0
Set BREAK0 /b0*b%NB%/ ;
* Price breaks
Set BREAK1(BREAK0) /b1*b%NB%/ ;

* Suppliers
Set SUPPL /s1*s3/;

* Unit cost
Table COST[SUPPL,BREAK0]
                         b0    b1    b2    b3
                      s1  0   9.2   9.0   7.0
                      s2  0   9.0   8.5   8.3
                      s3  0  11.0   8.5   7.5  ;

* Breakpoints (quantities at which unit
* cost changes)
Table BR[SUPPL,BREAK0]
                    b0    b1  b2   b3
               s1    0   100 200 1000
               s2    0   50  250 2000
               s3    0   100 300 4000  ;

* Total cost at break points
Parameter CBR[SUPPL,BREAK0]

* Calculate total cost at breakpoints
Loop{SUPPL,
  CBR[SUPPL,'b0'] = 0.0 ;
Loop{BREAK0$BREAK1(BREAK0),
  CBR[SUPPL,BREAK0]= CBR[SUPPL,BREAK0-1] +
                     COST[SUPPL,BREAK0]*(BR[SUPPL,BREAK0]-BR[SUPPL,BREAK0-1]) ;
     } ;
     } ;


* Maximum percentages for each supplier
Parameter MAXPERC[SUPPL] / s1 40 , s2 35 , s3 40 / ;
* Total quantity required
Scalar REQ / 600 / ;


Variable
* Quantity to purchase from supplier s
  buy[SUPPL]       ,
* Weights at breakpoint k for supplier s
  w[SUPPL,BREAK0]  ,
  MinCost          ;

Equation Eq_Buy(SUPPL) ,
         OneW(SUPPL)   ,
         Demand        ,
         Def_Obj       ;


* Define buy and also order the weight variables by breakpoint quantities
Eq_Buy(SUPPL)..
    Sum{BREAK0, BR[SUPPL,BREAK0] * w[SUPPL,BREAK0] } =e= buy[SUPPL] ;

* The convexity row (w sum to 1)
OneW(SUPPL)..
    Sum{BREAK0, w[SUPPL,BREAK0] } =e= 1.0 ;

* The minimum quantity that must be bought
Demand..
    Sum{SUPPL, buy[SUPPL] }  =g= REQ ;

* Objective: sum of costs*weights
Def_Obj..
    MinCost =e= Sum{(SUPPL,BREAK0), CBR[SUPPL,BREAK0] * w[SUPPL,BREAK0] } ;

* No more than the maximum percentage from each supplier
buy.up[SUPPL] = MAXPERC[SUPPL]*REQ/100.0  ;
w.lo[SUPPL,BREAK0] = 0 ;

* XPress solutions
*buy.fx['s1'] = 240 ;
*buy.fx['s2'] = 210 ;
*buy.fx['s3'] = 150 ;

* Solve the MIP-problem
Model Purchase / all / ;

Solve Purchase using LP Minimazing MinCost ;

Display MinCost.l ;