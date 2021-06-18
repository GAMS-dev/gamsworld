*ORIG    -> origins
*DEST    -> destinations
*PRODUCT -> products

Set ORIG / GARY , CLEV , PITT /;
Set DEST / FRA , DET , LAN , WIN , STL , FRE , LAF /;
Set PRODUCT / bands , coils , plate /;


TABLE supply(PRODUCT, ORIG )
                    GARY   CLEV   PITT
            bands    400    700    800
            coils    800   1600   1800
            plate    200    300    300 ;


TABLE  demand(PRODUCT,DEST)
             FRA    DET    LAN    WIN    STL    FRE    LAF
    bands    300    300    100     75    650    225    250
    coils    500    750    400    250    950    850    500
    plate    100    100      0     50    200    100    250 ;

TABLE fcost(ORIG,DEST)
              FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY  3000 1200 1200 1200 2500 3500 2500
        CLEV  2000 1000 1500 1200 2500 3000 2200
        PITT  2000 1200 1500 1500 2500 3500 2200 ;

TABLE A1(ORIG,DEST)
               FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY    30   10    8   10   11   71    6
        CLEV    22    7   10    7   21   82   13
        PITT    19   11   12   10   25   83   15

TABLE A2(ORIG,DEST)
               FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY    39   14   11   14   16   82    8
        CLEV    27    9   12    9   26   95   17
        PITT    24   14   17   13   28   99   20

TABLE A3(ORIG,DEST)
               FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY    41   15   12   16   17   86    8
        CLEV    29    9   13    9   28   99   18
        PITT    26   14   17   13   31  104   20 ;

PARAMETER vcost(ORIG,DEST,PRODUCT);

         vcost(ORIG,DEST,'bands') = A1(ORIG,DEST);
         vcost(ORIG,DEST,'coils') = A2(ORIG,DEST);
         vcost(ORIG,DEST,'plate') = A3(ORIG,DEST);

Parameter limit(ORIG,DEST); limit(ORIG,DEST) = 625 ;

*supply {ORIG,PROD} -> amounts available at origins
*demand {DEST,PROD} -> amounts required at destinations
*vcost {ORIG,DEST,PROD} -> variable shipment cost on routes
*fcost {ORIG,DEST} -> fixed cost on routes


Parameter minload ; minload = 375 ;

Binary Variable Use(ORIG,DEST);
Positive Variable Trans(ORIG,DEST,PRODUCT) ;
* Trans-> actual units to be shipped
Variable  total_cost ;

Equation Eq_Supply(ORIG,PRODUCT),
         Eq_Demand(DEST,PRODUCT),
         Eq_Multi(ORIG,DEST),
         Eq_Min_Ship(ORIG,DEST),
         Eq_check(PRODUCT),
         Def_obj ;


Eq_Supply(ORIG,PRODUCT)..
 sum{DEST, Trans[ORIG,DEST,PRODUCT]} =e= supply[PRODUCT,ORIG];

Eq_Demand(DEST,PRODUCT)..
  sum{ORIG,Trans[ORIG,DEST,PRODUCT]}  =e= demand[PRODUCT,DEST];

Eq_Multi(ORIG,DEST)..
   sum{PRODUCT, Trans[ORIG,DEST,PRODUCT]} =l= limit[ORIG,DEST] * Use[ORIG,DEST];

Eq_Min_Ship(ORIG,DEST)..
   sum{PRODUCT,Trans[ORIG,DEST,PRODUCT]} =g= minload * Use[ORIG,DEST];

Eq_check(PRODUCT)..
       sum{ORIG,supply[PRODUCT,ORIG]}   =e= sum(DEST, demand[PRODUCT,DEST]) ;

Def_obj..
    total_cost =e=  sum{(ORIG,DEST,PRODUCT),  vcost[ORIG,DEST,PRODUCT] *
                                              Trans[ORIG,DEST,PRODUCT] } +
                sum{(ORIG,DEST),fcost[ORIG,DEST] * Use[ORIG,DEST]};


Model multmip2 /all/;

Solve multmip2 using mip minimizing total_cost ;

Display total_cost.l ;
