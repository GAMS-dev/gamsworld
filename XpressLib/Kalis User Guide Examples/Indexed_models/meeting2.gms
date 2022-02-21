*****************************************************************
*   CP example problems
*   ===================
*
*   file meeting2.mos
*   `````````````````
*   Introductory example.
*   - Additional constraints. -
*
*   (c) 2005 Artelys S.A. and Dash Associates
*
******************************************************************!)

*model "Meeting (2)"
* uses "kalis"

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
*         Eq_5   ,
*         Eq_6   ,
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

* Meeting D not on day 2 this equations not need in model
*Eq_5..
*plan['D'] =l= 1 ;
*Eq_6..
*plan['D'] =g= 3 ;

Def_Obj..
    Obj =e= 1 ;

plan.lo[MEETINGS] = 1         ;
plan.up[MEETINGS] = Card(TIME) ;

* Meeting B before day 3
plan.up['B'] = 2 ;
* Meeting A on day 1
plan.fx['A'] = 1 ;


* GAMS-solver Baron
*plan.fx['A'] = 1 ;
*plan.fx['B'] = 2 ;
*plan.fx['C'] = 3 ;
*plan.fx['D'] = 3 ;


* Xpress-kalis
*plan.fx['A'] = 1 ;
*plan.fx['B'] = 2 ;
*plan.fx['C'] = 1 ;
*plan.fx['D'] = 3 ;

* Solve the problem
Model Meeting_2 / all / ;

Solve Meeting_2 using MIQCP minimazing Obj ;

Display Obj.l ;

Display plan.l ;