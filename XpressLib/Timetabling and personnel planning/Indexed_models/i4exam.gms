******************************************************
*   Mosel Example Problems
*   ======================
*
* Origin file i4exam.mos
*   ```````````````
*   Scheduling exams
*
*   (c) 2002 Dash Associates
*       author: S. Heipcke, Mar. 2002
********************************************************

* model "I-4 Scheduling exams"


Set EXAM / DA , NA , C++ , SE , PM , J , GMA , LP , MP , S , DSE / ;
* Set of exams
Alias(EXAM,EXAM1) ;

Set TIME / t1*t8 / ;
* Set of time slots

Set INCOMP[EXAM,EXAM1] ;
* Incompatibility between exams

         INCOMP['DA','NA']    =  Yes  ;
         INCOMP['DA','PM']    =  Yes  ;
         INCOMP['DA','GMA']   =  Yes  ;
         INCOMP['DA','S']     =  Yes  ;
         INCOMP['DA','DSE']   =  Yes  ;
         INCOMP['NA','DA']    =  Yes  ;
         INCOMP['NA','PM']    =  Yes  ;
         INCOMP['NA','GMA']   =  Yes  ;
         INCOMP['NA','S']     =  Yes  ;
         INCOMP['NA','DSE']   =  Yes  ;
         INCOMP['C++','SE']   =  Yes  ;
         INCOMP['C++','PM']   =  Yes  ;
         INCOMP['C++','J']    =  Yes  ;
         INCOMP['C++','GMA']  =  Yes  ;
         INCOMP['C++','MP']   =  Yes  ;
         INCOMP['C++','S']    =  Yes  ;
         INCOMP['C++','DSE']  =  Yes  ;
         INCOMP['SE','C++']   =  Yes  ;
         INCOMP['SE','PM']    =  Yes  ;
         INCOMP['SE','J']     =  Yes  ;
         INCOMP['SE','GMA']   =  Yes  ;
         INCOMP['SE','S']     =  Yes  ;
         INCOMP['SE','DSE']   =  Yes  ;
         INCOMP['PM','DA']    =  Yes  ;
         INCOMP['PM','NA']    =  Yes  ;
         INCOMP['PM','C++']   =  Yes  ;
         INCOMP['PM','SE']    =  Yes  ;
         INCOMP['PM','J']     =  Yes  ;
         INCOMP['PM','GMA']   =  Yes  ;
         INCOMP['PM','LP']    =  Yes  ;
         INCOMP['PM','MP']    =  Yes  ;
         INCOMP['PM','S']     =  Yes  ;
         INCOMP['PM','DSE']   =  Yes  ;
         INCOMP['J','C++']    =  Yes  ;
         INCOMP['J','SE']     =  Yes  ;
         INCOMP['J','PM']     =  Yes  ;
         INCOMP['J','GMA']    =  Yes  ;
         INCOMP['J','MP']     =  Yes  ;
         INCOMP['J','S']      =  Yes  ;
         INCOMP['J','DSE']    =  Yes  ;
         INCOMP['GMA','DA']   =  Yes  ;
         INCOMP['GMA','NA']   =  Yes  ;
         INCOMP['GMA','C++']  =  Yes  ;
         INCOMP['GMA','SE']   =  Yes  ;
         INCOMP['GMA','PM']   =  Yes  ;
         INCOMP['GMA','J']    =  Yes  ;
         INCOMP['GMA','LP']   =  Yes  ;
         INCOMP['GMA','MP']   =  Yes  ;
         INCOMP['GMA','S']    =  Yes  ;
         INCOMP['GMA','DSE']  =  Yes  ;
         INCOMP['LP','PM']    =  Yes  ;
         INCOMP['LP','GMA']   =  Yes  ;
         INCOMP['LP','S']     =  Yes  ;
         INCOMP['LP','DSE']   =  Yes  ;
         INCOMP['MP','C++']   =  Yes  ;
         INCOMP['MP','PM']    =  Yes  ;
         INCOMP['MP','J']     =  Yes  ;
         INCOMP['MP','GMA']   =  Yes  ;
         INCOMP['MP','S']     =  Yes  ;
         INCOMP['MP','DSE']   =  Yes  ;
         INCOMP['S','DA']     =  Yes  ;
         INCOMP['S','NA']     =  Yes  ;
         INCOMP['S','C++']    =  Yes  ;
         INCOMP['S','SE']     =  Yes  ;
         INCOMP['S','PM']     =  Yes  ;
         INCOMP['S','J']      =  Yes  ;
         INCOMP['S','GMA']    =  Yes  ;
         INCOMP['S','LP']     =  Yes  ;
         INCOMP['S','MP']     =  Yes  ;
         INCOMP['S','DSE']    =  Yes  ;
         INCOMP['DSE','DA']   =  Yes  ;
         INCOMP['DSE','NA']   =  Yes  ;
         INCOMP['DSE','C++']  =  Yes  ;
         INCOMP['DSE','SE']   =  Yes  ;
         INCOMP['DSE','PM']   =  Yes  ;
         INCOMP['DSE','J']    =  Yes  ;
         INCOMP['DSE','GMA']  =  Yes  ;
         INCOMP['DSE','LP']   =  Yes  ;
         INCOMP['DSE','MP']   =  Yes  ;
         INCOMP['DSE','S']    =  Yes  ;



Binary Variable plan[EXAM,TIME] ;
* 1 if exam in a time slot, 0 otherwise

Variable Results ;

Equation Eq_1(EXAM)            ,
         Eq_2(EXAM,EXAM1,TIME) ,
         Def_obj               ;

* Schedule all exams
Eq_1(EXAM)..
   Sum{TIME, plan(EXAM,TIME) } =e= 1 ;

* Respect incompatibilities
Eq_2(EXAM,EXAM1,TIME)$((ord(EXAM) lt ord(EXAM1))and(INCOMP[EXAM,EXAM1]))..
  plan[EXAM,TIME] + plan[EXAM1,TIME] =l= 1 ;


* Breaking symmetries
* plan.fx['DA','t1']  = 1 ;
* plan.fx['NA','t2']  = 1 ;
* plan.fx['PM','t3']  = 1 ;
* plan.fx['GMA','t4'] = 1 ;
* plan.fx['S','t5']   = 1 ;
* plan.fx['DSE','t6'] = 1 ;

Def_obj..
   Results =e=  0 ;

* Solve the problem
Model I_4_Scheduling_exams / All / ;

Solve I_4_Scheduling_exams using MIP maximazing Results ;

Display Results.l ;