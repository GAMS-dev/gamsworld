*******************************************************
*   CP Example Problems
*   ===================
*
*   file renewb2.mos
*   ````````````````
*   Production/consumption of a non-renewable resource.
*   - Formulation with producer_consumer constraint -
*
*   (c) 2007 Artelys S.A. and Dash Associates
*
********************************************************!)

* model "Non-renewable resource"
*  uses "kalis"

Set JOBS / P1 , P2 , EndP1 , EndP2 , P3 , P4 , P5 / ;
Set FIRST(JOBS) / P1 , P2 / ;
Set FINAL(JOBS) / P3 , P4 , P5 / ;

* Limits on job durations
Parameter MIND[JOBS] / P1  3 , P2  4 , EndP1  0 , EndP2 0 ,
                       P3  0 , P4  4 , P5    10               / ;
Parameter MAXD[JOBS] / P1 15 , P2 26 , EndP1  0 , EndP2 0 ,
                       P3 15 , P4 25 , P5    20              / ;

* Resource use/production
Parameter RESAMT[JOBS] ;
              RESAMT['EndP1'] = 10 ;
              RESAMT['EndP2'] = 12 ;
              RESAMT['P3']    =  5 ;
              RESAMT['P4']    =  8 ;
              RESAMT['P5']    =  7 ;
* Time horizon
Scalar HORIZON / 35 / ;
Set TIME / t1*t35 /;
Alias(TIME,TIME1) ;

* Profit from production
Parameter PROFIT[JOBS] ;
              PROFIT['P3']    = 5.5 ;
              PROFIT['P4']    = 7.0 ;
              PROFIT['P5']    = 6.2 ;
* Cost of production
Parameter COST[JOBS] ;
              COST['P1']      = 1.8 ;
              COST['P2']      = 1.6 ;

* Available resource quantity
Scalar CAP / 0 / ;


Variable Starttime[JOBS]       ,
         Finishtime[JOBS]      ,
         Position_1[JOBS,TIME] ,
         Position_2[JOBS,TIME] ,
         totalProfit           ;

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
      Sum{TIME1$((ord(TIME1) le ord(TIME))and(ord(TIME1) gt 1) ),
                ((Position_1[JOBS,TIME1]-Position_1[JOBS,TIME1-1] )* RESAMT[JOBS] -
                 (Position_2[JOBS,TIME1]-Position_2[JOBS,TIME1-1] )* RESAMT[JOBS]   ) } =g= 0 ;

* Objective function: total profit
Def_Obj..
    totalProfit =e=
         Sum{JOBS$FINAL(JOBS),PROFIT[JOBS]*(Finishtime[JOBS]-Starttime[JOBS])}-
         Sum{JOBS            , COST[JOBS] *(Finishtime[JOBS]-Starttime[JOBS])} ;


 Starttime.lo[JOBS] = 1 ;
* Solve the problem
Model Non_Renewable_resource / all / ;
Solve Non_Renewable_resource using NLP maximazing totalProfit ;
Display totalProfit.l ;

Parameter Duration[JOBS] ;
Loop{JOBS, Duration[JOBS] = Finishtime.l[JOBS]-Starttime.l[JOBS] } ;


Parameter Results[JOBS,TIME] ;
Loop{(JOBS,TIME),
 Results[JOBS,TIME] =
      Sum{TIME1$((ord(TIME1) le ord(TIME))and(ord(TIME1) gt 1) ),
                ((Position_1.l[JOBS,TIME1]-Position_1.l[JOBS,TIME1-1] )* RESAMT[JOBS] -
                 (Position_2.l[JOBS,TIME1]-Position_2.l[JOBS,TIME1-1] )* RESAMT[JOBS]   ) } ;
     } ;
