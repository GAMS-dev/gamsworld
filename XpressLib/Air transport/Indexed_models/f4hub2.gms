*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file f4hub2.mos
*   ```````````````
*   Choosing hubs for transatlantic freight
*   (second, improved formulation)
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Jul. 2002
*******************************************************

* model "F-4 Hubs (2)"

Set CITIES / Atlanta , Boston , Chicago , Marseille , Nice , Paris / ;
* Cities

Set US(CITIES) / Atlanta , Boston , Chicago / ;
Set EU(CITIES) / Marseille , Nice , Paris   / ;

Alias(CITIES,CITIES1) ;
Alias(CITIES,CITIES2) ;
Alias(CITIES,CITIES3) ;

Set Exist(CITIES,CITIES1,CITIES2,CITIES3) ;
Exist(CITIES,CITIES1,CITIES2,CITIES2) = Yes$(US(CITIES)  and
                                             US(CITIES1) and
                                             US(CITIES2) and
                                             (ord(CITIES) lt ord(CITIES1))) ;
Exist(CITIES,CITIES1,CITIES2,CITIES2) = Yes$(EU(CITIES)  and
                                             EU(CITIES1) and
                                             EU(CITIES2) and
                                             (ord(CITIES) lt ord(CITIES1))) ;

Exist(CITIES,CITIES1,CITIES2,CITIES3) = Yes$(US(CITIES)  and
                                             US(CITIES1) and
                                             EU(CITIES2) and
                                             EU(CITIES3)                  ) ;

Scalar FACTOR / 0.8 / ;
* Reduction of costs between hubs
Scalar NHUBS / 2 /
* Number of hubs

Table  QUANT[CITIES,CITIES1]
                          Atlanta   Boston Chicago Marseille Nice Paris
                Atlanta         0      500    1000       300  400 1500
                Boston       1500        0     250       630  360 1140
                Chicago       400      510       0       460  320  490
                Marseille     300      600     810         0  820  310
                Nice          400      100     420       730    0  970
                Paris         350     1020     260       580  380    0  ;
* Quantity to transport
Loop((CITIES,CITIES1)$(ord(CITIES) lt ord(CITIES1)),
                       QUANT[CITIES,CITIES1] = QUANT[CITIES,CITIES1] +
                                               QUANT[CITIES1,CITIES]  ;
    );
Table  DIST[CITIES,CITIES1]
                          Atlanta Boston Chicago Marseille Nice Paris
                Atlanta         0    945     605      4667 4749  4394
                Boston        945      0     866      3726 3806  3448
                Chicago       605    866       0      4471 4541  4152
                Marseille    4667   3726    4471         0  109   415
                Nice         4749   3806    4541       109    0   431
                Paris        4394   3448    4152       415  431     0  ;
* Distance between cities
Parameter calc_cost[CITIES,CITIES1,CITIES2,CITIES3] ;

Loop((CITIES,CITIES1,CITIES2,CITIES3) ,
          calc_cost[CITIES,CITIES1,CITIES2,CITIES3] = DIST[CITIES,CITIES1]+
                                                      FACTOR*DIST[CITIES2,CITIES3]+
                                                      DIST[CITIES3,CITIES1] ;
    ) ;


Binary Variable flow[CITIES,CITIES1,CITIES2,CITIES3] ,
* flow(i,j,k,l)=1 if freight
* from i to j goes via k and l
                hub[CITIES]                        ;
* 1 if city is a hub, 0 otherwise

Variable TOTAL_Cost ;

Equation Eq_1                 ,
         Eq_2(CITIES,CITIES1) ,
         Eq_3(CITIES,CITIES1) ,
         Eq_4(CITIES,CITIES1) ,
         Eq_5(CITIES,CITIES1,CITIES2,CITIES3) ,
         Eq_6(CITIES,CITIES1,CITIES2,CITIES3) ,
         Def_obj               ;

* Number of hubs
Eq_1..
    Sum{CITIES, hub[CITIES] } =e= NHUBS ;

* One hub-to-hub connection per freight transport
Eq_2(CITIES,CITIES1)$(ord(CITIES) lt ord(CITIES1))..
    Sum{(CITIES2,CITIES3), flow[CITIES,CITIES1,CITIES2,CITIES3]  } =e= 1 ;

Eq_3(CITIES,CITIES1)$((US(CITIES) ) and
                      (US(CITIES1)) and
                      (ord(CITIES) lt ord(CITIES1)) )..
    Sum{CITIES3$US(CITIES3),flow[CITIES,CITIES1,CITIES3,CITIES3] } =e= 1 ;

Eq_4(CITIES,CITIES1)$((EU(CITIES) ) and
                      (EU(CITIES1)) and
                      (ord(CITIES) lt ord(CITIES1)) )..
    Sum{CITIES3$EU(CITIES3),flow[CITIES,CITIES1,CITIES3,CITIES3] } =e= 1 ;

* Relation between flows and hubs
Eq_5(CITIES,CITIES1,CITIES2,CITIES3)..
  flow[CITIES,CITIES1,CITIES2,CITIES3] =l= hub[CITIES2] ;

Eq_6(CITIES,CITIES1,CITIES2,CITIES3)..
  flow[CITIES,CITIES1,CITIES2,CITIES3] =l= hub[CITIES3] ;

* Objective: total transport cost
Def_obj..
    TOTAL_Cost =e=
       Sum{(CITIES,CITIES1,CITIES2,CITIES3),
                                  QUANT[CITIES,CITIES1]*
                                  calc_cost[CITIES,CITIES1,CITIES2,CITIES3]*
                                  flow[CITIES,CITIES1,CITIES2,CITIES3] } ;

hub.lo[CITIES] = 0 ;
* XPress solution 
*hub.fx['Atlanta'] = 1 ;
*hub.fx['Nice'] = 1 ;

* Solve the problem
Model F_4_Hubs_2 / All  / ;

Solve F_4_Hubs_2 using MIP minimazing TOTAL_Cost ;

Display TOTAL_Cost.l ;





