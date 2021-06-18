Set PRODUCT / bands , coils /;
* products

Parameter avail / 40 /;
* hours available in week
Parameter rate[PRODUCT]   / bands    200 ,  coils    140 / ;
* tons produced per hour
Parameter profit[PRODUCT] / bands     25 ,  coils     30 / ;
* profit per ton
Parameter market[PRODUCT] / bands   6000 ,  coils   4000 / ;
* limit on tons sold in week

Positive Variable Make[PRODUCT] ;
* tons produced
Variable total_profit ;

Equation Eq_Time , Def_obj ;

Eq_Time.. sum{PRODUCT, (1/rate[PRODUCT]) * Make[PRODUCT] } =l= avail;

* Constraint: total of hours used by all
* products may not exceed hours available

Def_obj.. total_profit =e= sum{PRODUCT, profit[PRODUCT] * Make[PRODUCT] } ;
* Objective: total profits from all products

Make.up[PRODUCT] = market[PRODUCT] ;

Model steel /all/;

Solve steel using lp maximizing total_profit ;

Display total_profit.l ;





