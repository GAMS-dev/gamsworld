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

Set PRODUCT / bands , coils , plate /;
* products
Set STAGE / reheat , roll / ;
* stages
Parameter avail(STAGE) / reheat 35 ,  roll   40  /;
* hours available/week in each stage

Table  rate[PRODUCT,STAGE]
              reheat  roll
  bands        200    200
  coils        200    140
  plate        200    160 ;
* tons per hour in each stage

Parameter profit[PRODUCT] /  bands     25 , coils     30 , plate   29 / ;
* profit per ton
Parameter commit[PRODUCT] /  bands   1000 , coils    500 , plate  750 / ;
* lower limit on tons sold in week
Parameter market[PRODUCT] /  bands   6000 , coils   4000 , plate 3500 / ;
* upper limit on tons sold in week

Variable Make[PRODUCT] , total_profit ;
* Make -> tons produced

Equation Eq_Time(STAGE) , Def_obj ;

Eq_Time(STAGE)..
       sum{PRODUCT,(1/rate[PRODUCT,STAGE])*Make[PRODUCT]} =l= avail[STAGE] ;
* In each stage: total of hours used by all
* products may not exceed hours available

Def_obj..  total_profit =e= sum{PRODUCT, profit[PRODUCT] * Make[PRODUCT] } ;
* Objective: total profits from all products

* Constraint: total of hours used by all
* products may not exceed hours available

Make.lo[PRODUCT] = commit[PRODUCT] ;
Make.up[PRODUCT] = market[PRODUCT] ;
* tons produced

Model steel4 /all/;

Solve steel4 using lp maximizing total_profit ;

Display total_profit.l ;
