*********************************************
* Origin file mrp2.mos
*   `````````````
*   Example from Voss/Woodruff: Supply Chain
*   Management, Springer 2002
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, July 2002
**********************************************!)

* model "MRP2"
* uses "mmxprs"                  ! Use Xpress-Optimizer for solving

* Time Buckets
Set TT / t1 * t8 / ;
Alias(TT,TT1);
* SKUs
Set PP / AJ8172 , LQ8811 , RN0098 , NN1100 , WN7342 / ;
Alias(PP,PP1) ;

* Resources
Set KK / HR , MT / ;

* Number of SKUs i to produce one SKU j
Parameter R[PP,PP1] ;
          R['LQ8811','AJ8172'] = 2 ;
          R['RN0098','AJ8172'] = 1 ;
          R['NN1100','LQ8811'] = 1 ;
          R['WN7342','LQ8811'] = 1 ;
* External demand for an item in a period
Parameter D[PP,TT] ;
          D['AJ8172','t1'] = 20 ; D['AJ8172','t2'] = 30 ;
          D['AJ8172','t3'] = 10 ; D['AJ8172','t4'] = 20 ;
          D['AJ8172','t5'] = 30 ; D['AJ8172','t6'] = 20 ;
          D['AJ8172','t7'] = 30 ; D['AJ8172','t8'] = 40 ;


* Fraction of res. k needed by one SKU i
Parameter U[PP,KK] ;
          U['AJ8172','HR'] = 0.00208333 ;
          U['AJ8172','MT'] = 0.00104166 ;
          U['LQ8811','MT'] = 0.00333333 ;
          U['NN1100','MT'] = 0.00000100 ;

* Lead time of items
Parameter LT[PP]    / AJ8172 2 , LQ8811 3 , RN0098 4 , NN1100 1 , WN7342  12 / ;

* Beginning inventory of SKU i
Parameter I_BIG[PP] / AJ8172 90 , LQ8811 300 , RN0098 100 , WN7342 900 / ;

* Lot sizes
Parameter LS[PP] / AJ8172  100 ,
                   LQ8811  400 ,
                   RN0098  100 ,
                   NN1100    1 ,
                   WN7342 1000  / ;


* Non-negativity constraints
Positive Variable
*                  Number of SKUs to produce
                   x[PP,TT] ;
         Variable   Obj      ;

Equation MatReq(PP,TT)   ,
         Capacity(TT,KK) ,
         Def_Obj         ;

* Demand and materials requirement
MatReq(PP,TT)..
    Sum{TT1$(ord(TT1) le ord(TT) - LT[PP]), x[PP,TT1] } + I_BIG[PP] =g=
    Sum{TT1$(ord(TT1) le ord(TT)         ),(D[PP,TT1] +
                                            sum{PP1,R[PP,PP1]*x[PP1,TT1]})} ;

* Resource capacity limits
Capacity(TT,KK)..
    Sum{PP, U[PP,KK]*x[PP,TT] } =l= 1 ;

Def_Obj..
    Obj =e= Sum{(PP,TT), (Card(TT) - ord(TT) + 1) * x[PP,TT] } ;


* Solve the problem

Model MRP2 / all / ;

* Solve the problem
Solve MRP2 using LP minimazing Obj ;

Display Obj.l ;
