*****************************************************************
*   CP example problems
*   ===================
*
*   file disjunctive.mos
*   ````````````````````
*   Scheduling disjunctive tasks.
*
*   (c) 2005 Artelys SA and Dash Associates, rev. 2007
*
******************************************************************
* model "Disjunctive scheduling with settle_disjunction"
*  uses "kalis"

$Set NBTASKS 5

* Set of tasks
Set TASKS / t1*t%NBTASKS% / ;


Set Count / c1*c500 / ;

* Task durations
Parameter DUR[TASKS]    / t1 21 , t2  53 , t3  95 , t4  55 , t5  34 / ;
* Due dates
Parameter DUE[TASKS]    / t1 66 , t2 101 , t3 232 , t4 125 , t5 150 / ;
* Weights of tasks
Parameter WEIGHT[TASKS] / t1  1 , t2   1 , t3   1 , t4   1 , t5   1 / ;

Variable
         Position[TASKS,Count] ;

Variable
* Tardiness
         tardiness[TASKS] ,
         start[TASKS]     ,
         Finish[TASKS]    ,
         twt              ;

Equation
         Eq_1(TASKS)       ,
         Eq_2(TASKS,Count) ,
         Eq_3(Count)       ,
         Eq_4(TASKS)       ,
         Def_Obj           ;

Eq_1(TASKS)..
    Finish[TASKS] =e= start[TASKS] + DUR[TASKS]  ;

Eq_2(TASKS,Count)..
    Position[TASKS,Count] =e=  SIGN( 1+ SIGN( 2+
                                 (-SQR( SIGN(Start[TASKS]-ord(Count) ) +
                                        SIGN(Finish[TASKS]-ord(Count)-1)
                                        )) )) ;
Eq_3(Count)..
    Sum{TASKS,Position[TASKS,Count]} =l= 1 ;

Eq_4(TASKS)..
    tardiness[TASKS] =e= Max(0,(start[TASKS] + DUR[TASKS] - DUE[TASKS]-1)) ;

Def_Obj..
    twt =e= Sum{TASKS, WEIGHT[TASKS] * tardiness[TASKS] } ;


start.lo[TASKS]  = 1 ;
Finish.lo[TASKS] = 1 ;
Position.lo[TASKS,Count] = 0 ;
Position.up[TASKS,Count] = 1 ;

* X-press Kalis Solution
start.lo['t1'] =   1 ;
start.lo['t2'] =  22 ;
start.lo['t3'] = 164 ;
start.lo['t4'] =  75 ;
start.lo['t5'] = 130 ;

Model Disjunctive_scheduling / all / ;

Solve Disjunctive_scheduling using DNLP minimazing twt ;

Display twt.l ;