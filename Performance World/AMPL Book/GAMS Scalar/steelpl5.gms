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
Parameter backcost[PRODUCT]      /  bands     5   , coils   6 / ;
* penalty cost per ton of backorders
Parameter avail_min[T]     / t1   35 , t2   35 , t3   30 ,  t4   35      / ;
* unpenalized hours available
Parameter avail_max[T]     / t1   42 , t2   42 , t3   40 ,  t4   42      / ;
* total hours available
Parameter time_penalty[T]  / t1 3100 , t2 3000 , t3 3700 ,  t4 3100      / ;

Table revenue[PRODUCT,T]
                 t1    t2    t3    t4
       bands     25    26    27    27
       coils     30    35    37    39 ;
* revenue/ton sold

Table commit[PRODUCT,T]
                 t1    t2    t3    t4
       bands   3000  3000  3000  3000
       coils   2000  2000  2000  2000 ;
* minimum tons sold in week

Table market[PRODUCT,T]
                 t1    t2    t3    t4
       bands   6000  6000  4000  6500
       coils   4000  2500  3500  4200 ;
* limit on tons sold in week


Positive Variable Make[PRODUCT,T],
* tons produced
                  Use[T]         ;
* hours used

Variable Sell[PRODUCT,T],
* tons sold
         Inv[PRODUCT,T] ,
* tons inventoried
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

* must equal tons sold and put into inventory

Def_obj.. total_profit =e=
   sum{(PRODUCT,T), ( revenue[PRODUCT,T]* Sell[PRODUCT,T] -
                      prodcost[PRODUCT] * Make[PRODUCT,T] -
                           ( backcost[PRODUCT])* {sqrt((Inv[PRODUCT,T])*
                                                       (Inv[PRODUCT,T]))-
                                                       (Inv[PRODUCT,T])
                                                 }/2 -
                           (  invcost[PRODUCT])* {sqrt((Inv[PRODUCT,T])*
                                                       (Inv[PRODUCT,T]))+
                                                       (Inv[PRODUCT,T])
                                                 }/2                        )}
       -sum{T, time_penalty[T]*  {sqrt((Use[T]-avail_min[t])*
                                       (Use[T]-avail_min[t]))+
                                       (Use[T]-avail_min[t])}/2   }

 ;


Sell.lo[PRODUCT,T] = commit[PRODUCT,T] ;
Sell.up[PRODUCT,T] = market[PRODUCT,T] ;
Use.up[T]          = avail_max[T] ;

** AMPL solutions below    GAMS solution
** total_profit = 707991 ; total_profit =  705395
*Use.fx['T1'] = 35 ;      35
*Use.fx['T2'] = 35 ;      35
*Use.fx['T3'] = 30 ;      21.4
*Use.fx['T4'] =  0 ;      0.0

*Inv.fx['bands','T1'] =  0 ;
*Inv.fx['bands','T2'] =  0 ;
*Inv.fx['bands','T3'] = - 4000 ;
*Inv.fx['bands','T4'] = -10500 ;

*Inv.fx['coils','T1'] =  -3293 ;
*Inv.fx['coils','T2'] =  -5093 ;
*Inv.fx['coils','T3'] =  -4393 ;
*Inv.fx['coils','T4'] =  -8593 ;

*Make.fx['bands','T1'] =  5990 ;
*Make.fx['bands','T2'] =  6000 ;
*Make.fx['bands','T3'] =     0 ;
*Make.fx['bands','T4'] =     0 ;

*Make.fx['coils','T1'] =    707 ;
*Make.fx['coils','T2'] =    700 ;
*Make.fx['coils','T3'] =   4200 ;
*Make.fx['coils','T4'] =      0 ;

*Sell.fx['bands','T1'] =  6000 ;
*Sell.fx['bands','T2'] =  6000 ;
*Sell.fx['bands','T3'] =  4000 ;
*Sell.fx['bands','T4'] =  6500 ;

*Sell.fx['coils','T1'] =   4000 ;
*Sell.fx['coils','T2'] =   2500 ;
*Sell.fx['coils','T3'] =   3500 ;
*Sell.fx['coils','T4'] =   4200 ;

Model steelpl5 /all/;

Solve steelpl5 using nlp maximazing total_profit ;

Display total_profit.l ;