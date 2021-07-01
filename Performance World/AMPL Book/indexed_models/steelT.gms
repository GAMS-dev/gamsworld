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


Parameter rate[PRODUCT]         /  bands    200   , coils 140 / ;
* tons per hour produced
Parameter inv0[PRODUCT]         /  bands     10   , coils   0 / ;
* initial inventory
Parameter prodcost[PRODUCT]     /  bands     10   , coils  11 / ;
* cost per ton produced
Parameter invcost[PRODUCT]      /  bands      2.5 , coils   3 / ;
* carrying cost/ton of inventory
Parameter avail[T]     / t1   40 , t2   40 , t3   32 ,  t4   40      / ;
* hours available in week

Table revenue[PRODUCT,T]
                 t1    t2    t3    t4
       bands     25    26    27    27
       coils     30    35    37    39 ;
* revenue/ton sold
Table market[PRODUCT,T]
                 t1    t2    t3    t4
       bands   6000  6000  4000  6500
       coils   4000  2500  3500  4200 ;
* limit on tons sold in week

Positive Variable Make[PRODUCT,T],
* tons produced
                  Inv[PRODUCT,T] ,
* tons inventoried
                  Sell[PRODUCT,T];
* tons sold

Variable  total_profit ;


Equation Eq_time(T) , Eq_balance(PRODUCT,T) , Def_obj ;

Eq_time(T)..
   sum{PRODUCT, (1/rate[PRODUCT]) * Make[PRODUCT,T] } =l= avail[T];

* Total of hours used by all products
* may not exceed hours available, in each week



Eq_balance(PRODUCT,T)..
   Make[PRODUCT,T] + Inv[PRODUCT,T-1]$(ord(T) gt 1) +
                     inv0[PRODUCT]$(ord(T) eq 1)      =e= Sell[PRODUCT,T] +
                                                          Inv[PRODUCT,T];
* Initial inventory must equal given value
* Tons produced and taken from inventory
* must equal tons sold and put into inventory

Def_obj..
total_profit =e= sum{(PRODUCT,T),  (revenue[PRODUCT,T] * Sell[PRODUCT,T] -
                                    prodcost[PRODUCT]  * Make[PRODUCT,T] -
                                    invcost[PRODUCT]   * Inv[PRODUCT,T]    ) };
* Total revenue less costs in all weeks

Sell.up[PRODUCT,T] = market[PRODUCT,T] ;

Model steelT /all/;

Solve steelT using nlp maximazing total_profit ;

Display total_profit.l ;









