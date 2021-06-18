Set ORIG / GARY , CLEV , PITT / ;
* origins

set DEST / FRA , DET , LAN ,  WIN , STL , FRE , LAF / ;
* destinations

Parameter  supply[ORIG] / GARY 1400 , CLEV 2600 , PITT 2900 / ;

Parameter demand[DEST] /   FRA    900 ,  DET   1200 ,  LAN    600 ,   WIN  400 ,
                           STL   1700 ,  FRE   1100 ,  LAF   1000 / ;

Set LINKS(ORIG,DEST) ;  LINKS(ORIG,DEST) = YES ;


TABLE cost[ORIG,DEST]
         FRA  DET  LAN  WIN  STL  FRE  LAF
   GARY   39   14   11   14   16   82    8
   CLEV   27    9   12    9   26   95   17
   PITT   24   14   17   13   28   99   20 ;

Positive Variable Trans[ORIG,DEST];
* actual units to be shipped
Variable total_cost ;
Equation Eq_Supply(ORIG) , Eq_Demand(DEST) , Eq_check , Def_obj ;


Eq_Supply(ORIG)..   sum{DEST$Links(ORIG,DEST),Trans[ORIG,DEST]} =e= supply[ORIG];

Eq_Demand(DEST)..   sum{ORIG$Links(ORIG,DEST),Trans[ORIG,DEST]} =e= demand[DEST];

Eq_check..          sum{ORIG,supply[ORIG]}     =e= sum{DEST, demand[DEST]};

Def_obj..           total_cost  =e=
                     sum{(ORIG,DEST)$Links(ORIG,DEST),cost[ORIG,DEST]*Trans[ORIG,DEST]};

Model transp2 /all/;

Solve transp2 using nlp minimazing total_cost ;

Display total_cost.l