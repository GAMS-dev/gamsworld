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

Set ORIG / GARY , CLEV , PITT / ;
* origins

set DEST / FRA , DET , LAN ,  WIN , STL , FRE , LAF / ;
* destinations



Parameter  supply[ORIG] / GARY 1400 , CLEV 2600 , PITT 2900 / ;

Parameter demand[DEST] /   FRA    900 ,  DET   1200 ,  LAN    600 ,   WIN  400 ,
                           STL   1700 ,  FRE   1100 ,  LAF   1000 / ;

Set LINKS(ORIG,DEST) /  GARY.DET , GARY.LAN , GARY.STL ,  GARY.LAF ,
                        CLEV.FRA , CLEV.DET , CLEV.LAN ,  CLEV.WIN ,
                                   CLEV.STL , CLEV.LAF ,
                        PITT.FRA , PITT.WIN , PITT.STL ,  PITT.FRE /;

Parameter cost[ORIG,DEST] ;  cost[ORIG,DEST] = 0 ;

cost['GARY','DET']=14;cost['GARY','LAN']=11;cost['GARY','STL']=16;cost['GARY','LAF']= 8;
cost['CLEV','FRA']=27;cost['CLEV','DET']= 9;cost['CLEV','LAN']=12;cost['CLEV','WIN']= 9;
                      cost['CLEV','STL']=26;cost['CLEV','LAF']=17;
cost['PITT','FRA']=24;cost['PITT','WIN']=13;cost['PITT','STL']=28;cost['PITT','FRE']=99;

Positive Variable Trans[ORIG,DEST];
* actual units to be shipped
Variable total_cost ;
Equation Eq_Supply(ORIG) , Eq_Demand(DEST) , Eq_check , Def_obj ;


Eq_Supply(ORIG)..   sum{DEST$Links(ORIG,DEST),Trans[ORIG,DEST]} =e= supply[ORIG];

Eq_Demand(DEST)..   sum{ORIG$Links(ORIG,DEST),Trans[ORIG,DEST]} =e= demand[DEST];

Eq_check..          sum{ORIG,supply[ORIG]}     =e= sum{DEST, demand[DEST]};

Def_obj..           total_cost  =e=
                     sum{(ORIG,DEST)$Links(ORIG,DEST),cost[ORIG,DEST]*Trans[ORIG,DEST]};

Model transp3 /all/;

Solve transp3 using lp minimizing total_cost ;

Display total_cost.l
