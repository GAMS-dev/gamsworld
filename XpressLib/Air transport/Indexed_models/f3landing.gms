*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file f3landing.mos
*   ``````````````````
*   Schedule plane landings
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************!)

* model "F-3 Landing schedule"

Set PLANES / p1*p10 / ;
* Set of airplanes
Alias(PLANES,PLANES1) ;

Parameter START[PLANES]  / p1 129 , p2 195 , p3  89 , p4  96 , p5  110 ,
                           p6 120 , p7 124 , p8 126 , p9 135 , p10 160  / ;
Parameter STOP[PLANES]   / p1 559 , p2 744 , p3 510 , p4 521 , p5  555 ,
                           p6 576 , p7 577 , p8 573 , p9 591 , p10 657  / ;
* Start, end of arrival time windows

Parameter TARGET[PLANES] / p1 155 , p2 258 , p3  98 , p4 106 , p5  123 ,
                           p6 135 , p7 138 , p8 140 , p9 150 , p10 180  / ;
* array(PLANES) of integer      ! Planned arrival times

Parameter CEARLY[PLANES] / p1 10 , p2 10 , p3 30 , p4 30 , p5  30 ,
                           p6 30 , p7 30 , p8 30 , p9 30 , p10 30  / ;

Parameter CLATE[PLANES]  / p1 10 , p2 10 , p3 30 , p4 30 , p5  30 ,
                           p6 30 , p7 30 , p8 30 , p9 30 , p10 30  / ;
* Cost of earliness/lateness

Table DIST[PLANES,PLANES1]
                             p1 p2 p3 p4 p5 p6 p7 p8 p9 p10
                        p1    0  3 15 15 15 15 15 15 15  15
                        p2    3  0 15 15 15 15 15 15 15  15
                        p3   15 15  0  8  8  8  8  8  8   8
                        p4   15 15  8  0  8  8  8  8  8   8
                        p5   15 15  8  8  0  8  8  8  8   8
                        p6   15 15  8  8  8  0  8  8  8   8
                        p7   15 15  8  8  8  8  0  8  8   8
                        p8   15 15  8  8  8  8  8  0  8   8
                        p9   15 15  8  8  8  8  8  8  0   8
                       p10   15 15  8  8  8  8  8  8  8   0  ;

* Minimum interval between planes

Parameter M[PLANES,PLANES1]
* Sufficiently large positive values
Loop((PLANES,PLANES1),
 M[PLANES,PLANES1]= STOP[PLANES] + DIST[PLANES,PLANES1] - START[PLANES1] ;
     ) ;

Binary Variable prec[PLANES,PLANES1] ;
* 1 if plane i precedes j

Variable  land[PLANES]  ,
* Arrival time
          early[PLANES] ,
          late[PLANES]  ,
* Earliness/lateness
          Cost           ;

Equation Eq_1(PLANES,PLANES1) ,
         Eq_2(PLANES,PLANES1) ,
         Eq_3(PLANES)         ,
         Eq_4(PLANES)         ,
         Eq_5(PLANES)         ,
         Def_obj               ;

* Keep required intervals between plan arrivals
Eq_1(PLANES,PLANES1)$(ord(PLANES) gt ord(PLANES1))..
    land[PLANES] + DIST[PLANES,PLANES1] =l=
                    land[PLANES1] + M[PLANES,PLANES1]*    prec[PLANES1,PLANES] ;
* forall(p,q in PLANES | p<q)
Eq_2(PLANES,PLANES1)$(ord(PLANES) lt ord(PLANES1))..
    land[PLANES] + DIST[PLANES,PLANES1] =l=
                    land[PLANES1] + M[PLANES,PLANES1]*(1-prec[PLANES,PLANES1]) ;
Eq_3(PLANES)..
  early[PLANES] =g= TARGET[PLANES] - land[PLANES]                 ;
Eq_4(PLANES)..
  late[PLANES]  =g= land[PLANES]   - TARGET[PLANES]               ;
Eq_5(PLANES)..
  land[PLANES]  =e= TARGET[PLANES] - early[PLANES] + late[PLANES] ;

* Objective: total penalty for deviations from planned arrival times
Def_obj..
    Cost =e= Sum{PLANES,
                (CEARLY[PLANES]*early[PLANES] + CLATE[PLANES]*late[PLANES])} ;

* Relations between earliness, lateness, and effective arrival time

  land.lo[PLANES]  = START[PLANES]                 ;
  land.up[PLANES]  = STOP[PLANES]                  ;
  early.up[PLANES] = TARGET[PLANES]-START[PLANES]  ;
  late.up[PLANES]  = STOP[PLANES]-TARGET[PLANES]   ;

* Solve the problem

Model F_3_Landing_schedule / All  / ;

Solve F_3_Landing_schedule using MIP minimazing Cost ;

Display Cost.l ;
