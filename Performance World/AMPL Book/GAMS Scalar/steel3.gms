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


