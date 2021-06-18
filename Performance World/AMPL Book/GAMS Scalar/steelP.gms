Set ORIG / GARY , CLEV , PITT /;
* origins (steel mills)
Set DEST / FRA , DET , LAN , WIN , STL , FRE , LAF / ;
* destinations (factories)
Set PRODUCT / bands , coils , plate / ;
* products

Parameter avail[ORIG] / GARY 20 , CLEV 15 ,  PITT 20  / ;
* hours available at origins

Table demand[PRODUCT,DEST]
             FRA    DET    LAN    WIN    STL    FRE    LAF
    bands    300    300    100     75    650    225    250
    coils    500    750    400    250    950    850    500
    plate    100    100      0     50    200    100    250 ;
* tons required at destinations

Table rate[PRODUCT,ORIG]
                   GARY   CLEV   PITT
          bands    200    190    230
          coils    140    130    160
          plate    160    160    170 ;
* tons per hour at origins

Table make_cost[PRODUCT,ORIG]
                  GARY   CLEV   PITT
          bands    180    190    190
          coils    170    170    180
          plate    180    185    185 ;
* manufacturing cost/ton

Table  a1[ORIG,DEST]
                FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY    30   10    8   10   11   71    6
        CLEV    22    7   10    7   21   82   13
        PITT    19   11   12   10   25   83   15

Table  a2[ORIG,DEST]
                FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY    39   14   11   14   16   82    8
        CLEV    27    9   12    9   26   95   17
        PITT    24   14   17   13   28   99   20

Table  a3[ORIG,DEST]
                FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY    41   15   12   16   17   86    8
        CLEV    29    9   13    9   28   99   18
        PITT    26   14   17   13   31  104   20 ;

Parameter trans_cost[ORIG,DEST,PRODUCT] ;
* shipping cost/ton

  trans_cost[ORIG,DEST,'bands'] = a1[ORIG,DEST] ;
  trans_cost[ORIG,DEST,'coils'] = a2[ORIG,DEST] ;
  trans_cost[ORIG,DEST,'plate'] = a3[ORIG,DEST] ;
Positive Variable Make[PRODUCT,ORIG] ,
* tons produced at origins
                  Trans[ORIG,DEST,PRODUCT];
* tons shipped

Variable total_cost ;

Equation Eq_Time(ORIG),
         Eq_Supply(ORIG,PRODUCT),
         Eq_Demand(DEST,PRODUCT),
         Def_obj ;

Eq_Time(ORIG)..
   sum{PRODUCT,(1/rate[PRODUCT,ORIG])
                * Make[PRODUCT,ORIG]} =l= avail[ORIG];

Eq_Supply(ORIG,PRODUCT)..
   sum{DEST,Trans[ORIG,DEST,PRODUCT]}    =e= Make[PRODUCT,ORIG];

Eq_Demand(DEST,PRODUCT)..
   sum{ORIG,Trans[ORIG,DEST,PRODUCT]} =e= demand[PRODUCT,DEST]  ;

Def_obj..
total_cost =e=
   sum{(ORIG,PRODUCT),      make_cost[PRODUCT,ORIG]       *
                            Make[PRODUCT,ORIG]             }  +
   sum{(ORIG,DEST,PRODUCT), trans_cost[ORIG,DEST,PRODUCT] *
                            Trans[ORIG,DEST,PRODUCT]       };

Model steelP /all/;

Solve steelP using nlp minimazing total_cost ;

Display total_cost.l ;


