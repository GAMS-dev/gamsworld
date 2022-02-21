*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file e1carrent.mos
*   ``````````````````
*   Fleet management in car rental
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "E-1 Car rental"


Set AGENTS / a1*a10/ ;
* Car rental agencies
Alias(AGENTS,AGENTS_b) ;

Parameter   REQ[AGENTS] / a1 10 , a2  6 , a3  8 , a4 11 , a5   9 ,
                          a6  7 , a7 15 , a8  7 , a9  9 , a10 12  / ;
* Required number of cars
Parameter STOCK[AGENTS] / a1  8 , a2 13 , a3  4 , a4  8 , a5  12
                          a6  2 , a7 14 , a8 11 , a9 15 , a10  7 / ;
* Number of cars in stock

Set NEED(AGENTS) ;   NEED(AGENTS)   = Yes$((REQ[AGENTS]-STOCK[AGENTS]) > 0) ;
* Agencies needing more cars

Set EXCESS(AGENTS) ; EXCESS(AGENTS) = Yes$((REQ[AGENTS]-STOCK[AGENTS]) < 0) ;
* Agencies with too many cars

Parameter X[AGENTS]     / a1  0 , a2  20 , a3 18 , a4 30 , a5  35 ,
                          a6 33 , a7   5 , a8  5 , a9 11 , a10  2  / ;
Parameter Y[AGENTS]     / a1  0 , a2  20 , a3 10 , a4 12 , a5   0 ,
                          a6 25 , a7  27 , a8 10 , a9  0 , a10 15  / ;
* Coordinates of rental agencies
Scalar COST / 0.5 / ;
* Cost per km of moving a car

Parameter DIST[AGENTS,AGENTS_b] ;
* Distance between agencies
* Calculate distances between agencies
DIST[AGENTS,AGENTS_b] =(1.3*sqrt(sqr(X[AGENTS]-X[AGENTS_b]) +
                                 sqr(Y[AGENTS]-Y[AGENTS_b]))  )$((EXCESS(AGENTS))and
                                                                 (NEED(AGENTS_b))) ;

Integer Variable move[AGENTS,AGENTS_b] ;
* Cars exchanged between agencies

Variable Cost_Total            ;

Equation  Eq_1(AGENTS)          ,
          Eq_2(AGENTS_b)        ,
          Def_obj               ;

* Agencies with excess availability
Eq_1(AGENTS)$(EXCESS(AGENTS))..
    Sum{AGENTS_b$NEED(AGENTS_b), move[AGENTS,AGENTS_b]} =e=
                                               STOCK[AGENTS] - REQ[AGENTS] ;
* Agencies in need of cars
Eq_2(AGENTS_b)$(NEED(AGENTS_b))..
    Sum{AGENTS$EXCESS(AGENTS), move[AGENTS,AGENTS_b]}   =e=
                                               REQ[AGENTS_b] - STOCK[AGENTS_b] ;

* Objective: total transport cost
Def_obj..
    Cost_Total =e= Sum{(AGENTS,AGENTS_b)$((EXCESS(AGENTS))and(NEED(AGENTS_b))),
                             COST*DIST[AGENTS,AGENTS_b]*move[AGENTS,AGENTS_b]} ;

move.lo[AGENTS,AGENTS_b] = 0 ;

* Solve the problem
Model E_1_Car_rental / All  / ;

Solve E_1_Car_rental using mip minimazing Cost_Total ;

Display Cost_Total.l ;

