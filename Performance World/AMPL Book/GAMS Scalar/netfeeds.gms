Set CITIES /PITT ,  NE , SE ,  BOS , EWR , BWI / ;
Alias (CITIES,CITIES_1);

Set LINKS(CITIES,CITIES_1) ;
             LINKS('PITT','NE') = yes ;  LINKS('PITT','SE') = yes ;
             LINKS('NE','BOS')  = yes ;  LINKS('NE','EWR')  = yes ;
             LINKS('NE','BWI')  = yes ;  LINKS('SE','EWR')  = yes ;
             LINKS('SE','BWI')  = yes ;

set PRODS / bands , plate /;

Table     supply[PRODS,CITIES]
                    PITT    NE   SE   BOS  EWR  BWI
            bands   2000    0     0    0    0    0
            plate   3000    0     0    0    0    0    ;
*supply -> amounts available at cities

Table demand[PRODS,CITIES]
                    PITT    NE     SE  BOS EWR BWI
            bands    400    700    300 200 200 200
            plate    500    500    400 600 600 400    ;
*demand -> amounts required at cities


Parameter   cost[PRODS,CITIES,CITIES_1] ; cost[PRODS,CITIES,CITIES_1] = 0 ;

             cost['bands','PITT','NE']= 2 ;
             cost['bands','PITT','SE']= 4 ;
             cost['bands','NE','BOS' ]= 4 ;
             cost['bands','NE','EWR' ]= 2 ;
             cost['bands','NE','BWI' ]= 5 ;
             cost['bands','SE','EWR' ]= 3 ;
             cost['bands','SE','BWI' ]= 1 ;
             cost['plate','PITT','NE']= 3 ;
             cost['plate','PITT','SE']= 1 ;
             cost['plate','NE','BOS' ]= 4 ;
             cost['plate','NE','EWR' ]= 1 ;
             cost['plate','NE','BWI' ]= 2 ;
             cost['plate','SE','EWR' ]= 5 ;
             cost['plate','SE','BWI' ]= 2 ;
* shipment costs/100 packages


Parameter capacity[PRODS,CITIES,CITIES_1] ; capacity[PRODS,CITIES,CITIES_1] = 0 ;

             capacity['bands','PITT','NE'] =4700 ;
             capacity['bands','PITT','SE'] =4700 ;
             capacity['bands','NE','BOS']  =4700 ;
             capacity['bands','NE','EWR']  =4700 ;
             capacity['bands','NE','BWI']  =4700 ;
             capacity['bands','SE','EWR']  =4700 ;
             capacity['bands','SE','BWI']  =4700 ;
             capacity['plate','PITT','NE'] =4800 ;
             capacity['plate','PITT','SE'] =4800 ;
             capacity['plate','NE','BOS']  =4800 ;
             capacity['plate','NE','EWR']  =4800 ;
             capacity['plate','NE','BWI']  =4800 ;
             capacity['plate','SE','EWR']  =4800 ;
             capacity['plate','SE','BWI']  =4800 ;
* max packages shipped of product

Set feeds / f1 , f2 / ;

Parameter   Limit  ;
Parameter   Yield  ;


Table limit[feeds,CITIES]
                  PITT    NE    SE   BOS  EWR  BWI
            f1     20     20    10   20   30    20
            f2     30     20    10   20   30    30    ;


Table yield[PRODS,feeds]
                      f1    f2
            bands     30    10
            plate     50    20  ;

Positive Variable Feed(feeds,CITIES) , Ship[PRODS,CITIES,CITIES_1] ;
* Ship -> packages to be shipped

         Variable  Total_Cost ;

Equation  Eq_check(PRODS) ,Eq_Balance(PRODS,CITIES) ,  Def_obj ;

Eq_check(PRODS).. sum{CITIES,supply[PRODS,CITIES]} =e=
                  sum{CITIES, demand[PRODS,CITIES]} ;

Eq_Balance(PRODS,CITIES)..

supply[PRODS,CITIES]
+sum{CITIES_1$LINKS(CITIES_1,CITIES),Ship[PRODS,CITIES_1,CITIES]}
=e=
demand[PRODS,CITIES]
+sum{CITIES_1$LINKS(CITIES,CITIES_1),Ship[PRODS,CITIES,CITIES_1]}
-sum{feeds, yield[PRODS,feeds] * Feed[feeds,CITIES]};

Def_obj.. Total_Cost =e=  sum{(PRODS,CITIES,CITIES_1)$LINKS(CITIES,CITIES_1),
                                 cost[PRODS,CITIES,CITIES_1] *
                                 Ship[PRODS,CITIES,CITIES_1]};

Ship.lo[PRODS,CITIES,CITIES_1] = 0 ;
Ship.up[PRODS,CITIES,CITIES_1] = capacity[PRODS,CITIES,CITIES_1] ;

Feed.up[feeds,CITIES] = limit[feeds,CITIES] ;

Model netfeeds /all/;

Solve netfeeds using nlp minimazing total_cost ;

Display total_cost.l ;

