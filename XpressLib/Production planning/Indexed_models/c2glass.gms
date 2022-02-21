******************************************************
*   Mosel Example Problems
*   ======================
*
* origin file c2glass.mos
*   ````````````````
*   Planning the production of glasses
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "C-2 Glass production"

$Set NT 12
* Number of weeks in planning period
Set WEEKS / w1*w%NT% / ;
Set PRODS / p1*p6    / ;
* Set of products


Scalar CAPW /  390 / ;
Scalar CAPM /  850 / ;
* Capacity of workers and machines
Scalar CAPS / 1000 / ;
* Storage capacity


Table DEM[PRODS,WEEKS]
       w1  w2  w3  w4  w5  w6  w7  w8  w9  w10 w11 w12
  p1   20  22  18  35  17  19  23  20  29  30  28  32
  p2   17  19  23  20  11  10  12  34  21  23  30  12
  p3   18  35  17  10   9  21  23  15  10   0  13  17
  p4   31  45  24  38  41  20  19  37  28  12  30  37
  p5   23  20  23  15  10  22  18  30  28   7  15  10
  p6   22  18  20  19  18  35   0  28  12  30  21  23  ;
* Demand per product and per week

Parameter CPROD[PRODS]  / p1 100 , p2 80 , p3  110 , p4 90 , p5 200 , p6 140 / ;
* Production cost per product
Parameter CSTOCK[PRODS] / p1  25 , p2 28 , p3  25 , p4  27 , p5  10 , p6  20 / ;
* Storage cost per product
Parameter FSTOCK[PRODS] / p1  10 , p2 10 , p3  10 , p4  10 , p5  10 , p6  10 / ;
* Min. final stock levels
Parameter ISTOCK[PRODS] / p1  50 , p2 20 , p3   0 , p4  15 , p5   0 , p6  10 / ;
* Initial stock levels

Parameter TIMEW[PRODS] / p1 3 , p2 3 , p3 3 , p4 2 , p5  4 , p6 4 / ;
Parameter TIMEM[PRODS] / p1 2 , p2 1 , p3 4 , p4 8 , p5 11 , p6 9 / ;
* Worker and machine time per unit
Parameter SPACE[PRODS] / p1 4 , p2 5 , p3 5 , p4 6 , p5  4 , p6 9 / ;
* Storage space required by products

Variable produce[PRODS,WEEKS] ,
* Production of products per week
         store[PRODS,WEEKS]   ,
* Amount stored at end of week
         Cost                 ;

Equation Eq_1(PRODS,WEEKS) ,
         Eq_2(WEEKS)       ,
         Eq_3(WEEKS)       ,
         Eq_4(WEEKS)       ,
         Def_obj           ;


* Stock balances
Eq_1(PRODS,WEEKS)..
  store[PRODS,WEEKS] =e= {store[PRODS,WEEKS-1]$(ord(WEEKS) gt 1 )+
                          ISTOCK[PRODS]$(ord(WEEKS) eq 1 )        } +
                         produce[PRODS,WEEKS] - DEM[PRODS,WEEKS] ;

* Capacity constraints
Eq_2(WEEKS)..  Sum{PRODS, TIMEW[PRODS]*produce[PRODS,WEEKS]} =L= CAPW ;
* Workers
Eq_3(WEEKS)..  Sum{PRODS, TIMEM[PRODS]*produce[PRODS,WEEKS]} =L= CAPM ;
* Machines
Eq_4(WEEKS)..  Sum{PRODS, SPACE[PRODS]*store[PRODS,WEEKS]  } =L= CAPS ;
* Storage

* Objective: sum of production and storage costs
Def_obj..  Cost =e=  Sum{(PRODS,WEEKS),(CPROD[PRODS]*produce[PRODS,WEEKS] +
                                        CSTOCK[PRODS]*store[PRODS,WEEKS])} ;


produce.lo[PRODS,WEEKS] = 0 ;
store.lo[PRODS,WEEKS]   = 0 ;
* Final stock levels
store.lo[PRODS,'w%NT%'] = FSTOCK[PRODS];

Model C_2_Glass_production / all / ;

Solve C_2_Glass_production using nlp minimazing Cost ;

Display Cost.l ;








