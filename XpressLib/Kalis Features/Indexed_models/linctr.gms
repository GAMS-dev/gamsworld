*****************************************************************
*   CP example problems
*   ===================
*
*   file linctr.mos
*   ```````````````
*   Posting and propagating linear constraints.
*
*   (c) 2005 Artelys SA and Dash Associates
*
******************************************************************
* model "Linear constraints"
*  uses "kalis"

$Set N 3

Set R / r1 * r%N% / ;

Positive Variable
                  x[R] ;
Variable
                 Obj   ;
Equation
         Eq_1    ,
         Eq_2    ,
         Def_Obj ;

* Automated post+propagation
Eq_1..
    x['r1'] =g= x['r3'] + 5 ;

* Named constraint (explicit post)
Eq_2..
    x['r3'] =g= x['r2'] + 10 ;

* Minimize the value of x(1)
Def_Obj..
    Obj =e= x['r1'] ;

* Automated post w/o propagation
x.lo['r2'] = 10 ;
x.up[R]    = 50 ;

Model Linear_constraints / all / ;
Solve Linear_constraints using LP minimazing Obj ;

Display Obj.l ;