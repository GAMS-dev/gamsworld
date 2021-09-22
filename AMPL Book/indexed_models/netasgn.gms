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

Set PEOPLE / GARY , CLEV , PITT / ;
* PEOPLE

set PROJECTS / FRA , DET , LAN ,  WIN , STL , FRE , LAF / ;
* PROJECTS



Parameter  supply[PEOPLE] / GARY 1400 , CLEV 2600 , PITT 2900 / ;

Parameter demand[PROJECTS] /   FRA    900 ,  DET   1200 ,  LAN    600 ,   WIN  400 ,
                           STL   1700 ,  FRE   1100 ,  LAF   1000 / ;

Set ABILITIES(PEOPLE,PROJECTS) /  GARY.DET , GARY.LAN , GARY.STL ,  GARY.LAF ,
                            CLEV.FRA , CLEV.DET , CLEV.LAN ,  CLEV.WIN ,
                                       CLEV.STL , CLEV.LAF ,
                            PITT.FRA , PITT.WIN , PITT.STL ,  PITT.FRE /;

Parameter cost[PEOPLE,PROJECTS] ;  cost[PEOPLE,PROJECTS] = 0 ;

cost['GARY','DET']=14;cost['GARY','LAN']=11;cost['GARY','STL']=16;cost['GARY','LAF']= 8;
cost['CLEV','FRA']=27;cost['CLEV','DET']= 9;cost['CLEV','LAN']=12;cost['CLEV','WIN']= 9;
                      cost['CLEV','STL']=26;cost['CLEV','LAF']=17;
cost['PITT','FRA']=24;cost['PITT','WIN']=13;cost['PITT','STL']=28;cost['PITT','FRE']=99;

Parameter limit[PEOPLE,PROJECTS] ;  limit[PEOPLE,PROJECTS] =  5000 ;

Positive Variable Assign[PEOPLE,PROJECTS];
* actual units to be shipped
Variable total_cost ;
Equation Eq_Supply(PEOPLE) , Eq_Demand(PROJECTS) , Eq_check , Def_obj ;


Eq_Supply(PEOPLE)..   sum{PROJECTS$ABILITIES(PEOPLE,PROJECTS),Assign[PEOPLE,PROJECTS]} =e= supply[PEOPLE];

Eq_Demand(PROJECTS)..   sum{PEOPLE$ABILITIES(PEOPLE,PROJECTS),Assign[PEOPLE,PROJECTS]} =e= demand[PROJECTS];

Eq_check..          sum{PEOPLE,supply[PEOPLE]}     =e= sum{PROJECTS, demand[PROJECTS]};

Def_obj..
 total_cost  =e=
                sum{(PEOPLE,PROJECTS)$ABILITIES(PEOPLE,PROJECTS),
                                                  cost[PEOPLE,PROJECTS]*
                                                Assign[PEOPLE,PROJECTS]};

Assign.up[PEOPLE,PROJECTS] = limit[PEOPLE,PROJECTS] ;

Model netasgn /all/;

Solve netasgn using nlp minimazing total_cost ;

Display total_cost.l