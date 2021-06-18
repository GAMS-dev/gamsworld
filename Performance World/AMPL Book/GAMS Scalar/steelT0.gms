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