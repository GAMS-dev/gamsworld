*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file pricebrinc2.mos
*   ````````````````````
*   Incremental pricebreaks formulated with
*   binary variables
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Sep. 2006
********************************************************

* model "Incremental pricebreaks (binaries)"

$Set NB 3
* Number of price bands
Set BREAKS  /b1*b%NB% / ;

Parameter COST[BREAKS] / b1 0.8 , b2 0.5 , b3 0.3 / ;
*  Cost per unit
Parameter B_big[BREAKS] / b1 50 , b2 120 , b3 200 / ;
* Break points of cost function
Scalar B_big_INIT / 0 / ;
Scalar DEM / 150 / ;
* Demand


Binary Variable b[BREAKS] ;
* Indicators of price bands


Variable x[BREAKS] ,
* Number of items bought at a price
         TotalCost ;

Equation Eq_1         ,
         Eq_2(BREAKS) ,
         Eq_3(BREAKS) ,
         Eq_4(BREAKS) ,
         Def_Obj       ;

* Meet the demand
Eq_1..
 Sum{BREAKS, x[BREAKS] } =e= DEM ;

* Lower and upper bounds on quantities
Eq_2(BREAKS)$(ord(BREAKS) lt card(BREAKS))..
 (B_big[BREAKS]- B_big[BREAKS-1]$(ord(BREAKS) gt 1 )
               - B_big_INIT$(     ord(BREAKS) eq 1 )
 ) * b[BREAKS+1] =l= x[BREAKS] ;

Eq_3(BREAKS)..
  x[BREAKS] =l= (B_big[BREAKS]-B_big[BREAKS-1]$(ord(BREAKS) gt 1 )
                              -B_big_INIT$(     ord(BREAKS) eq 1 )) * b[BREAKS];

* Sequence of price intervals
Eq_4(BREAKS)$(ord(BREAKS) lt card(BREAKS))..
  b[BREAKS] =g= b[BREAKS+1] ;

* Objective: total price
Def_Obj..
 TotalCost =e= Sum{BREAKS, COST[BREAKS]*x[BREAKS] } ;

* XPress solutions:
*b.fx['B1'] = 1 ;
*b.fx['B2'] = 1 ;
*b.fx['B3'] = 1 ;
*x.fx['B1'] = 50 ;
*x.fx['B2'] = 70 ;
*x.fx['B3'] = 30 ;

* Solve the problem
Model Incremental_pricebreaks_binary / all / ;

* Solve the MIP-problem
Solve Incremental_pricebreaks_binary using MIP minimazing TotalCost ;

Display TotalCost.l ;