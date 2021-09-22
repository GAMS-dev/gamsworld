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

Set i /A , B1 , B2 ,  NA , C  , CAL /;


set MINREQ(i) /A , B1 , B2 , C  , CAL /;
* nutrients with minimum requirements
set MAXREQ(i) /A , NA , CAL /;
* nutrients with maximum requirements

set NUTR(i) ;
        NUTR(i) = Yes ;
* nutrients

set FOOD /BEEF , CHK , FISH , HAM , MCH , MTL , SPG , TUR /;
* foods

Parameter n_min /   A      700 ,   C      700 ,
                   B1       0 ,   B2       0 ,
                   NA       0 ,   CAL  16000 /;

Parameter n_max /   A      20000 ,   C           0 ,
                   B1          0 ,   B2          0 ,
                   NA      50000 ,   CAL     24000 /;

Parameter  cost /  BEEF   3.19 ,  CHK    2.59 ,
                   FISH   2.29 ,  HAM    2.89 ,
                   MCH    1.89 ,  MTL    1.99 ,
                   SPG    1.99 ,  TUR    2.49 /;

Parameter  f_min /  BEEF       2 ,  CHK        2 ,
                    FISH       2 ,  HAM        2 ,
                    MCH        2 ,  MTL        2 ,
                    SPG        2 ,  TUR        2 /;

Parameter  f_max /  BEEF        10 ,  CHK         10 ,
                    FISH        10 ,  HAM         10 ,
                    MCH         10 ,  MTL         10 ,
                    SPG         10 ,  TUR         10  /;

Table amt(food,i)
                  A    C   B1   B2    NA   CAL
          BEEF   60   20   10   15   938   295
          CHK     8    0   20   20  2180   770
          FISH    8   10   15   10   945   440
          HAM    40   40   35   10   278   430
          MCH    15   35   15   15  1182   315
          MTL    70   30   15   15   896   400
          SPG    25   50   25   15  1329   370
          TUR    60   20   15   10  1397   450 ;

Variable Buy(FOOD) ,  total_cost

Equation diet_min(i) , diet_max(i) , Def_obj ;

diet_min(i)$MINREQ(i)..
   n_min[i] =l= sum{FOOD, amt[FOOD,i] * Buy[FOOD] } ;
diet_max(i)$MAXREQ(i)..
                sum{FOOD, amt[FOOD,i] * Buy[FOOD] } =l= n_max[i];

Def_obj.. total_cost =e=  sum(FOOD, cost[FOOD] * Buy[FOOD]);

Buy.lo(FOOD) = f_min[FOOD] ;
Buy.up(FOOD) = f_max[FOOD] ;
Buy.l(FOOD)  = f_min[FOOD] ;

Model dietu1 /all/;

Solve dietu1 using nlp minimazing total_cost ;

Display total_cost.l ;

