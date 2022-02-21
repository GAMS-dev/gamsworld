******************************************************
*   Mosel Example Problems
*   ======================
*
* origin  file b6linebal.mos
*   ``````````````````
*   Assembly line balancing
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
*******************************************************

* model "B-6 Assembly line balancing"


Set MACH / m1*m4 / ;
* Set of workstations
Set TASKS / t1*t12 / ;
* Set of tasks
Set RA / r1*r16 / ;
Set I / i1*i2 / ;

Parameter DUR[TASKS]  /  t1  3 ,  t2  6 ,  t3 7 ,  t4  6 ,
                         t5  4 ,  t6  8 ,  t7 9 ,  t8 11 ,
                         t9  2 , t10 13 , t11 4 , t12  3  / ;

* Durations of tasks
* Precedence relations between tasks
Parameter ARC[RA,I] ;
   ARC['r1','i1']  =   1 ;
   ARC['r2','i1']  =   1 ;
   ARC['r3','i1']  =   2 ;
   ARC['r4','i1']  =   2 ;
   ARC['r5','i1']  =   2 ;
   ARC['r6','i1']  =   3 ;
   ARC['r7','i1']  =   3 ;
   ARC['r8','i1']  =   4 ;
   ARC['r9','i1']  =   5 ;
   ARC['r10','i1'] =   6 ;
   ARC['r11','i1'] =   7 ;
   ARC['r12','i1'] =   8 ;
   ARC['r13','i1'] =   8 ;
   ARC['r14','i1'] =   9 ;
   ARC['r15','i1'] =  10 ;
   ARC['r16','i1'] =  11 ;

   ARC['r1','i2']  =   2 ;
   ARC['r2','i2']  =   3 ;
   ARC['r3','i2']  =   4 ;
   ARC['r4','i2']  =   5 ;
   ARC['r5','i2']  =   6 ;
   ARC['r6','i2']  =   6 ;
   ARC['r7','i2']  =   7 ;
   ARC['r8','i2']  =   9 ;
   ARC['r9','i2']  =   9 ;
   ARC['r10','i2'] =   8 ;
   ARC['r11','i2'] =  11 ;
   ARC['r12','i2'] =   9 ;
   ARC['r13','i2'] =  10 ;
   ARC['r14','i2'] =  12 ;
   ARC['r15','i2'] =  12 ;
   ARC['r16','i2'] =  10 ;

Binary Variable process[TASKS,MACH] of mpvar
* 1 if task on machine, 0 otherwise
Variable cycle
* Duration of a production cycle

Equation Eq_1(TASKS) ,
         Eq_2(RA)    ,
         Eq_3(MACH)  ;

* One workstation per task
Eq_1(TASKS)..
     Sum{MACH, process[TASKS,MACH] } =e= 1 ;
* Sequence of tasks
Eq_2(RA)..
     Sum{MACH, Sum{TASKS, (ord(MACH)*( process[TASKS,MACH])$(ARC(RA,'i1') eq ord(TASKS)))} } =l=
     Sum{MACH, Sum{TASKS, (ord(MACH)*( process[TASKS,MACH])$(ARC(RA,'i2') eq ord(TASKS)))} } ;
* Cycle time

Eq_3(MACH)..
     Sum{TASKS, DUR[TASKS]*process[TASKS,MACH] } =l= cycle ;

* Minimize the duration of a production cycle

Model B_6_Assembly / All / ;

Solve B_6_Assembly using  mip minimazing cycle ;

Display cycle.l ;
