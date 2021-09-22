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



Set NUTR /A , B1 , B2 , C / ;
Set FOOD /BEEF , CHK , FISH , HAM , MCH , MTL , SPG , TUR / ;

Parameter    cost(food) /  BEEF   3.19 ,  CHK    2.59 ,  FISH   2.29 ,
                           HAM    2.89 ,  MCH    1.89 ,  MTL    1.99 ,
                           SPG    1.99 ,  TUR    2.49 / ;

Parameter     f_min(food) /  BEEF       0 ,  CHK        0 ,  FISH       0 ,
                             HAM        0 ,  MCH        0 ,  MTL        0 ,
                             SPG        0 ,  TUR        0 /;


Parameter     f_max(food) /  BEEF     100 ,  CHK      100 ,  FISH     100 ,
                             HAM      100 ,  MCH      100 ,  MTL      100 ,
                             SPG      100 ,  TUR      100 /;


Parameter  n_min(NUTR) /A   700 , C   700 , B1   700 , B2   700 / ;


Parameter  n_max(NUTR) /A 10000 , C 10000 , B1 10000 , B2 10000 / ;

Table amt(FOOD,NUTR)
           A    C   B1   B2
   BEEF   60   20   10   15
   CHK     8    0   20   20
   FISH    8   10   15   10
   HAM    40   40   35   10
   MCH    15   35   15   15
   MTL    70   30   15   15
   SPG    25   50   25   15
   TUR    60   20   15   10 ;


Variable Buy(FOOD) ,  total_cost

Equation sub_to_diet_1(NUTR) , sub_to_diet_2(NUTR) , Def_obj ;

sub_to_diet_1(NUTR)..
   n_min[NUTR] =l= sum{FOOD, amt[FOOD,NUTR] * Buy[FOOD] } ;
sub_to_diet_2(NUTR)..
                   sum{FOOD, amt[FOOD,NUTR] * Buy[FOOD] } =l= n_max[NUTR];

Def_obj.. total_cost =e=  sum(FOOD, cost[FOOD] * Buy[FOOD]);

Buy.lo(FOOD) = f_min[FOOD] ;
Buy.up(FOOD) = f_max[FOOD] ;

Model diet /all/;

Solve diet using lp minimizing total_cost ;

Display total_cost.l ;
