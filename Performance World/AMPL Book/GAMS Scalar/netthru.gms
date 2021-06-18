Set CITIES /PITT ,  NE , SE ,  BOS , EWR , BWI , ATL , MCO / ;

Alias (CITIES,CITIES_1);

Set LINKS(CITIES,CITIES_1) ;
             LINKS('PITT','NE') = yes ;  LINKS('PITT','SE') = yes ;
             LINKS('NE','BOS')  = yes ;  LINKS('NE','EWR')  = yes ;
             LINKS('NE','BWI')  = yes ;  LINKS('SE','EWR')  = yes ;
             LINKS('SE','BWI')  = yes ;  LINKS('SE','ATL')  = yes ;
             LINKS('SE','MCO')  = yes ;

Parameter supply[CITIES] ;  supply[CITIES] = 0 ;  supply['PITT'] =  450 ;
*supply -> amounts available at cities
Parameter demand[CITIES] ;  demand[CITIES] = 0 ;
  demand['BOS'] =  90 ;  demand['EWR'] = 120 ;  demand['BWI'] = 120 ;
  demand['ATL']  = 70 ;  demand['MCO'] =  50 ;
*demand -> amounts required at cities


Parameter city_cap[CITIES] / PITT 550 ,  NE 440  ,   SE 440 ,
                              BOS 490 ,  EWR 420 ,  BWI 420 ,
                              ATL 470 ,  MCO 450 /;

Parameter cost[CITIES,CITIES_1] /  PITT.NE    2.5  ,  PITT.SE    3.5  ,
                                   NE.BOS     1.7  ,  NE.EWR     0.7  ,
                                   NE.BWI     1.3  ,  SE.EWR     1.3  ,
                                   SE.BWI     0.8  ,  SE.ATL     0.2  ,
                                   SE.MCO     2.1  /  ;
*cost     -> shipment costs/1000 packages

Parameter link_cap[CITIES,CITIES_1] /  PITT.NE 250 ,  PITT.SE 250 ,
                                       NE.BOS  100 ,  NE.EWR  100 ,
                                       NE.BWI  100 ,  SE.EWR  100 ,
                                       SE.BWI  100 ,  SE.ATL  100 ,
                                       SE.MCO  100 /;
*capacity -> max packages that can be shipped



Positive Variable Ship[CITIES,CITIES_1] ;
* Ship -> packages to be shipped

         Variable Total_Cost ;

Equation Eq_Balance(CITIES) , Eq_check , Def_obj ;

Eq_Balance(CITIES)..     supply[CITIES] +
                        sum{CITIES_1$LINKS(CITIES_1,CITIES), Ship[CITIES_1,CITIES]} =e=
                         demand[CITIES] +
                        sum{CITIES_1$LINKS(CITIES,CITIES_1), Ship[CITIES,CITIES_1]} ;

Eq_check.. sum{CITIES,supply[CITIES]} =e= sum{CITIES, demand[CITIES]} ;

Def_obj.. Total_Cost =e=  sum{(CITIES,CITIES_1)$LINKS(CITIES,CITIES_1),
                                 cost[CITIES,CITIES_1] * Ship[CITIES,CITIES_1]};

Ship.up[CITIES,CITIES_1] = link_cap[CITIES,CITIES_1]

Model netthru /all/;

Solve netthru using nlp minimazing total_cost ;

Display total_cost.l ;


