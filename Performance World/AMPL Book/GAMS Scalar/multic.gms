Set ORIG    /GARY, CLEV, PITT / ;
Set DEST    /FRA, DET, LAN, WIN, STL, FRE, LAF/ ;
Set PRODUCT /bands, coils, plate/ ;

* ORIG -> origins
* DEST -> destinations
* PROD -> products
Set LINKS(PRODUCT,ORIG,DEST);
    LINKS('bands','GARY','FRA') = Yes ;
    LINKS('bands','CLEV','FRA') = Yes ;
    LINKS('bands','GARY','WIN') = Yes ;
    LINKS('bands','CLEV','WIN') = Yes ;

    LINKS('coils','GARY','DET') = Yes ;
    LINKS('coils','GARY','STL') = Yes ;
    LINKS('coils','GARY','FRE') = Yes ;

    LINKS('plate','PITT','LAN') = Yes ;
    LINKS('plate','PITT','STL') = Yes ;
    LINKS('plate','PITT','FRE') = Yes ;
    LINKS('plate','PITT','LAF') = Yes ;

    LINKS('plate','CLEV','LAN') = Yes ;
    LINKS('plate','CLEV','STL') = Yes ;
    LINKS('plate','CLEV','FRE') = Yes ;
    LINKS('plate','CLEV','LAF') = Yes ;

set orig0(PRODUCT,ORIG)  / bands.GARY , bands.CLEV ,
                           coils.GARY , coils.CLEV ,
                           plate.PITT , plate.CLEV / ;

set dest0(PRODUCT,DEST) / bands.FRA , bands.WIN ,
                          coils.DET , coils.STL , coils.FRE ,
                          plate.LAN , plate.STL , plate.FRE , plate.LAF / ;

Parameter supply[PRODUCT,ORIG] ; supply[PRODUCT,ORIG] = 0;
                   supply['bands','GARY'] =  60 ;
                   supply['bands','CLEV'] =  70 ;
                   supply['coils','GARY'] =  80 ;
                   supply['coils','CLEV'] =  30 ;
                   supply['plate','PITT'] =  30 ;
                   supply['plate','CLEV'] =  90 ;
* available at origins

Parameter demand[PRODUCT,DEST] ; demand[PRODUCT,DEST] = 0 ;
                   demand['bands','FRA'] = 40 ;
                   demand['bands','WIN'] = 90 ;
                   demand['coils','DET'] = 30 ;
                   demand['coils','STL'] = 40 ;
                   demand['coils','FRE'] = 40 ;
                   demand['plate','LAN'] = 30 ;
                   demand['plate','STL'] = 30 ;
                   demand['plate','FRE'] = 30 ;
                   demand['plate','LAF'] = 30 ;
* required at destinations

Table  limit[ORIG,DEST]
              FRA  DET  LAN  WIN  STL  FRE  LAF
        GARY  3000 1200 1200 1200 2500 3500 2500
        CLEV  2000 1000 1500 1200 2500 3000 2200
        PITT  2000 1200 1500 1500 2500 3500 2200 ;


Parameter cost[PRODUCT,ORIG,DEST] ; cost[PRODUCT,ORIG,DEST] = 0;
 cost['bands','GARY','FRA'] =  30 ;
 cost['bands','GARY','WIN'] =  10 ;
 cost['bands','CLEV','FRA'] =  22 ;
 cost['bands','CLEV','WIN'] =   7 ;

 cost['coils','GARY','DET'] =  39 ;
 cost['coils','GARY','STL'] =  14 ;
 cost['coils','GARY','FRE'] =  11 ;

 cost['coils','CLEV','DET'] =  27 ;
 cost['coils','CLEV','STL'] =   9 ;
 cost['coils','CLEV','FRE'] =  12 ;

 cost['plate','CLEV','LAN'] =  29 ;
 cost['plate','CLEV','STL'] =   9 ;
 cost['plate','CLEV','FRE'] =  13 ;
 cost['plate','CLEV','LAF'] =   9 ;

 cost['plate','PITT','LAN'] =  26 ;
 cost['plate','PITT','STL'] =  14 ;
 cost['plate','PITT','FRE'] =  17 ;
 cost['plate','PITT','LAF'] =  13 ;
* shipment costs per unit

Positive Variable Trans(PRODUCT,ORIG,DEST) ;
* units to be shipped
         Variable total_cost ;

Equation Eq_check(PRODUCT),
         Eq_Supply(PRODUCT,ORIG),
         Eq_Demand(PRODUCT,DEST),
         Eq_Multi(ORIG,DEST),
         Def_obj ;

Eq_check(PRODUCT)..
   sum{ORIG$orig0[PRODUCT,ORIG], supply[PRODUCT,ORIG] } =e=
   sum{DEST$dest0[PRODUCT,DEST], demand[PRODUCT,DEST]} ;

Eq_Supply(PRODUCT,ORIG)$orig0(PRODUCT,ORIG)..
   sum{DEST$dest0(PRODUCT,DEST), Trans[PRODUCT,ORIG,DEST]} =e=
                                                           supply[PRODUCT,ORIG];

Eq_Demand(PRODUCT,DEST)$dest0(PRODUCT,DEST)..
   sum{ORIG$orig0(PRODUCT,ORIG), Trans[PRODUCT,ORIG,DEST]} =e=
                                                           demand[PRODUCT,DEST];

Eq_Multi(ORIG,DEST)..
   sum{PRODUCT$LINKS(PRODUCT,ORIG,DEST), Trans[PRODUCT,ORIG,DEST]} =l=
                                                               limit[ORIG,DEST];

Def_obj..
    total_cost =e=  sum{(PRODUCT,ORIG,DEST),
                         cost[PRODUCT,ORIG,DEST] * Trans[PRODUCT,ORIG,DEST]};

Model multic /all/;

Solve multic using nlp minimazing total_cost ;

Display total_cost.l