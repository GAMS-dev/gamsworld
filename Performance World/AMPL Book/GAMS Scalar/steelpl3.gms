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
                  Sell[PRODUCT,T]
* tons sold
                  Use[T]         ;
* hours used

Variable
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
              sum{(PRODUCT,T),( revenue[PRODUCT,T]* Sell[PRODUCT,T] -
                                prodcost[PRODUCT] * Make[PRODUCT,T] -
                                invcost[PRODUCT] * Inv[PRODUCT,T]
                 )            } -
              sum{T,time_penalty[T]*  {sqrt{(Use[T]-avail_min[T])*
                                            (Use[T]-avail_min[T])} +
                                            (Use[T]-avail_min[T])}/2    } -
             sum{(PRODUCT,T),

{sqrt{( -100000.0 * Sell[PRODUCT,T] + 100000.0 * commit[PRODUCT,T] )*
      ( -100000.0 * Sell[PRODUCT,T] + 100000.0 * commit[PRODUCT,T] )}+
      ( -100000.0 * Sell[PRODUCT,T] + 100000.0 * commit[PRODUCT,T] ) } /2


                 }  ;
* Objective: total revenue less costs in all weeks

Sell.up[PRODUCT,T] = market[PRODUCT,T] ;
Use.up[T] = avail_max[T] ;

Model steelpl3 /all/;

Solve steelpl3 using nlp maximazing total_profit ;

Display total_profit.l ;