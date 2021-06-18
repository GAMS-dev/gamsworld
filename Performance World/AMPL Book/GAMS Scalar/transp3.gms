Set ORIG / GARY , CLEV , PITT / ;
* origins

set DEST / FRA , DET , LAN ,  WIN , STL , FRE , LAF / ;
* destinations



Parameter  supply[ORIG] / GARY 1400 , CLEV 2600 , PITT 2900 / ;

Parameter demand[DEST] /   FRA    900 ,  DET   1200 ,  LAN    600 ,   WIN  400 ,
                           STL   1700 ,  FRE   1100 ,  LAF   1000 / ;

Set LINKS(ORIG,DEST) /  GARY.DET , GARY.LAN , GARY.STL ,  GARY.LAF ,
                        CLEV.FRA , CLEV.DET , CLEV.LAN ,  CLEV.WIN ,
                                   CLEV.STL , CLEV.LAF ,
                        PITT.FRA , PITT.WIN , PITT.STL ,  PITT.FRE /;

Parameter cost[ORIG,DEST] ;  cost[ORIG,DEST] = 0 ;

cost['GARY','DET']=14;cost['GARY','LAN']=11;cost['GARY','STL']=16;cost['GARY','LAF']= 8;
cost['CLEV','FRA']=27;cost['CLEV','DET']= 9;cost['CLEV','LAN']=12;cost['CLEV','WIN']= 9;
                      cost['CLEV','STL']=26;cost['CLEV','LAF']=17;
cost['PITT','FRA']=24;cost['PITT','WIN']=13;cost['PITT','STL']=28;cost['PITT','FRE']=99;

Positive Variable Trans[ORIG,DEST];
* actual units to be shipped
Variable total_cost ;
Equation Eq_Supply(ORIG) , Eq_Demand(DEST) , Eq_check , Def_obj ;


Eq_Supply(ORIG)..   sum{DEST$Links(ORIG,DEST),Trans[ORIG,DEST]} =e= supply[ORIG];

Eq_Demand(DEST)..   sum{ORIG$Links(ORIG,DEST),Trans[ORIG,DEST]} =e= demand[DEST];

Eq_check..          sum{ORIG,supply[ORIG]}     =e= sum{DEST, demand[DEST]};

Def_obj..           total_cost  =e=
                     sum{(ORIG,DEST)$Links(ORIG,DEST),cost[ORIG,DEST]*Trans[ORIG,DEST]};

Model transp3 /all/;

Solve transp3 using lp minimizing total_cost ;

Display total_cost.l
