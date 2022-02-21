******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file pricebrai.mos
*   ``````````````````
*   Modeling price breaks:
*   All item discount pricing
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Sep. 2006
********************************************************

* model "All item discount"

$Set NB 3
* Number of price bands

Set BREAKS  /b1*b%NB% / ;

Parameter COST[BREAKS] / b1 1 , b2 0.7 , b3 0.5 / ;
* Cost per unit

* Indicators of price bands
Parameter B_big[BREAKS] / b1 50 , b2 120 , b3 200 / ;
* Break points of cost function
Scalar B_big_init / 0 / ;


Scalar DEM / 150 / ;
* Demand

Binary Variable b[BREAKS] ;

Variable  x[BREAKS] ,
* Number of items bought at a price
          b[BREAKS] ,
          TotalCost ;

Equation Eq_1         ,
         Eq_2(BREAKS) ,
         Eq_3(BREAKS) ,
         Eq_4         ,
         Def_Obj       ;

* Meet the demand
Eq_1..
    Sum{BREAKS, x[BREAKS] } =e= DEM ;

* Lower and upper bounds on quantities
Eq_2(BREAKS)..
 (B_big_init *b[BREAKS])$(ord(BREAKS) eq 1) +
 (B[BREAKS-1]*b[BREAKS])$(ord(BREAKS) gt 1)   =l= x[BREAKS] ;

Eq_3(BREAKS)..
  x[BREAKS] =l= B_big[BREAKS]*b[BREAKS] ;

* The quantity bought lies in exactly one interval

Eq_4..
    Sum{BREAKS, b[BREAKS] } =e= 1 ;

* Objective: total price
Def_Obj..
    TotalCost =e= Sum{BREAKS, COST[BREAKS]*x[BREAKS] } ;

* Solve the problem

Model All_item_discount / all / ;

* Solve the MIP-problem
Solve All_item_discount using MIQCP minimazing TotalCost ;

Display TotalCost.l ;