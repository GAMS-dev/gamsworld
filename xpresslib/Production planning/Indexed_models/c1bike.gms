******************************************************
*   Mosel Example Problems
*   ======================
*
* origin file c1bike.mos
*   ```````````````
*   Planning the production of bicycles
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "C-1 Bicycle production"


Set TIMES /t1*t12/ ;
* Range of time periods
Set MONTHS / Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec / ;

Parameter DEM[TIMES] / t1 30000 ,  t2 15000 ,  t3 15000 ,
                       t4 25000 ,  t5 33000 ,  t6 40000 ,
                       t7 45000 ,  t8 45000 ,  t9 26000 ,
                       t10 14000 , t11 25000 , t12 30000 / ;
* Demand per months
Scalar CNORM  / 32 / ;
* Prod. cost in normal
Scalar COVER  / 40 / ;
* overtime hours
Scalar CSTOCK /  5 / ;
* Storage cost per bicycle
Scalar CAP / 30000 / ;
* Monthly capacity in normal working hours
Scalar ISTOCK / 2000 / ;
* Initial stock


Variable pnorm[TIMES] ,
* No. of bicycles produced in normal hours
         pover[TIMES] ,
* No. of bicycles produced in overtime hours
         store[TIMES] ,
* No. of bicycles stored per month
         Cost         ;

Equation Eq_1(TIMES)  ,
         Def_obj      ;

* Satisfy the demand for every period
Eq_1(TIMES)..
  pnorm[TIMES] + pover[TIMES] +
               store[TIMES-1]$(ord(TIMES) gt 1 ) +
               ISTOCK$(ord(TIMES) eq 1 )   =e=
                                                      DEM[TIMES] + store[TIMES] ;

* Objective: minimize production cost
Def_obj..
 Cost =e= Sum{TIMES,(CNORM*pnorm[TIMES]+COVER*pover[TIMES]+CSTOCK*store[TIMES])};

* Capacity limits on normal and overtime working hours per month
pnorm.up[TIMES] = CAP    ;
pover.up[TIMES]  = 0.5*CAP ;

pnorm.lo[TIMES] = 0 ;
pover.lo[TIMES] = 0 ;
store.lo[TIMES] = 0 ;

Model C_1_Bicycle_production / all / ;

Solve C_1_Bicycle_production using nlp minimazing Cost ;

Display Cost.l ;

