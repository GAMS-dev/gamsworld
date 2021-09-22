$ontext
GAMS - General Algebraic Modeling System AMPL Book Model Library

Copyright (c) 2019 GAMS Software GmbH <support@gams.com>
Copyright (c) 2019 GAMS Development Corp. <support@gams.com>
Copyright (c) 2019 Andre Savitsky <andresavit@yandex.ru>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
$offtext

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

Parameter cost[CITIES,CITIES_1] /  PITT.NE    2.5  ,  PITT.SE    3.5  ,
                                   NE.BOS     1.7  ,  NE.EWR     0.7  ,
                                   NE.BWI     1.3  ,  SE.EWR     1.3  ,
                                   SE.BWI     0.8  ,  SE.ATL     0.2  ,
                                   SE.MCO     2.1  /  ;
*cost     -> shipment costs/1000 packages

Parameter capacity[CITIES,CITIES_1] /  PITT.NE 250 ,  PITT.SE 250 ,
                                       NE.BOS  100 ,  NE.EWR  100 ,
                                       NE.BWI  100 ,  SE.EWR  100 ,
                                       SE.BWI  100 ,  SE.ATL  100 ,
                                       SE.MCO  100 /;
*capacity -> max packages that can be shipped

Positive Variable Ship[CITIES,CITIES_1] ;
* Ship -> packages to be shipped

         Variable Total_Cost ;

Equation  Eq_check ,Eq_Balance(CITIES) , Def_obj ;

Eq_check.. sum{CITIES,supply[CITIES]} =e= sum{CITIES, demand[CITIES]} ;

Eq_Balance(CITIES)..     supply[CITIES] +
                        sum{CITIES_1$LINKS(CITIES_1,CITIES), Ship[CITIES_1,CITIES]} =e=
                         demand[CITIES] +
                        sum{CITIES_1$LINKS(CITIES,CITIES_1), Ship[CITIES,CITIES_1]} ;

Def_obj.. Total_Cost =e=  sum{(CITIES,CITIES_1)$LINKS(CITIES,CITIES_1),
                                 cost[CITIES,CITIES_1] * Ship[CITIES,CITIES_1]};

Ship.up[CITIES,CITIES_1] = capacity[CITIES,CITIES_1]

Model net1node /all/;

Solve net1node using nlp minimazing total_cost ;

Display total_cost.l ;