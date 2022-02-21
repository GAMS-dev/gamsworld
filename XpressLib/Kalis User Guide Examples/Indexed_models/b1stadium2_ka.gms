*****************************************************************
*   Mosel Example Problems
*   ======================
*
*   file b1stadium2_ka.mos
*   ``````````````````````
*   Construction of a stadium
*   (See "Applications of optimization with Xpress-MP",
*        Section 7.1 Construction of a stadium)
*   - Alternative formulation using tasks -
*
*   (c) 2006 Artelys S.A. and Dash Associates
*
******************************************************************

* model "B-1 Stadium construction (CP)"
*  uses "kalis"

* Number of tasks in the project
$Set N 19
* (last = fictitious end task)

Set TASKS / t1*t%N% / ;

Alias(TASKS,TASKS1) ;
Alias(TASKS,TASKS2) ;


Parameter ARC[TASKS,TASKS1] ;
* Matrix of the adjacency graph
    ARC['t1','t2']   = 1 ;
    ARC['t2','t3']   = 1 ;
    ARC['t2','t4']   = 1 ;
    ARC['t2','t14']  = 1 ;
    ARC['t3','t5']   = 1 ;
    ARC['t4','t6']   = 1 ;
    ARC['t4','t7']   = 1 ;
    ARC['t4','t9']   = 1 ;
    ARC['t4','t10']  = 1 ;
    ARC['t4','t15']  = 1 ;
    ARC['t5','t6']   = 1 ;
    ARC['t6','t8']   = 1 ;
    ARC['t6','t9']   = 1 ;
    ARC['t6','t11']  = 1 ;
    ARC['t7','t13']  = 1 ;
    ARC['t8','t16']  = 1 ;
    ARC['t9','t12']  = 1 ;
    ARC['t10','t19'] = 1 ;
    ARC['t11','t16'] = 1 ;
    ARC['t12','t17'] = 1 ;
    ARC['t13','t19'] = 1 ;
    ARC['t14','t15'] = 1 ;
    ARC['t14','t16'] = 1 ;
    ARC['t15','t19'] = 1 ;
    ARC['t16','t19'] = 1 ;
    ARC['t17','t18'] = 1 ;
    ARC['t18','t19'] = 1 ;

* Duration of tasks
Parameter DUR[TASKS]  / t1  2 , t2  16 , t3   9 , t4   8 ,
                        t5 10 , t6   6 , t7   2 , t8   2 ,
                        t9  9 , t10  5 , t11  3 , t12  2 ,
                       t13  1 , t14  7 , t15  4 , t16  3 ,
                       t17  9 , t18  1 , t19  0      / ;
* Time horizon
Scalar HORIZON ;
       HORIZON = Sum{TASKS, DUR[TASKS] } ;


Integer Variable
         Start[TASKS]  ,
         End[TASKS]    ;

Variable
         Obj           ;

Equation Eq_1(TASKS)          ,
         Eq_2(TASKS,TASKS1)   ,
         Def_Obj(TASKS)       ;

Eq_1(TASKS)..
      End[TASKS] - Start[TASKS]  =e=  DUR[TASKS] ;

Eq_2(TASKS,TASKS1)$ARC[TASKS,TASKS1]..
      Start[TASKS1] =g= End[TASKS]  ;
* Objective function: total profit

Def_Obj(TASKS)..
    Obj =g= End[TASKS] ;

Start.lo[TASKS] = 0 ;
End.lo[TASKS]   = 0 ;

Model B_1_Stadium_construction / all / ;
Solve B_1_Stadium_construction using MIP minimazing Obj ;
Display Obj.l ;