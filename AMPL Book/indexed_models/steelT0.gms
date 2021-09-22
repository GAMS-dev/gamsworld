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

Set T /t1*t4 / ;
* number of weeks
Set PRODUCT / bands , coils /;
* products

Parameter rate[PRODUCT]   /  bands    200   , coils 140 / ;
* tons per hour produced
Parameter avail[T]        / t1   35 , t2   35 , t3   30 ,  t4   35  / ;
* unpenalized hours available

Table profit[PRODUCT,T]
                 t1    t2    t3    t4
       bands     30    35    10    3
       coils     20    25    12    2 ;
* minimum tons sold in week

Table market[PRODUCT,T]
                 t1    t2    t3    t4
       bands    600   600   400   650
       coils    400   250   350   420 ;
* limit on tons sold in week

Positive Variable Make[PRODUCT,T]     ;

Variable  total_profit ;

Equation Eq_time(T) ,  Def_obj ;

Eq_time(T)..
   sum{PRODUCT, (1/rate[PRODUCT]) * Make[PRODUCT,T] } =l= avail[T];
* Total of hours used by all products
* may not exceed hours available, in each week

Def_obj.. total_profit =e=   sum{(PRODUCT,T),  profit[PRODUCT,T] * Make[PRODUCT,T]  }  ;
* total profits from all products in all weeks

Make.up[PRODUCT,T] = market[PRODUCT,T] ;

Model steelT0 /all/;

Solve steelT0 using nlp maximazing total_profit ;

Display total_profit.l ;