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

Set T /t1*t4/ ;
* number of weeks
Set PRODUCT / bands , coils / ;
* products

set AREA / east , north , west , export / ;
* market areas for each product
set AREA_1(AREA) / east , north  / ;
set AREA_2(AREA) / east , west , export / ;

Parameter avail[T] / t1 40 , t2 40 , t3 32 , t4 40 / ;
* hours available in week
Parameter rate[PRODUCT] / bands  200 , coils  140 / ;
* tons per hour produced
Parameter inv0[PRODUCT] / bands   10 , coils    0 / ;
* initial inventory
Parameter prodcost[PRODUCT] / bands 10   , coils 11 / ;
* cost per ton produced
Parameter invcost[PRODUCT]  / bands  2.5 , coils  3 / ;
* carrying cost/ton of inventory
Table a1[AREA,T]
                t1     t2     t3     t4
      east     25.0   26.0   27.0   27.0
      north    26.5   27.5   28.0   28.5

Table a2[AREA,T]
                t1    t2    t3    t4
      east      30    35    37    39
      west      29    32    33    35
      export    25    25    25    28 ;

Parameter revenue[Product,AREA,T];
* revenue per ton sold
          revenue['bands',AREA,T] = a1[AREA,T] ;
          revenue['coils',AREA,T] = a2[AREA,T] ;

Table b1[AREA,T]
                  t1    t2    t3    t4
       east     2000  2000  1500  2000
       north    4000  4000  2500  4500 ;

Table b2[AREA,T]
                  t1    t2    t3    t4
       east     1000   800  1000  1100
       west     2000  1200  2000  2300
       export   1000   500   500   800 ;

Parameter market[Product,AREA,T];
* limit on tons sold in week
          market['bands',AREA,T] = b1[AREA,T] ;
          market['coils',AREA,T] = b2[AREA,T] ;


Positive Variable Make[PRODUCT,T],
* tons produced
                  Inv[PRODUCT,T] ,
* tons inventoried
                  Sell[PRODUCT,AREA,T]         ;
* tons sold

Variable  total_profit ;

Equation Eq_time(T) , Eq_balance(PRODUCT,T) , Def_obj ;

Eq_time(T)..
   sum{PRODUCT, (1/rate[PRODUCT]) * Make[PRODUCT,T] } =l= avail[T];
* Total of hours used by all products
* may not exceed hours available, in each week

Eq_balance(PRODUCT,T)..
   Make[PRODUCT,T] +
   Inv[PRODUCT,T-1]$(ord(T) gt 1)+
   inv0[PRODUCT]$   (ord(T) eq 1)   =e= Sum{AREA,Sell[PRODUCT,AREA,T] } +
                                                  Inv[PRODUCT,T]             ;
* Initial inventory must equal given value
* Tons produced and taken from inventory
* must equal tons sold and put into inventory


* Tons produced and taken from inventory
* must equal tons sold and put into inventory

Def_obj..
 total_profit =e=
     sum{(PRODUCT,T),(sum{AREA,(revenue[PRODUCT,AREA,T]*
                                   Sell[PRODUCT,AREA,T])}   -
                      prodcost[PRODUCT]*Make[PRODUCT,T]           -
                       invcost[PRODUCT]*Inv[PRODUCT,T]             ) };


Sell.up[PRODUCT,AREA,T] = market[PRODUCT,AREA,T] ;
Make.lo[PRODUCT,T] = 0 ;

Model steelT3 /all/;

Solve steelT3 using nlp maximazing total_profit ;

Display total_profit.l ;

