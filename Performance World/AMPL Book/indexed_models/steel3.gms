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
Parameter avail / 40 /;
* hours available in week
Parameter rate[PRODUCT]   / bands    200 ,  coils    140 ,  plate    160 / ;
* produced tons per hour
Parameter profit[PRODUCT] / bands     25 ,  coils     30 ,  plate     29 / ;
* profit per ton
Parameter commit[PRODUCT] / bands   1000 ,  coils    500 ,  plate    750 / ;
* lower limit on tons sold in week
Parameter market[PRODUCT] / bands   6000 ,  coils   4000 ,  plate   3500 / ;
* upper limit on tons sold in week

Variable Make[PRODUCT] , total_profit ;
* Make -> tons produced

Equation Eq_Time , Def_obj ;

Eq_Time..  sum{PRODUCT, (1/rate[PRODUCT]) * Make[PRODUCT] } =l= avail ;
Def_obj..  total_profit =e= sum{PRODUCT, profit[PRODUCT] * Make[PRODUCT] } ;

* Objective: total profits from all products

* Constraint: total of hours used by all
* products may not exceed hours available

Make.lo[PRODUCT] = commit[PRODUCT] ;
Make.up[PRODUCT] = market[PRODUCT] ;
* tons produced

Model steel3 /all/;

Solve steel3 using lp maximizing total_profit ;

Display total_profit.l ;


