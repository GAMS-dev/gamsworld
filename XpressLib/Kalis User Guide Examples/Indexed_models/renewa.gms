*******************************************************
*   CP Example Problems
*   ===================
*
*   file renewa.mos
*   ```````````````
*   Provision/requirement of a renewable resource.
*
*   (c) 2007 Artelys S.A. and Dash Associates
*
********************************************************

* model "Renewable resource"
*  uses "kalis", "mmsystem"


* declarations

Set JOBS  / P1 * P5 / ;
Set FIRST(JOBS) / P1 , P2 / ;
Set FINAL(JOBS) / P3 , P4 , P5 / ;

* Limits on job durations
Parameter MIND[JOBS]   / P1  3 , P2  4 , P3  0 , P4  4 , P5 10 / ;
Parameter MAXD[JOBS]   / P1 15 , P2 26 , P3 15 , P4 25 , P5 20 / ;

* Resource use/production
Parameter RESAMT[JOBS] / P1 10 , P2 12 , P3  5 , P4  8 , P5  7 / ;

* Time horizon
Scalar HORIZON / 35 / ;
Set TIME / t1*t35 /;

* Profit from production
Parameter PROFIT[JOBS]  / P1 0   , P2 0   , P3 5.5 , P4  7 , P5 6.2 / ;

* Cost of production
Parameter COST[JOBS]    / P1 1.8 , P2 1.6 , P3 0   , P4  0 , P5 0   / ;

* Available resource quantity
Scalar CAP / 0 / ;


        Variable Starttime[JOBS]       ,
                 Finishtime[JOBS]      ,
                 Position_1[JOBS,TIME] ,
                 Position_2[JOBS,TIME] ;

Variable         totalProfit         ;

Equation
         Eq_1(JOBS)        ,
         Eq_2(JOBS)        ,
         Eq_3_a(JOBS,TIME) ,
         Eq_3_b(JOBS,TIME) ,
         Eq_4(JOBS,TIME)   ,
         Def_Obj           ;

Eq_1(JOBS)..
      Finishtime[JOBS] - Starttime[JOBS] =l= MAXD[JOBS] ;

Eq_2(JOBS)..
      Finishtime[JOBS] - Starttime[JOBS] =g= MIND[JOBS] ;

Eq_3_a(JOBS,TIME)$FIRST(JOBS)..
SQRT{ (ord(TIME) - Starttime[JOBS])*
      (ord(TIME) - Starttime[JOBS])  }*2*

      Position_1[JOBS,TIME] =e= { SQRT{ (ord(TIME) - Starttime[JOBS])*
                                        (ord(TIME) - Starttime[JOBS])  } +
                                        (ord(TIME) - Starttime[JOBS])     };

Eq_3_b(JOBS,TIME)$FINAL(JOBS)..
SQRT{ (ord(TIME) - Starttime[JOBS])*
      (ord(TIME) - Starttime[JOBS])  }*2*

      Position_2[JOBS,TIME] =e= { SQRT{ (ord(TIME) - Starttime[JOBS])*
                                        (ord(TIME) - Starttime[JOBS])  } +
                                        (ord(TIME) - Starttime[JOBS])     };

Eq_4(JOBS,TIME)..
      Position_1[JOBS,TIME] * RESAMT[JOBS] -
      Position_2[JOBS,TIME] * RESAMT[JOBS]   =g= 0 ;

* Objective function: total profit
Def_Obj..
    totalProfit =e=
         Sum{JOBS$FINAL(JOBS),PROFIT[JOBS]*(Finishtime[JOBS]-Starttime[JOBS])}-
         Sum{JOBS            , COST[JOBS] *(Finishtime[JOBS]-Starttime[JOBS])} ;


Starttime.lo[JOBS]  = 1 ;
Finishtime.lo[JOBS] = 1 ;
Finishtime.up[JOBS] = HORIZON ;

Position_1.lo[JOBS,TIME] = 0 ;
Position_2.lo[JOBS,TIME] = 0 ;


* Solve the problem
Model Renewable_resource / all / ;
Solve Renewable_resource using NLP maximazing totalProfit ;
Display totalProfit.l ;

Parameter Duration[JOBS] ;
Loop{JOBS, Duration[JOBS] = Finishtime.l[JOBS]-Starttime.l[JOBS] } ;
