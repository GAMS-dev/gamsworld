*****************************************************************
*   CP example problems
*   ===================
*
*   file meeting.mos
*   ````````````````
*   Introductory example.
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************

* model "Meeting"
*  uses "kalis"

* Set of meetings
Set MEETINGS / A , B , C , D / ;
* Set of time slots
Set TIME     / t1*t3 / ;

* Time slot per meeting
Integer Variable  plan[MEETINGS] ;

Variable Obj ;

Equation Eq_1   ,
         Eq_2   ,
         Eq_3   ,
         Eq_4   ,
         Def_Obj ;

* Respect incompatibilities
Eq_1..
    (plan['A'] - plan['B'])*(plan['A'] - plan['B']) =g= 1 ;
Eq_2..
    (plan['A'] - plan['D'])*(plan['A'] - plan['D']) =g= 1 ;
Eq_3..
    (plan['B'] - plan['C'])*(plan['B'] - plan['C']) =g= 1 ;
Eq_4..
    (plan['B'] - plan['D'])*(plan['B'] - plan['D']) =g= 1 ;
Def_Obj..
    Obj =e= 1 ;

plan.lo[MEETINGS] = 1         ;
plan.up[MEETINGS] = Card(TIME) ;
* GAMS-solver Baron
*plan.fx['A'] = 1 ;
*plan.fx['B'] = 3 ;
*plan.fx['C'] = 2 ;
*plan.fx['D'] = 2 ;


* Xpress-kalis
*plan.fx['A'] = 1 ;
*plan.fx['B'] = 2 ;
*plan.fx['C'] = 1 ;
*plan.fx['D'] = 3 ;

* Solve the problem
Model Meeting / all / ;

Solve Meeting using MIQCP minimazing Obj ;

Display Obj.l ;

Display plan.l ;
