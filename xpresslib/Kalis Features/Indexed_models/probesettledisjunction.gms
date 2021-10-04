*****************************************************************
*   CP example problems
*   ===================
*
*   file probesettledisjunction.mos
*   ```````````````````````````````
*   Scheduling disjunctive tasks with a probe-settle-disjunctions strategy.
*
*   (c) 2007 Artelys SA and Dash Associates
*
*****************************************************************
* model "Disjunctive scheduling with probe_settle_disjunction"
*  uses "kalis"

$Set NBTASKS 5

* Set of tasks
Set TASKS / t1*t%NBTASKS% /

Alias(TASKS,TASKS1) ;

* Task durations
Parameter DUR[TASKS]    / t1 21 , t2  53 , t3  95 , t4  55 , t5  34 / ;
* Due dates
Parameter DUE[TASKS]    / t1 66 , t2 101 , t3 232 , t4 125 , t5 150 / ;
* Weights of tasks
Parameter WEIGHT[TASKS] / t1  1 , t2   1 , t3   1 , t4   1 , t5   1 / ;

Variable
* Start times
         start[TASKS]      ,
* Aux. variable
         tmp[TASKS]        ,
* Tardiness
         tardiness[TASKS]  ,
* Objective variable
         twt               ;

Equation
         Eq_1(TASKS)        ,
         Eq_2(TASKS,TASKS1) ,
         Eq_3(TASKS)        ,
         Def_Obj            ;

Eq_1(TASKS)..
     tmp[TASKS] =e= start[TASKS] + DUR[TASKS] - DUE[TASKS] ;

* Create the disjunctive constraints
Eq_2(TASKS,TASKS1)$((ord(TASKS1) gt ord(TASKS))and
                    (ord(TASKS) lt card(TASKS)))..
     ( start[TASKS1] - (start[TASKS] + DUR[TASKS]  ) )*
     ( start[TASKS]  - (start[TASKS1] + DUR[TASKS1]) )  =l= 0 ;

Eq_3(TASKS)..
     tardiness[TASKS] =e= (SQRT(tmp[TASKS]*tmp[TASKS] ) + tmp[TASKS])/2 ;
Def_Obj..
     twt =e= Sum{TASKS,(WEIGHT[TASKS] * tardiness[TASKS]) } ;

start.lo[TASKS] = 0 ;

*Press Kalis
*start.fx['t1'] =   0 ;
*start.fx['t2'] =  21 ;
*start.fx['t3'] = 163 ;
*start.fx['t4'] = 108 ;
*start.fx['t5'] =  74 ;

* Solve the problem
Model Disjunctive_scheduling / all / ;

Solve Disjunctive_scheduling using NLP minimazing twt ;

Display twt.l ;