*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file sequencing.mos
*   ```````````````````
*   TYPE:         Sequencing jobs on a machine (single machine scheduling)
*   DIFFICULTY:   3
*   FEATURES:     MIP problem with 3 different objectives; `procedure'
*                 for solution printing, `if-then'
*   DESCRIPTION:  A set of tasks (or jobs) is to be processed on a single
*                 machine. The execution of tasks is non-preemptive (that is,
*                 an operation may not be interrupted before its completion).
*                 For every task its release date, due date, and duration are
*                 given.
*                 The model shows how to minimize the total processing time,
*                 the average processing time, and the total tardiness (that
*                 is, the amount of time by which the completion of jobs
*                 exceeds their respective due dates).
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 7.4 `Sequencing jobs on a bottleneck machine'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Sequencing"

* Number of jobs
$Set NJ 7
Set JOBS / j1*j%NJ% / ;
Alias(JOBS,JOBS1);

* Release dates of jobs
Parameter REL[JOBS] / j1  2 , j2  5 , j3  4 , j4  0 , j5  0 , j6  8 , j7  9 / ;
* Durations of jobs
Parameter DUR[JOBS] / j1  5 , j2  6 , j3  8 , j4  4 , j5  2 , j6  4 , j7  2 / ;
* Due dates of jobs
Parameter DUE[JOBS] / j1 10 , j2 21 , j3 15 , j4 10 , j5  5 , j6 15 , j7 22 / ;

* =1 if job j at position k
Binary Variable rank[JOBS,JOBS1] ;

       Variable
* Start time of job at position k
                start[JOBS]     ,
* Completion time of job at position k
                comp[JOBS]      ,
* Lateness of job at position k
                late[JOBS]      ,
* Completion time of the entire schedule
                Obj_finish      ,
                Obj_1           ,
                Obj_2           ;

Equation OneJobPos(JOBS) ,
         OnePosJob(JOBS) ,
         Prec(JOBS)      ,
         Eq_Start(JOBS)  ,
         Eq_Late(JOBS)   ,
         Complete(JOBS)  ,
         Eq_Finish(JOBS) ,
         Def_Obj_1       ,
         Def_Obj_2       ;

* One job per position
OneJobPos(JOBS)..
   Sum{JOBS1, rank[JOBS1,JOBS] } =e= 1 ;

* One position per job
OnePosJob(JOBS)..
   Sum{JOBS1, rank[JOBS,JOBS1] } =e= 1 ;

* Sequence of jobs
Prec(JOBS)$(ord(JOBS) le card(JOBS))..
   start[JOBS+1] =g= start[JOBS] + Sum{JOBS1, DUR[JOBS1]*rank[JOBS1,JOBS]} ;

* Start times
Eq_Start(JOBS)..
   start(JOBS) =g= Sum{JOBS1, REL[JOBS1]*rank[JOBS1,JOBS]} ;

* Completion times
Complete(JOBS)..
   comp[JOBS] =e= start[JOBS] + Sum{JOBS1, DUR[JOBS1]*rank[JOBS1,JOBS] } ;

* Objective function 1: minimize latest completion time
Eq_Finish(JOBS)..
 Obj_finish =g= comp[JOBS] ;

* Objective function 2: minimize average completion time

Def_Obj_1..
Obj_1 =e= Sum{ JOBS, comp[JOBS] } ;

* Objective function 3: minimize total tardiness
Eq_Late(JOBS)..
    late[JOBS] =g= comp[JOBS] - Sum{JOBS1, DUE[JOBS1]*rank[JOBS1,JOBS] } ;

Def_Obj_2..
Obj_2 =e= Sum{JOBS, late[JOBS] } ;

start.lo[JOBS]      = 0 ;
rank.lo[JOBS,JOBS1] = 0 ;
comp.lo[JOBS]       = 0 ;
late.lo[JOBS]       = 0 ;

* Solve the problem
Model Sequencing_1 / OneJobPos ,
                     OnePosJob ,
                     Prec      ,
                     Eq_Start  ,
                     Eq_Late   ,
                     Complete  ,
                     Eq_Finish / ;

* Solve the problem
Model Sequencing_2 / OneJobPos ,
                     OnePosJob ,
                     Prec      ,
                     Eq_Start  ,
                     Eq_Late   ,
                     Complete  ,
                     Eq_Finish ,
                     Def_Obj_1 / ;

* Solve the problem
Model Sequencing_3 / OneJobPos ,
                     OnePosJob ,
                     Prec      ,
                     Eq_Start  ,
                     Eq_Late   ,
                     Complete  ,
                     Eq_Finish ,
                     Def_Obj_2 / ;

Solve Sequencing_1 using MIP Minimazing Obj_finish ;

Display Obj_finish.l ;

Solve Sequencing_2 using MIP Minimazing Obj_1 ;

Display Obj_1.l ;

Solve Sequencing_3 using MIP Minimazing Obj_2 ;

Display Obj_2.l ;


