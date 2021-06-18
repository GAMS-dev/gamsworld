Set ORIG / GARY , CLEV , PITT / ;
* origins
set DEST / FRA , DET , LAN , WIN ,
           STL , FRE , LAF   / ;
* destinations

Parameter supply[ORIG] / GARY   1400 ,  CLEV   2600 ,  PITT   2900 / ;
* amounts available at origins
Parameter demand[DEST] / FRA     900 , DET    1200 , LAN     600 ,
                         WIN     400 , STL    1700 , FRE    1100 ,
                         LAF    1000 /;
* amounts required at destinations

Table rate[ORIG,DEST]
              FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY   39   14   11   14   16   82    8
        CLEV   27    9   12    9   26   95   17
        PITT   24   14   17   13   28   99   20 ;
*rate  -> base shipment costs per unit

Table limit[ORIG,DEST]
               FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY   500 1000 1000 1000  800  500 1000
        CLEV   500  800  800  800  500  500 1000
        PITT   800  600  600  600  500  500  900 ;
*limit -> limit on units shipped

Positive Variable Trans[ORIG,DEST] ;
* units to ship
Variable total_cost

Equation Eq_check , Eq_Supply(ORIG) , Eq_Demand(DEST) , Def_obj ;

Eq_check.. sum{ORIG,supply[ORIG]} =e= sum{DEST,demand[DEST]};

Eq_Supply(ORIG)..   sum{DEST,Trans[ORIG,DEST]} =e= supply[ORIG];

Eq_Demand(DEST)..   sum{ORIG,Trans[ORIG,DEST]} =e= demand[DEST];

Def_obj..
total_cost =e=  sum{(ORIG,DEST),(rate[ORIG,DEST]*Trans[ORIG,DEST]
                                  /(1 - Trans[ORIG,DEST]/limit[ORIG,DEST])
                   )             };

Trans.l[ORIG,DEST] = 0 ;
Trans.up[ORIG,DEST] = limit[ORIG,DEST]-0.001 ;

Model nltrans /all/;

Solve nltrans using nlp minimazing total_cost ;

Display total_cost.l ;