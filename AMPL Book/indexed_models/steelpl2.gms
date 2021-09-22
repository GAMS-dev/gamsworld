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
* cost/ton produced
Parameter invcost[PRODUCT]      /  bands      2.5 , coils   3 / ;
* carrying cost/ton of inventory
Parameter avail_min[T]     / t1   35 , t2   35 , t3   30 ,  t4   35      / ;
* unpenalized hours available
Parameter avail_max[T]     / t1   42 , t2   42 , t3   40 ,  t4   42      / ;
* total hours avail
Parameter time_penalty[T]  / t1 3100 , t2 3000 , t3 3700 ,  t4 3100      / ;

Table revenue[PRODUCT,T]
                 t1    t2    t3    t4
       bands     25    26    27    27
       coils     30    35    37    39 ;
* revenue/ton sold

Table commit[PRODUCT,T]
                 t1    t2    t3    t4
       bands   3500  5900  3900  6400
       coils   2500  2400  3400  4100 ;
* minimum tons sold in week

Table market[PRODUCT,T]
                 t1    t2    t3    t4
       bands   6000  6000  4000  6500
       coils   4000  2500  3500  4200 ;
* limit on tons sold in week

Positive Variable Make[PRODUCT,T],
* tons produced
                  Inv[PRODUCT,T] ,
* tons inventoried
                  Use[T]         ;
* hours used

Variable Sell[PRODUCT,T],
* tons sold
         total_profit ;

Equation Eq_time(T) , Eq_balance_1(PRODUCT,T) ,
                      Eq_balance_2(PRODUCT,T) , Def_obj ;

Eq_time(T)..
   sum{PRODUCT, (1/rate[PRODUCT]) * Make[PRODUCT,T] } =e= Use[T];
* Total of hours used by all products
* may not exceed hours available, in each week

Eq_balance_1(PRODUCT,T)$(ord(T) gt 1)..
   Make[PRODUCT,T] + Inv[PRODUCT,T-1] =e= Sell[PRODUCT,T] + Inv[PRODUCT,T] ;
* Tons produced and taken from inventory
* must equal tons sold and put into inventory

Eq_balance_2(PRODUCT,T)$(ord(T) eq 1)..
   Make[PRODUCT,T] + inv0[PRODUCT]    =e= Sell[PRODUCT,T] + Inv[PRODUCT,T] ;
* Initial inventory must equal given value


Def_obj.. total_profit =e=
   sum{(PRODUCT,T), ( revenue[PRODUCT,T]* Sell[PRODUCT,T] -
                      prodcost[PRODUCT] * Make[PRODUCT,T] -
                       invcost[PRODUCT] * Inv[PRODUCT,T]
      )             } -

   sum{T,(
           time_penalty[t]    *
  {sqrt{(Use[t]-avail_min[t])*
        (Use[t]-avail_min[t]) } + (Use[t]-avail_min[t])}/2
          -
          (time_penalty[t]    *
  {-sqrt{(Use[t]-avail_min[t])*
         (Use[t]-avail_min[t]) } + (Use[t]-avail_min[t])}/(-2)
           -
                    100000    *
  {sqrt{(Use[t]-avail_max[t])*
        (Use[t]-avail_max[t]) } + (Use[t]-avail_max[t])}/2

           )

      )  }  ;



* Objective: total revenue less costs in all weeks

Sell.lo[PRODUCT,T] = commit[PRODUCT,T] ;
Sell.up[PRODUCT,T] = market[PRODUCT,T] ;

Model steelpl2 /all/;

Solve steelpl2 using nlp maximazing total_profit ;

Display total_profit.l ;