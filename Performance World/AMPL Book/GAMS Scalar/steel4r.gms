set PRODUCT / bands , coils , plate / ;
* products
set STAGE / reheat , roll / ;
* stages

table rate[PRODUCT,STAGE]
             reheat  roll
  bands        200    200
  coils        200    140
  plate        200    160 ;
* tons per hour in each stage

Parameter profit[PRODUCT] /  bands   25 ,  coils   30 ,  plate   29 / ;
* profit ->  profit per ton
Parameter commit[PRODUCT] /  bands 1000 ,  coils  500 ,  plate  750 / ;
* commit ->  lower limit on tons sold in week
Parameter market[PRODUCT] /  bands 6000  ,  coils 4000  ,  plate 3500  / ;
* market ->  upper limit on tons sold in week

Parameter avail[STAGE]          / reheat 35 ,  roll 40 / ;
Parameter avail_mean[STAGE]     / reheat 35 ,  roll 40 / ;
Parameter avail_variance[STAGE] / reheat  5 ,  roll  2 / ;

*   param avail {s in STAGE} =
*   max(Normal(avail_mean[s], avail_variance[s]), 0);
*                             # hours available/week in each stage

* Make[PRODUCT] -> tons produced
Variable Make[PRODUCT] , total_profit ;

Equation Eq_Time(STAGE) , Def_obj ;

Eq_Time(STAGE)..
     sum{PRODUCT, (1/rate[PRODUCT,STAGE]) * Make[PRODUCT] } =l= avail[STAGE];
* In each stage: total of hours used by all
* products may not exceed hours available

Def_obj.. total_profit =e= sum{PRODUCT, profit[PRODUCT] * Make[PRODUCT] } ;
* Objective: total profits from all products

Make.lo[PRODUCT] = commit[PRODUCT] ;
Make.up[PRODUCT] = market[PRODUCT] ;

Model steel4r /all/;

Solve steel4r using nlp maximazing total_profit ;

Display total_profit.l ;


