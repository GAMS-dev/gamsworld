*****************************************************************
*   CP example problems
*   ===================
*
*   file i4exam_ka.mos
*   ``````````````````
*   Scheduling exams
*   (See "Applications of optimization with Xpress-MP",
*        Section 14.4 Exam schedule)
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************

* model "I-4 Scheduling exams (CP)"
* uses "kalis"

* Set of exams
Set EXAM  / DA_ , NA_ , C__ , SE_ , PM_ , J__ , GMA , LP_ , MP_ , S__ , DSE / ;
* Set of time slots
Set TIME / t1*t8  /

Alias(EXAM,EXAM1);
Alias(TIME,TIME1);

* Incompatibility between exams
Table INCOMP[EXAM,EXAM1]
           DA_  NA_ C__ SE_ PM_ J__ GMA LP_ MP_ S__ DSE
     DA_     0   1   0   0   1   0   1   0   0   1   1
     NA_     1   0   0   0   1   0   1   0   0   1   1
     C__     0   0   0   1   1   1   1   0   1   1   1
     SE_     0   0   1   0   1   1   1   0   0   1   1
     PM_     1   1   1   1   0   1   1   1   1   1   1
     J__     0   0   1   1   1   0   1   0   1   1   1
     GMA     1   1   1   1   1   1   0   1   1   1   1
     LP_     0   0   0   0   1   0   1   0   0   1   1
     MP_     0   0   1   0   1   1   1   0   0   1   1
     S__     1   1   1   1   1   1   1   1   1   0   1
     DSE     1   1   1   1   1   1   1   1   1   1   0   ;

* Time slot for exam
Integer Variable plan[EXAM,TIME] ;

Variable Obj        ;

Equation
         Eq_1(EXAM,EXAM1,TIME) ,
         Eq_2(EXAM)            ,
         Def_Obj               ;

* Respect incompatibilities
Eq_1(EXAM,EXAM1,TIME)$((ord(EXAM) lt ord(EXAM1)) and
                       (INCOMP[EXAM,EXAM1] eq 1)     )..
                      plan[EXAM,TIME] + plan[EXAM1,TIME] =l= 1 ;

Eq_2(EXAM)..
    Sum{TIME,plan[EXAM,TIME]} =e= 1 ;

Def_Obj..
    Obj =e= Sum{(TIME,EXAM),ord(TIME)*plan[EXAM,TIME]} ;

plan.lo[EXAM,TIME] = 0 ;
plan.up[EXAM,TIME] = 1 ;
*XPress solutions
*plan.fx['DA_','t1'] = 1 ;
*plan.fx['NA_','t2'] = 1 ;
*plan.fx['C__','t1'] = 1 ;
*plan.fx['SE_','t2'] = 1 ;
*plan.fx['PM_','t3'] = 1 ;
*plan.fx['J__','t7'] = 1 ;
*plan.fx['GMA','t4'] = 1 ;
*plan.fx['LP_','t1'] = 1 ;
*plan.fx['MP_','t2'] = 1 ;
*plan.fx['S__','t5'] = 1 ;
*plan.fx['DSE','t6'] = 1 ;

*GAMS solutions CPLEX
*plan.fx['DA_','t6'] = 1 ;
*plan.fx['NA_','t5'] = 1 ;
*plan.fx['C__','t6'] = 1 ;
*plan.fx['SE_','t7'] = 1 ;
*plan.fx['PM_','t4'] = 1 ;
*plan.fx['J__','t5'] = 1 ;
*plan.fx['GMA','t3'] = 1 ;
*plan.fx['LP_','t5'] = 1 ;
*plan.fx['MP_','t7'] = 1 ;
*plan.fx['S__','t2'] = 1 ;
*plan.fx['DSE','t1'] = 1 ;


* Solve the problem
Model I4_Scheduling_exams / all / ;

Solve I4_Scheduling_exams using MIP minimazing Obj ;

Display Obj.l ;

Display plan.l ;




