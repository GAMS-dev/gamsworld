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

set PEOPLE / Hurter , Jones , Reder , Spearman , Zanison / ;
* hours each person is available
set PROJECTS / p1021 , p1049 , p1053 , p1055 , p1083  / ;
* hours each project requires

Parameter supply[PEOPLE]   / Hurter    3 , Jones     2 , Reder     2 ,
                             Spearman  1 , Zanison   1 /   ;

Parameter demand[PROJECTS] / p1021     1 , p1049     2 , p1053     2 ,
                             p1055     2 , p1083     2 /   ;

Table cost[PEOPLE,PROJECTS]
           p1021 p1049 p1053 p1055 p1083
Hurter       5     4     5     3      3
Jones        8     3     5     4      3
Reder        3     4     5     4      4
Spearman     7     5     6     5      5
Zanison      3     6     5     5      5   ;
* cost per hour of work

Table limit[PEOPLE,PROJECTS]
           p1021 p1049 p1053 p1055 p1083
Hurter       5     4     5     3      3
Jones        8     3     5     4      3
Reder        3     4     5     4      4
Spearman     7     5     6     5      5
Zanison      3     6     5     5      5   ;
* maximum contributions to projects

Variable M , max_cost , Assign[PEOPLE,PROJECTS] ;

Equation          Eq_check    ,
          Eq_M_def(PEOPLE)    ,
          Eq_Supply(PEOPLE)   ,
          Eq_Demand(PROJECTS) ,
          Def_obj             ;


Eq_check.. sum{PEOPLE, supply[PEOPLE] } =e= sum{PROJECTS, demand[PROJECTS]  } ;

Eq_M_def(PEOPLE)..
           M =g= sum{PROJECTS, cost[PEOPLE,PROJECTS]*Assign[PEOPLE,PROJECTS]} ;

Eq_Supply(PEOPLE)..
           sum{PROJECTS, Assign[PEOPLE,PROJECTS]} =e= supply[PEOPLE];

Eq_Demand(PROJECTS)..
   sum{PEOPLE, Assign[PEOPLE,PROJECTS]} =e= demand[PROJECTS];

Def_obj.. max_cost =e= M ;

Assign.lo[PEOPLE,PROJECTS] = 0 ;
Assign.up[PEOPLE,PROJECTS] = limit[PEOPLE,PROJECTS] ;

Model minmax /all/;

Solve minmax using nlp minimazing max_cost ;

Display max_cost.l ;





