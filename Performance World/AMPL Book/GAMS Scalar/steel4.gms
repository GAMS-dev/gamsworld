Set PRODUCT / bands , coils , plate /;
* products
Set STAGE / reheat , roll / ;
* stages
Parameter avail(STAGE) / reheat 35 ,  roll   40  /;
* hours available/week in each stage

Table  rate[PRODUCT,STAGE]
              reheat  roll
  bands        200    200
  coils        200    140
  plate        200    160 ;
* tons per hour in each stage

Parameter profit[PRODUCT] /  bands     25 , coils     30 , plate   29 / ;
* profit per ton
Parameter commit[PRODUCT] /  bands   1000 , coils    500 , plate  750 / ;
* lower limit on tons sold in week
Parameter market[PRODUCT] /  bands   6000 , coils   4000 , plate 3500 / ;
* upper limit on tons sold in week

Variable Make[PRODUCT] , total_profit ;
* Make -> tons produced

Equation Eq_Time(STAGE) , Def_obj ;

Eq_Time(STAGE)..
       sum{PRODUCT,(1/rate[PRODUCT,STAGE])*Make[PRODUCT]} =l= avail[STAGE] ;
* In each stage: total of hours used by all
* products may not exceed hours available

Def_obj..  total_profit =e= sum{PRODUCT, profit[PRODUCT] * Make[PRODUCT] } ;
* Objective: total profits from all products

* Constraint: total of hours used by all
* products may not exceed hours available

Make.lo[PRODUCT] = commit[PRODUCT] ;
Make.up[PRODUCT] = market[PRODUCT] ;
* tons produced

Model steel4 /all/;

Solve steel4 using lp maximizing total_profit ;

Display total_profit.l ;
