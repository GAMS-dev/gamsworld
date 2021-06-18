Set CITIES /PITT ,  NE , SE ,  BOS , EWR , BWI / ;
Alias (CITIES,CITIES_1);

Set LINKS(CITIES,CITIES_1) ;
             LINKS('PITT','NE') = yes ;  LINKS('PITT','SE') = yes ;
             LINKS('NE','BOS')  = yes ;  LINKS('NE','EWR')  = yes ;
             LINKS('NE','BWI')  = yes ;  LINKS('SE','EWR')  = yes ;
             LINKS('SE','BWI')  = yes ;

set PRODS / bands , plate /;

Table     supply[CITIES,PRODS]
                             bands   plate
                    PITT     2000    3000
                      NE       0       0
                      SE       0       0
                     BOS       0       0
                     EWR       0       0
                     BWI       0       0  ;
*supply -> amounts available at cities

Table demand[CITIES,PRODS]
                             bands   plate
                    PITT      400     500
                      NE      700     500
                      SE      300     400
                     BOS      200     600
                     EWR      200     600
                     BWI      200     400 ;
*demand -> amounts required at cities


Parameter   cost[CITIES,CITIES_1,PRODS] ; cost[CITIES,CITIES_1,PRODS] = 0 ;

             cost['PITT','NE','bands']= 2 ;
             cost['PITT','SE','bands']= 4 ;
             cost['NE','BOS','bands' ]= 4 ;
             cost['NE','EWR','bands' ]= 2 ;
             cost['NE','BWI','bands' ]= 5 ;
             cost['SE','EWR','bands' ]= 3 ;
             cost['SE','BWI','bands' ]= 1 ;
             cost['PITT','NE','plate']= 3 ;
             cost['PITT','SE','plate']= 1 ;
             cost['NE','BOS','plate' ]= 4 ;
             cost['NE','EWR','plate' ]= 1 ;
             cost['NE','BWI','plate' ]= 2 ;
             cost['SE','EWR','plate' ]= 5 ;
             cost['SE','BWI','plate' ]= 2 ;
* shipment costs/100 packages


Parameter capacity[CITIES,CITIES_1,PRODS] ; capacity[CITIES,CITIES_1,PRODS] = 0 ;

             capacity['PITT','NE','bands'] =4700 ;
             capacity['PITT','SE','bands'] =4700 ;
             capacity['NE','BOS','bands']  =4700 ;
             capacity['NE','EWR','bands']  =4700 ;
             capacity['NE','BWI','bands']  =4700 ;
             capacity['SE','EWR','bands']  =4700 ;
             capacity['SE','BWI','bands']  =4700 ;
             capacity['PITT','NE','plate'] =4800 ;
             capacity['PITT','SE','plate'] =4800 ;
             capacity['NE','BOS','plate']  =4800 ;
             capacity['NE','EWR','plate']  =4800 ;
             capacity['NE','BWI','plate']  =4800 ;
             capacity['SE','EWR','plate']  =4800 ;
             capacity['SE','BWI','plate']  =4800 ;
* max packages shipped of product

Parameter   cap_joint[CITIES,CITIES_1] ;  cap_joint[CITIES,CITIES_1] = 0 ;

             cap_joint['PITT','NE'] = 2910 ;
             cap_joint['PITT','SE'] = 2910 ;
             cap_joint['NE','BOS']  = 2910 ;
             cap_joint['NE','EWR']  = 2910 ;
             cap_joint['NE','BWI']  = 2910 ;
             cap_joint['SE','EWR']  = 2910 ;
             cap_joint['SE','BWI']  = 2910 ;
* max total packages shipped/link

Positive Variable Ship[CITIES,CITIES_1,PRODS] ;
* Ship -> packages to be shipped

         Variable Total_Cost ;

Equation  Eq_check(PRODS) ,Eq_Balance(PRODS,CITIES) , Eq_Multi(CITIES,CITIES_1) , Def_obj ;

Eq_check(PRODS).. sum{CITIES,supply[CITIES,PRODS]} =e=
                  sum{CITIES, demand[CITIES,PRODS]} ;

Eq_Balance(PRODS,CITIES)..

supply[CITIES,PRODS]+sum{CITIES_1$LINKS(CITIES_1,CITIES),Ship[CITIES_1,CITIES,PRODS]} =e=
demand[CITIES,PRODS]+sum{CITIES_1$LINKS(CITIES,CITIES_1),Ship[CITIES,CITIES_1,PRODS]} ;




Eq_Multi(CITIES,CITIES_1)$(LINKS(CITIES,CITIES_1))..
Sum{PRODS,Ship[CITIES,CITIES_1,PRODS]} =l= cap_joint[CITIES,CITIES_1];


Def_obj.. Total_Cost =e=  sum{(PRODS,CITIES,CITIES_1)$LINKS(CITIES,CITIES_1),
                                 cost[CITIES,CITIES_1,PRODS] *
                                 Ship[CITIES,CITIES_1,PRODS]};

Ship.lo[CITIES,CITIES_1,PRODS] = 0 ;
Ship.up[CITIES,CITIES_1,PRODS] = capacity[CITIES,CITIES_1,PRODS] ;

Model netmcol /all/;

Solve netmcol using nlp minimazing total_cost ;

Display total_cost.l ;




