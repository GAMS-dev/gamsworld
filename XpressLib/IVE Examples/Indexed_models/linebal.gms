*******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file linebal.mos
*   ````````````````
*   TYPE:         Line balancing problem
*   DIFFICULTY:   2
*   FEATURES:     MIP problem, encoding of arcs, `range', formulation of
*                 sequencing constraints
*   DESCRIPTION:  A product is produced on an assembly lines with four
*                 workstations. It is assembled in twelve operations between
*                 which there are certain precedence constraints. The duration
*                 of every task is given. We would like to distribute the
*                 tasks among the workstations in order to balance the line to
*                 obtain the shortest possible cycle time, that is, the total
*                 time required for assembling the product. Every task needs
*                 to be assigned to a single workstation that has to process
*                 it without interruption. Every workstation deals with a
*                 single operation at a time.
*   FURTHER INFO: `Applications of optimization with Xpress-MP',
*                 Section 7.6 `Assembly line balancing'
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke
********************************************************

* model "Assembly line balancing"

* Set of workstations
Set MACH / m1*m4 / ;
* Set of tasks
Set TASKS /t1*t12 / ;
Set I / i1,i2 / ;
Set J / j1*j16 / ;

* Durations of tasks
Parameter DUR[TASKS]  /t1 3 , t2   6 , t3  7 , t4   6 ,
                       t5 4 , t6   8 , t7  9 , t8  11 ,
                       t9 2 , t10 13 , t11 4 , t12  3  / ;
* Precedence relations between tasks
Parameter Arc[J,I] ;

    Arc['j1','i1']  =  1 ; Arc['j1','i2']  =   2 ;
    Arc['j2','i1']  =  1 ; Arc['j2','i2']  =   3 ;
    Arc['j3','i1']  =  2 ; Arc['j3','i2']  =   4 ;
    Arc['j4','i1']  =  2 ; Arc['j4','i2']  =   5 ;
    Arc['j5','i1']  =  2 ; Arc['j5','i2']  =   6 ;
    Arc['j6','i1']  =  3 ; Arc['j6','i2']  =   6 ;
    Arc['j7','i1']  =  3 ; Arc['j7','i2']  =   7 ;
    Arc['j8','i1']  =  4 ; Arc['j8','i2']  =   9 ;
    Arc['j9','i1']  =  5 ; Arc['j9','i2']  =   9 ;
    Arc['j10','i1'] =  6 ; Arc['j10','i2'] =   8 ;
    Arc['j11','i1'] =  7 ; Arc['j11','i2'] =  11 ;
    Arc['j12','i1'] =  8 ; Arc['j12','i2'] =   9 ;
    Arc['j13','i1'] =  8 ; Arc['j13','i2'] =  10 ;
    Arc['j14','i1'] =  9 ; Arc['j14','i2'] =  12 ;
    Arc['j15','i1'] = 10 ; Arc['j15','i2'] =  12 ;
    Arc['j16','i1'] = 11 ; Arc['j16','i2'] =  10 ;

Binary Variable process[TASKS,MACH] ;
* 1 if task on machine, 0 otherwise

Variable cycle ;
* Duration of a production cycle

Equation OneMachTask(TASKS) ,
         Prec(J)            ,
         Eq_Cycle(MACH)     ;

* One workstation per task
OneMachTask(TASKS)..
   Sum{MACH, process[TASKS,MACH] } =e= 1 ;

* Sequence of tasks
Prec(J)..
   Sum{MACH, ord(MACH)*Sum{TASKS$(ord(TASKS) eq Arc[J,'i1']),
                       process(TASKS,MACH)}}                         =l=
   Sum{MACH, ord(MACH)*Sum{TASKS$(ord(TASKS) eq Arc[J,'i2']),
                       process(TASKS,MACH)}} ;

* Cycle time
Eq_Cycle(MACH)..
   Sum{TASKS, DUR[TASKS]*process[TASKS,MACH]} =l= cycle ;

* Minimize the duration of a production cycle
Model Assembly_line_balancing / all / ;

Solve Assembly_line_balancing using MIP Minimazing cycle ;

Display cycle.l ;


