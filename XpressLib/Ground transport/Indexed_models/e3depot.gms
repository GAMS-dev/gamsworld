*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file e3depot.mos
*   ````````````````
*   Depot location
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "E-3 Depot location"

Set DEPOTS / d1*d12 / ;
* Set of depots
Set CUST   / c1*c12 / ;
* Set of customers

Parameter   CFIX[DEPOTS] / d1 3500 ,  d2  9000 ,  d3 10000 ,  d4  4000 ,
                           d5 3000 ,  d6  9000 ,  d7  9000 ,  d8  3000 ,
                           d9 4000 , d10 10000 , d11  9000 , d12  3500  / ;
* Fix cost of depot construction

Parameter   CAP[DEPOTS] / d1 300 ,  d2 250 ,  d3 100 ,  d4 180 ,
                          d5 275 ,  d6 300 ,  d7 200 ,  d8 220 ,
                          d9 270 , d10 250 , d11 230 , d12 180  / ;
* Depot capacity

Parameter   DEM[CUST]      / c1 120 ,  c2  80 ,  c3 75 ,  c4 100
                             c5 110 ,  c6 100 ,  c7 90 ,  c8  60
                             c9  30 , c10 150 , c11 95 , c12 120 /  ;
* Demand by customers

Table COST[DEPOTS,CUST]
        c1  c2  c3      c4      c5      c6  c7  c8  c9     c10     c11     c12
   d1  100  80  50      50      60     100 120  90  60      70      65     110
   d2  120  90  60      70      65     110 140 110  80      80      75     130
   d3  140 110  80      80      75     130 160 125 100     100      80     150
   d4  160 125 100     100      80     150 190 150 130 1000000 1000000 1000000
   d5  190 150 130 1000000 1000000 1000000 200 180 150 1000000 1000000 1000000
   d6  200 180 150 1000000 1000000 1000000 100  80  50      50      60     100
   d7  100  80  50      50      60     100 120  90  60      70      65     110
   d8  120  90  60      70      65     110 140 110  80      80      75     130
   d9  140 110  80      80      75     130 160 125 100     100      80     150
  d10  160 125 100     100      80     150 190 150 130 1000000 1000000 1000000
  d11  190 150 130 1000000 1000000 1000000 200 180 150 1000000 1000000 1000000
  d12  200 180 150 1000000 1000000 1000000 100  80  50      50      60     100 ;
* Delivery cost

Binary Variable build[DEPOTS] ;
*               1 if depot built, 0 otherwise

Variable fflow[DEPOTS,CUST] ,
* Perc. of demand supplied from depot
         TotCost            ;

Equation Eq_1(CUST)   ,
         Eq_2(DEPOTS) ,
         Def_obj      ;

* Satisfy demands
Eq_1(CUST)..
    Sum{DEPOTS, fflow[DEPOTS,CUST] } =e= 1 ;

* Capacity limits at depots
Eq_2(DEPOTS)..
    sum{CUST, DEM[CUST]*fflow[DEPOTS,CUST]} =L= CAP[DEPOTS]*build[DEPOTS] ;



* Objective: total cost
Def_obj..
    TotCost =e= Sum{(DEPOTS,CUST), COST[DEPOTS,CUST]*fflow[DEPOTS,CUST] } +
                Sum{ DEPOTS,       CFIX[DEPOTS]*build[DEPOTS]           } ;

fflow.lo[DEPOTS,CUST] = 0 ;
fflow.up[DEPOTS,CUST] = 1 ;

* Solve the problem
Model E_3_Depot_location / All  / ;

Solve E_3_Depot_location using MIP minimazing TotCost ;

Display TotCost.l ;
