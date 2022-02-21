*****************************************************************
*   Mosel Example Problems
*   ======================
*
*   file b1stadium_ka.mos
*   `````````````````````
*   Construction of a stadium
*   (See "Applications of optimization with Xpress-MP",
*        Section 7.1 Construction of a stadium)
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************

* model "B-1 Stadium construction (CP)"
*  uses "kalis"

* declarations
*Number of tasks in the project
$Set N 19
* (last = fictitious end task)

Set TASKS / t1*t%N% / ;

Alias(TASKS,TASKS1);

* Matrix of the adjacency graph
Set ARC[TASKS,TASKS1] / 't1'.'t2'   , 't2'.'t3'   , 't2'.'t4'  , 't2'.'t14'  ,
                        't3'.'t5'   , 't4'.'t6'   , 't4'.'t7'  , 't4'.'t9'   ,
                        't4'.'t10'  , 't4'.'t15'  , 't5'.'t6'  , 't6'.'t8'   ,
                        't6'.'t9'   , 't6'.'t11'  , 't7'.'t13' , 't8'.'t16'  ,
                        't9'.'t12'  , 't10'.'t19' , 't11'.'t16', 't12'.'t17' ,
                        't13'.'t19' , 't14'.'t15' , 't14'.'t16', 't15'.'t19' ,
                        't16'.'t19' , 't17'.'t18' , 't18'.'t19'               /;


* Duration of tasks
Parameter DUR[TASKS]  /  t1  2 ,  t2 16 ,  t3 9 ,  t4 8 ,
                         t5 10 ,  t6  6 ,  t7 2 ,  t8 2 ,
                         t9  9 , t10  5 , t11 3 , t12 2 ,
                        t13  1 , t14  7 , t15 4 , t16 3 ,
                        t17  9 , t18  1 , t19 0           / ;
* Time horizon
Scalar HORIZON ;
       HORIZON = Sum{TASKS, DUR[TASKS] } ;

Variable
* Start dates of tasks
         start[TASKS]   ,
         bestend        ;
Equation
         Prec(TASKS,TASKS1) ,
         Def_Obj            ;

* Task i precedes task j
Prec(TASKS,TASKS1)$ARC(TASKS,TASKS1)..
       start[TASKS] + DUR[TASKS] =l= start[TASKS1] ;

Def_Obj..
    bestend =g= start['t%N%'] ;

start.lo[TASKS] = 0 ;
start.up[TASKS] = HORIZON ;

* Solve the problem
Model B_1_Stadium_construction / all / ;

Solve B_1_Stadium_construction using LP minimazing bestend ;

Display bestend.l ;