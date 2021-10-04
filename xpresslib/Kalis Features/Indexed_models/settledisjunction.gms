*****************************************************************
*   CP example problems
*   ===================
*
*   file settledisjunction.mos
*   ``````````````````````````
*   Scheduling disjunctive tasks.
*
*   (c) 2005 Artelys SA and Dash Associates, rev. 2007
*
******************************************************************
* model "Disjunctive scheduling with settle_disjunction"
* uses "kalis"

*  declarations
$Set  NBTASKS  5
* Set of tasks
Set TASKS / t1*t%NBTASKS% / ;
Set Time  / a1*a500 / ;


* Task durations
Parameter DUR[TASKS] / t1  21 , t2 53 , t3 95 , t4 55 , t5 34 / ;

* Due dates
Parameter DUE[TASKS] / t1 66 , t2 101 , t3 232 , t4 125 , t5 150 / ;

* Weights of tasks
Parameter WEIGHT[TASKS] / t1 1 , t2 1 , t3 1 , t4 1 , t5 1 / ;

Variable
* Start times
        start[TASKS]         ,
        Finish[TASKS]        ,
        Position[TASKS,Time] ,
* Aux. variable
        tmp[TASKS]           ,
* Tardiness
        tardiness[TASKS]     ;

Variable
* Objective variable
        twt          ;
Equation
         Eq_1(TASKS)      ,
         Eq_2(TASKS,Time) ,
         Eq_3(TASKS)      ,
         Eq_4(TASKS)      ,
         add_1(TASKS)     ,
         add_2(Time)      ,
         Def_Obj          ;

Eq_1(TASKS)..
    Finish[TASKS] - Start[TASKS] =g= DUR[TASKS] ;

Eq_2(TASKS,Time)..
    Position[TASKS,Time] =e=  SIGN( 1+ SIGN( 2+
                                 (-SQR( SIGN(Start[TASKS]-ord(Time) ) +
                                        SIGN(Finish[TASKS]-ord(Time)-1)
                                       )) )) ;

Eq_3(TASKS)..
     tmp[TASKS] =e= start[TASKS] + DUR[TASKS] - DUE[TASKS] ;

Eq_4(TASKS)..
     tardiness[TASKS] =g= tmp[TASKS] -1 ;

Def_Obj..
     twt =e= Sum{TASKS, (WEIGHT[TASKS] * tardiness[TASKS]) }  ;

add_1(TASKS)..
(start[TASKS]-floor(start[TASKS])) =l= 0.00001 ;

add_2(Time)..
  Sum{TASKS, Position[TASKS,Time]} =l= 1 ;

Position.l[TASKS,Time] = 1 ;

start.lo['t1'] =  1  ;
start.lo['t2'] = 22  ;
start.lo['t3'] = 164 ;
start.lo['t4'] = 75  ;
start.lo['t5'] = 130 ;

tardiness.lo[TASKS] = 0 ;

Model settledisjunction / all / ;

Solve settledisjunction using DNLP minimazing twt ;

Display twt.l ;




