*****************************************************************
*   CP example problems
*   ===================
*
*   file conjdisj.mos
*   `````````````````
*   Logical and/or constraints.
*
*   (c) 2005 Artelys SA and Dash Associates
*
******************************************************************
* model "Logical constraints"
*  uses "kalis"


* Default bounds for all variables

Set I /i1,i2/;
Set J /j1,j2/;

Parameter A1 , B1  ;
Parameter A2 , B2  ;

Binary Variable Plan_for_parameter[I,J] ;

        Variable
                 Obj       ;
Equation
         Eq_1(I) ,
         Eq_2(I) ,
         Eq_3(I) ,
         Def_Obj ;

Eq_1(I)$(ord(I) eq 1)..
    Sum{J,Plan_for_parameter[I,J]} =e= 2 ;

Eq_2(I)$(ord(I) eq card(I))..
    Sum{J,Plan_for_parameter[I,J]} =e= 1 ;

Eq_3(I)$(ord(I) eq card(I))..
        Plan_for_parameter[I,'j1'] =l= Plan_for_parameter[I,'j2'] ;

Def_Obj..
    Obj =e= 1 ;

Model Logical_constraints / all / ;
Solve Logical_constraints using MIP maximazing Obj ;

A1 = Plan_for_parameter.l['i1','j1'] ;
B1 = Plan_for_parameter.l['i1','j2'];
Display A1 ;
Display B1 ;

A2 = Plan_for_parameter.l['i2','j1'] ;
B2 = Plan_for_parameter.l['i2','j2'];
Display A2 ;
Display B2 ;


