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









