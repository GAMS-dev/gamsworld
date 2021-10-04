*******************************************************
*   Mosel Example Problems
*   ======================
*
*  Origin file pricebrinc.mos
*   ```````````````````
*   Incremental pricebreaks formulated with SOS2
*
*   (c) 2006 Dash Associates
*       author: S. Heipcke, Sep. 2006
********************************************************

* model "Incremental pricebreaks (SOS2)"



$Set NB 3
* Number of price bands
Set BREAKS  /b1*b%NB% / ;


Parameter COST[BREAKS] / b1 0.8 , b2 0.5 , b3 0.3 / ;
* Cost per unit within price bands


Scalar DEM / 150 / ;
* Demand

Scalar CBP_INIT   / 0 / ;
Scalar B_big_INIT / 0 / ;


Parameter B_big[BREAKS] / b1 50 , b2 120 , b3 200 / ;
Parameter CBP[BREAKS] ; CBP[BREAKS] = 0  ;

Loop{BREAKS,  CBP[BREAKS] = CBP[BREAKS-1]$(ord(BREAKS) gt 1) +
                            CBP_INIT$(ord(BREAKS) eq 1) +
         (COST[BREAKS] * (B_big[BREAKS]-B_big[BREAKS-1]))$(ord(BREAKS) gt 1) +
         (COST[BREAKS] * (B_big[BREAKS]-B_big_INIT))$(     ord(BREAKS) eq 1)  ;
    };



Variable  w[BREAKS],
* Weight variables
          TotalCost ;

Equation Defx   ,
         Eq_1   ,
         Def_Obj ;

* Definition of x
Defx..
 DEM =e= Sum{BREAKS, B_big[BREAKS]*w[BREAKS]};

* Weights sum up to 1
Eq_1..
 Sum{BREAKS, w[BREAKS] } =e= 1 ;



* Objective: total price
Def_Obj..
    TotalCost =e= Sum{BREAKS, CBP[BREAKS]*w[BREAKS] } ;

w.lo[BREAKS] = 0 ;

* XPress solution:
*w.fx['B1'] = 0 ;
*w.fx['B2'] = 0.625 ;
*w.fx['B3'] = 0.375 ;

* GAMS solution:
*w.fx['B1'] = 0.3333 ;
*w.fx['B2'] = 0.0000 ;
*w.fx['B3'] = 0.6666 ;


* Solve the problem
Model Incremental_pricebreaks / all / ;

* Solve the MIP-problem
Solve Incremental_pricebreaks using LP minimazing TotalCost ;


* Meet the demand
Parameter x ;
 x = Sum{BREAKS, B_big[BREAKS]*w.l[BREAKS]} ;
* Total quantity bought

Display TotalCost.l ;