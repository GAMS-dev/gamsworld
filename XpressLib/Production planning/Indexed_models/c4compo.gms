******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file c4compo.mos
*   ````````````````
*   Planning the production of electronic components
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "C-4 Electronic components"


$Set  NT  6
* Number of time periods (months)
Set MONTHS  /m1*m%NT%/ ;
Set PRODS  /p1*p4/ ;
* Set of components

Set PNAME / X43-M1 , X43-M2 , Y54-N1 , Y54-N2 / ;

Table DEM[PRODS,MONTHS]
                             m1   m2   m3   m4   m5   m6
                        p1  1500 3000 2000 4000 2000 2500
                        p2  1300  800  800 1000 1100  900
                        p3  2200 1500 2900 1800 1200 2100
                        p4  1400 1600 1500 1000 1100 1200 ;

* Demand of components per month
Parameter CPROD[PRODS]   / p1 20.0 , p2 25.0 , p3 10.0 , p4 15.0 / ;
* Production costs
Parameter CSTOCK[PRODS]  / p1  0.4 , p2  0.5 , p3  0.3 , p4  0.3 / ;
* Storage costs

Scalar CADD / 1.0 / ;
Scalar CRED / 0.5 / ;
* Cost of additional/reduced prod.

Parameter ISTOCK[PRODS]  / p1 10 , p2  0 , p3 50 , p4  0 / ;
Parameter FSTOCK[PRODS]  / p1 50 , p2 10 , p3 30 , p4 10 / ;
* Initial and final stock levels

Positive Variable
         produce[PRODS,MONTHS]  ,
* Quantities produced per month
         store[PRODS,MONTHS]    ,
* Stock levels at end of every month
         reduce[MONTHS]         ,
* Reduction of production per month
         add[MONTHS]            ;
* Increase of production per month

Variable
         Cost                   ;

Equation Eq_1(PRODS,MONTHS) ,
         Eq_2(MONTHS)       ,
         Def_obj            ;

* Stock balance constraints (satisfy demands)
Eq_1(PRODS,MONTHS)..
  store[PRODS,MONTHS] =e= (store[PRODS,MONTHS-1]$(ord(MONTHS) gt 1) +
                           ISTOCK[PRODS]$(ord(MONTHS) eq 1)           ) +
                           produce[PRODS,MONTHS] - DEM[PRODS,MONTHS] ;

* Changes to the level of production
Eq_2(MONTHS)$(ord(MONTHS) gt 1)..
    Sum{PRODS,(produce[PRODS,MONTHS] -
               produce[PRODS,MONTHS-1])} =e= add[MONTHS] - reduce[MONTHS] ;

* Objective: total cost of production, storage, and change of prod. level
Def_obj..
    Cost =e= Sum{(PRODS,MONTHS),(CPROD[PRODS] *produce[PRODS,MONTHS] +
                                 CSTOCK[PRODS]*  store[PRODS,MONTHS]) } +
             Sum{MONTHS$(ord(MONTHS) gt 1),(CRED*reduce[MONTHS] +
                                            CADD*add[MONTHS])} ;
* Guarantee final stock levels
store.lo[PRODS,'m%NT%'] = FSTOCK(PRODS)

* Solve the problem
Model C_4_Electronic_components / all / ;

Solve C_4_Electronic_components using lp minimazing Cost ;

Display Cost.l ;











