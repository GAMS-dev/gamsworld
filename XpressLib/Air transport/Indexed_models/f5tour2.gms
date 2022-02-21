*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file f5tour2.mos
*   ````````````````
*   Problem 9.6: Planning a flight tour
*   (second formulation for other data format)
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Jun. 2002
*******************************************************

* model "F-5 Tour planning (2)"

Set CITIES / Bordeaux , Lille , Lyon , Marseille , Nantes , Paris , Toulouse / ;
* Cities
Alias(CITIES,CITIES1);

Table DIST[CITIES,CITIES1]
              Bordeaux Lille  Lyon  Marseille Nantes Paris Toulouse
  Bordeaux       0       786  549    657        331  559    250
  Lille         786       0   668    979        593  224    905
  Lyon          549      668   0     316        607  472    467
  Marseille     657      979  316     0         890  769    400
  Nantes        331      593  607    890         0   386    559
  Paris         559      224  472    769        386   0     681
  Toulouse      250      905  467    400        559  681     0      ;
* Distance between cities

Binary Variable fly[CITIES,CITIES1]
* 1 if flight from i to j

Variable TotalDist ;

Equation Eq_1(CITIES) ,
         Eq_2(CITIES) ,
         Def_obj      ;

* Visit every city once
Eq_1(CITIES)..
  Sum{CITIES1$(ord(CITIES) ne ord(CITIES1)), fly[CITIES1,CITIES]} =e= 1 ;
Eq_2(CITIES)..
  Sum{CITIES1$(ord(CITIES) ne ord(CITIES1)), fly[CITIES,CITIES1]} =e= 1 ;

* Objective: total distance
Def_obj..
 TotalDist =e= Sum{(CITIES,CITIES1)$(ord(CITIES) ne ord(CITIES1)),
                                   DIST[CITIES,CITIES1]*fly[CITIES,CITIES1] } ;


* Solve the problem
Model F_5_Tour_planning_2 / All  / ;

Solve F_5_Tour_planning_2 using MIP minimazing TotalDist ;

Display TotalDist.l ;
