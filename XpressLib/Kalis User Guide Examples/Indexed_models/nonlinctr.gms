*****************************************************************
*   CP example problems
*   ===================
*
*   file nonlinctr.mos
*   ``````````````````
*   Nonlinear constraints over discrete and continuous
*   variables.
*
*   (c) 2007 Artelys S.A. and Dash Associates
*
******************************************************************

* model "Nonlinear constraints"
* uses "mmxprs"


Variable a,b,c ,
         x,y,z ,
         Obj   ;
Equation
         Eq_1    ,
         Eq_2    ,
         Eq_3    ,
         Eq_4    ,
         Eq_5    ,
         Def_Obj ;

Eq_1..       x =e= LOG(y)                     ;
Eq_2..       y =e= ABS(z)                     ;
Eq_3..       x*y =l= SQR(z)                   ;
Eq_4..       z =e= -a/b                       ;
Eq_5..       a*b*c*c*c =g= 150                ;
Def_Obj..    Obj =e= 1 ;                      ;


a.lo =  0 ;
b.lo =  0.000001 ;
c.lo =  0 ;
a.up =  5 ;
b.up =  5 ;
c.up =  5 ;

x.lo =-10 ;
y.lo =  0.000001 ;
z.lo =-10 ;
x.up = 10 ;
y.up = 10 ;
z.up = 10 ;


Model Nonlinear_constraints / all / ;

Solve Nonlinear_constraints using DNLP maximazing Obj ;