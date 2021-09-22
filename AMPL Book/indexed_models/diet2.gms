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

set NUTR;
set FOOD;



Set NUTR /A , B1 , B2 , C , NA , CAL / ;
Set FOOD /BEEF , CHK , FISH , HAM , MCH  , MTL , SPG , TUR / ;

Parameter    cost(food) /   BEEF   3.19 ,  CHK    2.59 ,  FISH   2.29 ,
                            HAM    2.89 ,  MCH    1.89 ,  MTL    1.99 ,
                            SPG    1.99 ,  TUR    2.49 / ;


Parameter     f_min(food) /  BEEF      2 ,  CHK       2 ,  FISH      2 ,
                             HAM       2 ,  MCH       2 ,  MTL       2 ,
                             SPG       2 ,  TUR       2 / ;


Parameter     f_max(food) / BEEF  10 ,  CHK   10 ,  FISH  10 ,  HAM   10 ,
                            MCH   10 ,  MTL   10 ,  SPG   10 ,  TUR   10 / ;


Parameter  n_min(NUTR) /   A      700 ,    C      700 ,   B1     700 ,
                           B2     700 ,    NA       0 ,   CAL  16000 / ;


Parameter  n_max(NUTR) /   A    20000 ,    C    20000 ,   B1   20000 ,
                           B2   20000 ,    NA   48200 ,   CAL  24000 / ;

*Na = 48200;

Table amt(FOOD,NUTR)
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

Equation
 sub_to_diet_1(NUTR) ,
 sub_to_diet_2(NUTR) ,
 Def_obj ;

sub_to_diet_1(NUTR)..
   n_min[NUTR] =l= sum{FOOD, amt[FOOD,NUTR] * Buy[FOOD] } ;

sub_to_diet_2(NUTR)..
                   sum{FOOD, amt[FOOD,NUTR] * Buy[FOOD] } =l= n_max[NUTR];

Def_obj.. total_cost =e=  sum(FOOD, cost[FOOD] * Buy[FOOD]);




Buy.lo(FOOD) = f_min[FOOD] ;
Buy.up(FOOD) = f_max[FOOD] ;

Model diet2 /all/;

Solve diet2 using lp minimizing total_cost ;

Display total_cost.l ;

Parameter
A(NUTR);
A[NUTR] =                sum{FOOD, amt[FOOD,NUTR] * Buy.l[FOOD] } -n_min[NUTR];
Parameter
B(NUTR);
B[NUTR] =  n_max[NUTR] - sum{FOOD, amt[FOOD,NUTR] * Buy.l[FOOD] };
Parameter
C(NUTR);
C[NUTR] =                sum{FOOD, amt[FOOD,NUTR] * Buy.l[FOOD] };
