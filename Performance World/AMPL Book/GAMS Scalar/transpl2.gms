Set ORIG / GARY , CLEV , PITT / ;
* origins
Set DEST / FRA , DET , LAN , WIN , STL , FRE , LAF / ;
* destinations
Set PRODUCT /p1,p2,p3/;
*supply -> amounts available at origins
*demand -> amounts required at destinations

Parameter  supply[ORIG] / GARY   1400 ,  CLEV   2600 ,  PITT   2900 / ;
Parameter  demand[DEST] / FRA     900 ,  DET    1200 ,  LAN     600 ,
                          WIN     400 ,  STL    1700 ,  FRE    1100 ,
                          LAF    1000 / ;
Table npiece[ORIG,DEST]
               FRA DET LAN WIN STL FRE LAF
       GARY      3   3   3   2   3   2   3
       CLEV      3   3   3   3   3   3   3
       PITT      2   2   2   2   1   2   1 ;

Parameter limit[ORIG,DEST,PRODUCT] ;  limit[ORIG,DEST,PRODUCT] = 0 ;
             limit['GARY','FRA','p1']=  500 ;
             limit['GARY','FRA','p2']= 1000 ;
             limit['GARY','DET','p1']=  500 ;
             limit['GARY','DET','p2']= 1000 ;
             limit['GARY','LAN','p1']=  500 ;
             limit['GARY','LAN','p2']= 1000 ;
             limit['GARY','WIN','p1']= 1000 ;
             limit['GARY','STL','p1']=  500 ;
             limit['GARY','STL','p2']= 1000 ;
             limit['GARY','FRE','p1']= 1000 ;
             limit['GARY','LAF','p1']=  500 ;
             limit['GARY','LAF','p2']= 1000 ;

             limit['CLEV','FRA','p1']=  500 ;
             limit['CLEV','FRA','p2']= 1000 ;
             limit['CLEV','DET','p1']=  500 ;
             limit['CLEV','DET','p2']= 1000 ;
             limit['CLEV','LAN','p1']=  500 ;
             limit['CLEV','LAN','p2']= 1000 ;
             limit['CLEV','WIN','p1']=  500 ;
             limit['CLEV','WIN','p2']= 1000 ;
             limit['CLEV','STL','p1']=  500 ;
             limit['CLEV','STL','p2']= 1000 ;
             limit['CLEV','FRE','p1']=  500 ;
             limit['CLEV','FRE','p2']= 1000 ;
             limit['CLEV','LAF','p1']=  500 ;
             limit['CLEV','LAF','p2']= 1000 ;

             limit['PITT','FRA','p1']= 1000 ;
             limit['PITT','DET','p1']= 1000 ;
             limit['PITT','LAN','p1']= 1000 ;
             limit['PITT','WIN','p1']= 1000 ;
             limit['PITT','FRE','p1']= 1000 ;
               limit[ORIG,DEST,PRODUCT] = limit[ORIG,DEST,PRODUCT]+0.01;
Parameter rate[ORIG,DEST,PRODUCT]; rate[ORIG,DEST,PRODUCT] = 0;

rate['GARY','FRA','p1']=39; rate['GARY','FRA','p2']=50; rate['GARY','FRA','p3']=70;
rate['GARY','LAN','p1']=11; rate['GARY','LAN','p2']=12; rate['GARY','LAN','p3']=23;
rate['GARY','STL','p1']=16; rate['GARY','STL','p2']=23; rate['GARY','STL','p3']=40;
rate['GARY','LAF','p1']= 8; rate['GARY','LAF','p2']=16; rate['GARY','LAF','p3']=24;

rate['GARY','DET','p1']=14;
rate['GARY','WIN','p1']=14;
rate['GARY','FRE','p1']=82;

rate['GARY','FRE','p2']=98;
rate['GARY','WIN','p2']=17;
rate['GARY','DET','p2']=17;

rate['GARY','DET','p3']=33;

rate['CLEV','FRA','p1']=27; rate['CLEV','FRA','p2']= 37;rate['CLEV','FRA','p3']= 47;
rate['CLEV','LAN','p1']=12; rate['CLEV','LAN','p2']= 32;rate['CLEV','LAN','p3']= 39;
rate['CLEV','STL','p1']=26; rate['CLEV','STL','p2']= 36;rate['CLEV','STL','p3']= 47;
rate['CLEV','LAF','p1']= 8; rate['CLEV','LAF','p2']= 16;rate['CLEV','LAF','p3']= 24;

rate['CLEV','FRE','p1']=95; rate['CLEV','FRE','p2']=105;rate['CLEV','FRE','p3']=129;
rate['CLEV','WIN','p1']= 9; rate['CLEV','WIN','p2']= 14;rate['CLEV','WIN','p3']= 21;
rate['CLEV','DET','p1']= 9; rate['CLEV','DET','p2']= 19;rate['CLEV','DET','p3']= 24;

rate['PITT','FRA','p1']=24 ; rate['PITT','FRA','p2']= 34 ;
rate['PITT','LAN','p1']=17 ; rate['PITT','LAN','p2']= 27 ;
rate['PITT','STL','p1']=28 ;
rate['PITT','LAF','p1']=20 ;

rate['PITT','DET','p1']=14 ; rate['PITT','DET','p2']= 24 ;
rate['PITT','WIN','p1']=13 ; rate['PITT','WIN','p2']= 23 ;
rate['PITT','FRE','p1']=99 ; rate['PITT','FRE','p2']=140 ;

Variable Trans[ORIG,DEST] , total_cost ;
*Trans -> units to be shipped

Equation Eq_Supply(ORIG) , Eq_Demand(DEST) , Eq_check , Def_obj ;

Eq_Supply(ORIG)..  sum{DEST, Trans[ORIG,DEST]} =e= supply[ORIG];

Eq_Demand(DEST)..  sum{ORIG, Trans[ORIG,DEST]} =e= demand[DEST];

Eq_check.. sum{ORIG, supply[ORIG]} =e= sum{DEST,demand[DEST]};

Def_obj..
total_cost =e=
      sum{(ORIG,DEST)$(npiece[ORIG,DEST]=3),
               -{{sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1'])*
                       (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }-
                       (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }/2
                            /(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']+0.00001)} *
                          Trans[ORIG,DEST]
                         *rate[ORIG,DEST,'p1']
                                +
                {{sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1'])*
                       (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }+
                       (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }/2
                            /(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']+0.00001)} *
                          limit[ORIG,DEST,'p1']
                         *rate[ORIG,DEST,'p1']
                                +
                (-{{ sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p2'])*
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p2']) }-
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p2']) }/2
                /(Trans[ORIG,DEST]-limit[ORIG,DEST,'p2']+0.000001)}) *

                 { sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1'])*
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }+
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }/2
                          *rate[ORIG,DEST,'p2']
                                 +
                ({{ sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p2'])*
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p2']) }+
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p2']) }/2
                /(Trans[ORIG,DEST]-limit[ORIG,DEST,'p2']+0.000001)}) *

                 { sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1'])*
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }+
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }/2*
                         (limit[ORIG,DEST,'p2']-limit[ORIG,DEST,'p2'])
                          *rate[ORIG,DEST,'p2']
                                +
                  { sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p2'])*
                         (Trans[ORIG,DEST]-limit[ORIG,DEST,'p2']) }+
                         (Trans[ORIG,DEST]-limit[ORIG,DEST,'p2']) }/2

                         * rate[ORIG,DEST,'p3']    }

     +sum{(ORIG,DEST)$(npiece[ORIG,DEST]=2),

               -{{sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1'])*
                       (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }-
                       (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }/2
                            /(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']+0.00001)} *

                          Trans[ORIG,DEST]
                         *rate[ORIG,DEST,'p1']
                                +
                {{sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1'])*
                       (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }+
                       (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }/2
                            /(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']+0.00001)} *
                          limit[ORIG,DEST,'p1']
                         *rate[ORIG,DEST,'p1']
                                +
                 { sqrt{(Trans[ORIG,DEST]-limit[ORIG,DEST,'p1'])*
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }+
                        (Trans[ORIG,DEST]-limit[ORIG,DEST,'p1']) }/2
                         *rate[ORIG,DEST,'p2']
                                              }
    +sum{(ORIG,DEST)$(npiece[ORIG,DEST]=1),
                           Trans[ORIG,DEST]
                         * rate[ORIG,DEST,'p1']
                                                }                      ;
Trans.lo[ORIG,DEST] = 0 ;

$ONTEXT;
Trans.fx['CLEV','DET'] =  500 ;
Trans.fx['CLEV','FRA'] =    0 ;
Trans.fx['CLEV','FRE'] =  100 ;
Trans.fx['CLEV','LAF'] = 1000 ;
Trans.fx['CLEV','LAN'] =  500 ;
Trans.fx['CLEV','STL'] =  100 ;
Trans.fx['CLEV','WIN'] =  400 ;

Trans.fx['GARY','DET'] =    0 ;
Trans.fx['GARY','FRA'] =    0 ;
Trans.fx['GARY','FRE'] = 1000 ;
Trans.fx['GARY','LAF'] =    0 ;
Trans.fx['GARY','LAN'] =    0 ;
Trans.fx['GARY','STL'] =  400 ;
Trans.fx['GARY','WIN'] =    0 ;

Trans.fx['PITT','DET'] =  700 ;
Trans.fx['PITT','FRA'] =  900 ;
Trans.fx['PITT','FRE'] =    0 ;
Trans.fx['PITT','LAF'] =    0 ;
Trans.fx['PITT','LAN'] =  100 ;
Trans.fx['PITT','STL'] = 1200 ;
Trans.fx['PITT','WIN'] =    0 ;

$OFFTEXT;


Model transpl2 /all/;

Solve transpl2 using nlp minimazing total_cost ;

Display total_cost.l ;