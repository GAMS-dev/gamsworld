*****************************************************************
*   CP example problems
*   ===================
*
*   file exam4.mos
*   ``````````````
*   Scheduling exams
*   (See "Applications of optimization with Xpress-MP",
*        Section 14.4 Exam schedule)
*   - Optimization and branching strategy -
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************

* model "I-4 Scheduling exams (CP) - 4"
* uses "kalis"
* Number of time slots
$Set NT 8

* Set of exams
Set EXAM  / DA_ , NA_ , C__ , SE_ , PM_ , J__ , GMA , LP_ , MP_ , S__ , DSE / ;
* Set of time slots
Set TIME / t1*t%NT% / ;

Alias(EXAM,EXAM1);

*        INCOMPatibility between exams
Parameter INCOMP[EXAM,EXAM1] ;

       INCOMP['DA_','NA_'] = 1 ;          INCOMP['DA_','PM_'] = 1 ;
       INCOMP['DA_','GMA'] = 1 ;          INCOMP['DA_','S__'] = 1 ;
       INCOMP['DA_','DSE'] = 1 ;          INCOMP['NA_','DA_'] = 1 ;
       INCOMP['NA_','PM_'] = 1 ;          INCOMP['NA_','GMA'] = 1 ;
       INCOMP['NA_','S__'] = 1 ;          INCOMP['NA_','DSE'] = 1 ;
       INCOMP['C__','SE_'] = 1 ;          INCOMP['C__','PM_'] = 1 ;
       INCOMP['C__','J__'] = 1 ;          INCOMP['C__','GMA'] = 1 ;
       INCOMP['C__','MP_'] = 1 ;          INCOMP['C__','S__'] = 1 ;
       INCOMP['C__','DSE'] = 1 ;          INCOMP['SE_','C__'] = 1 ;
       INCOMP['SE_','PM_'] = 1 ;          INCOMP['SE_','J__'] = 1 ;
       INCOMP['SE_','GMA'] = 1 ;          INCOMP['SE_','S__'] = 1 ;
       INCOMP['SE_','DSE'] = 1 ;          INCOMP['PM_','DA_'] = 1 ;
       INCOMP['PM_','NA_'] = 1 ;          INCOMP['PM_','C__'] = 1 ;
       INCOMP['PM_','SE_'] = 1 ;          INCOMP['PM_','J__'] = 1 ;
       INCOMP['PM_','GMA'] = 1 ;          INCOMP['PM_','LP_'] = 1 ;
       INCOMP['PM_','MP_'] = 1 ;          INCOMP['PM_','S__'] = 1 ;
       INCOMP['PM_','DSE'] = 1 ;          INCOMP['J__','C__'] = 1 ;
       INCOMP['J__','SE_'] = 1 ;          INCOMP['J__','PM_'] = 1 ;
       INCOMP['J__','GMA'] = 1 ;          INCOMP['J__','MP_'] = 1 ;
       INCOMP['J__','S__'] = 1 ;          INCOMP['J__','DSE'] = 1 ;
       INCOMP['GMA','DA_'] = 1 ;          INCOMP['GMA','NA_'] = 1 ;
       INCOMP['GMA','C__'] = 1 ;          INCOMP['GMA','SE_'] = 1 ;
       INCOMP['GMA','PM_'] = 1 ;          INCOMP['GMA','J__'] = 1 ;
       INCOMP['GMA','LP_'] = 1 ;          INCOMP['GMA','MP_'] = 1 ;
       INCOMP['GMA','S__'] = 1 ;          INCOMP['GMA','DSE'] = 1 ;
       INCOMP['LP_','PM_'] = 1 ;          INCOMP['LP_','GMA'] = 1 ;
       INCOMP['LP_','S__'] = 1 ;          INCOMP['LP_','DSE'] = 1 ;
       INCOMP['MP_','C__'] = 1 ;          INCOMP['MP_','PM_'] = 1 ;
       INCOMP['MP_','J__'] = 1 ;          INCOMP['MP_','GMA'] = 1 ;
       INCOMP['MP_','S__'] = 1 ;          INCOMP['MP_','DSE'] = 1 ;
       INCOMP['S__','DA_'] = 1 ;          INCOMP['S__','NA_'] = 1 ;
       INCOMP['S__','C__'] = 1 ;          INCOMP['S__','SE_'] = 1 ;
       INCOMP['S__','PM_'] = 1 ;          INCOMP['S__','J__'] = 1 ;
       INCOMP['S__','GMA'] = 1 ;          INCOMP['S__','LP_'] = 1 ;
       INCOMP['S__','MP_'] = 1 ;          INCOMP['S__','DSE'] = 1 ;
       INCOMP['DSE','DA_'] = 1 ;          INCOMP['DSE','NA_'] = 1 ;
       INCOMP['DSE','C__'] = 1 ;          INCOMP['DSE','SE_'] = 1 ;
       INCOMP['DSE','PM_'] = 1 ;          INCOMP['DSE','J__'] = 1 ;
       INCOMP['DSE','GMA'] = 1 ;          INCOMP['DSE','LP_'] = 1 ;
       INCOMP['DSE','MP_'] = 1 ;          INCOMP['DSE','S__'] = 1 ;

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
*plan.fx['DA_','t1'] = 1 ;
*plan.fx['NA_','t2'] = 1 ;
*plan.fx['C__','t2'] = 1 ;
*plan.fx['SE_','t1'] = 1 ;
*plan.fx['PM_','t3'] = 1 ;
*plan.fx['J__','t7'] = 1 ;
*plan.fx['GMA','t5'] = 1 ;
*plan.fx['LP_','t1'] = 1 ;
*plan.fx['MP_','t1'] = 1 ;
*plan.fx['S__','t6'] = 1 ;
*plan.fx['DSE','t4'] = 1 ;


* Solve the problem
Model I4_Scheduling_exams_CP_4 / all / ;

Solve I4_Scheduling_exams_CP_4 using MIP minimazing Obj ;

Parameter Name[EXAM] ;

Loop{EXAM,
Loop{TIME,
If (plan.l[EXAM,TIME]>0, Name[EXAM] = ord(TIME); );
    }  ;
    }  ;
Display Obj.l ;
Display plan.l ;


Loop{EXAM,
Loop{TIME,
If (Name[EXAM] eq ord(TIME), Display EXAM; );
    };
    };
