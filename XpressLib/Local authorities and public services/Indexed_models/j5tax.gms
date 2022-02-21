*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file j5tax.mos
*   ``````````````
*   Choice of locations for income tax offices
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "J-5 Tax office location"

Set CITIES / c1*c12 / ;
* Set of cities
Alias(CITIES,CITIES1) ;
Alias(CITIES,CITIES2) ;

* Population of cities
Parameter POP[CITIES]  / c1 15 ,  c2 10 ,  c3 12 ,  c4 18 ,
                         c5  5 ,  c6 24 ,  c7 11 ,  c8 16 ,
                         c9 13 , c10 22 , c11 19 , c12 20 / ;

* Road lengths
Parameter LEN[CITIES,CITIES1] ;  LEN[CITIES,CITIES1] = 0 ;
                                 LEN['c1','c2']   = 15 ;
                                 LEN['c1','c5']   = 24 ;
                                 LEN['c1','c7']   = 18 ;
                                 LEN['c2','c3']   = 22 ;
                                 LEN['c3','c4']   = 18 ;
                                 LEN['c3','c5']   = 16 ;
                                 LEN['c3','c9']   = 20 ;
                                 LEN['c4','c6']   = 12 ;
                                 LEN['c5','c8']   = 12 ;
                                 LEN['c5','c9']   = 24 ;
                                 LEN['c6','c9']   = 12 ;
                                 LEN['c6','c12']  = 22 ;
                                 LEN['c7','c8']   = 15 ;
                                 LEN['c7','c10']  = 22 ;
                                 LEN['c8','c9']   = 30 ;
                                 LEN['c8','c11']  = 25 ;
                                 LEN['c9','c11']  = 19 ;
                                 LEN['c9','c12']  = 19 ;
                                 LEN['c10','c11'] = 19 ;
                                 LEN['c11','c12'] = 21 ;

Parameter BIGM ;
    BIGM = Sum{(CITIES,CITIES1)$(LEN(CITIES,CITIES1)>0), LEN[CITIES,CITIES1] };

Parameter DIST[CITIES,CITIES1] ;
Loop((CITIES,CITIES1),DIST[CITIES,CITIES1] = BIGM ; ) ;
* Set values on the diagonal to 0
Loop((CITIES,CITIES1)$(ord(CITIES) eq ord(CITIES1)),
                      DIST[CITIES,CITIES1] = 0    ; ) ;

Loop((CITIES,CITIES1)$(LEN[CITIES,CITIES1] gt 0),
                     DIST[CITIES,CITIES1] = LEN[CITIES,CITIES1]  ;  );
Loop((CITIES,CITIES1)$((ord(CITIES) lt ord(CITIES1)) and
                       (LEN[CITIES,CITIES1] gt 0   )),
                     DIST[CITIES1,CITIES] = DIST[CITIES,CITIES1] ;  );

* Update shortest distance for every node triple

Loop(CITIES ,
Loop(CITIES1,
Loop(CITIES2,
IF((ord(CITIES1) lt ord(CITIES2)),
IF(DIST(CITIES1,CITIES2) gt (DIST(CITIES1,CITIES)+DIST(CITIES,CITIES2)),
    DIST(CITIES1,CITIES2) = DIST(CITIES1,CITIES)+DIST(CITIES,CITIES2);
    DIST(CITIES2,CITIES1) = DIST(CITIES1,CITIES)+DIST(CITIES,CITIES2);
   );
   );
);););

* Distance matrix

* Desired number of tax offices
Scalar NUMLOC / 3 / ;

Binary Variable  build[CITIES]          ,
* 1 if office in city, 0 otherwise
                 depend[CITIES,CITIES1] ;
* (c,d) 1 if city c depends on office
* in city d, 0 otherwise

Variable TotDist ;

Equation Eq_1(CITIES)         ,
         Eq_2                 ,
         Eq_3(CITIES,CITIES1) ,
         Def_obj              ;

* Assign cities to offices
Eq_1(CITIES)..
    Sum{CITIES1, depend[CITIES,CITIES1] } =e= 1 ;

* Limit total number of offices
Eq_2..
    Sum{CITIES, build[CITIES] } =l= NUMLOC ;

* Relations between dependencies and offices built
Eq_3(CITIES,CITIES1)..
    depend[CITIES,CITIES1] =l= build[CITIES1] ;

* Objective: weighted total distance
Def_obj..
    TotDist =e= Sum{(CITIES,CITIES1),
                     POP[CITIES]*DIST[CITIES,CITIES1]*depend[CITIES,CITIES1] } ;

* Solve the problem
Model J_5_Tax_office_location / all / ;
* Solve the MIP-problem
Solve J_5_Tax_office_location using MIP minimazing TotDist ;

* Evaluation of hospital
Display TotDist.l ;



