* ex005.mod
* Original AMPL coding by Sven Leyffer, Argonne Natl. Lab.
*
* A simple multi-objective optimization problem (p. 281):
* C.-L. Hwang & A. S. Md. Masud, Multiple Objective
* Decision Making - Methods and Applications, No. 164 in
* Lecture Notes in Economics and Mathematical Systems,
* Springer, 1979.

Variables x1 ,
          x2 ,
          f1 ,
          f2 ;

Equation Def_Obj_1 ,
         Def_Obj_2 ;

* ... objective functions
Def_Obj_1..
    f1 =e= x1*x1 - x2*x2 ;
Def_Obj_2..
    f2 =e= x1/x2 ;

x1.lo = -1 ;
x1.up =  2 ;

x2.lo =  1 ;
x2.up =  2 ;

Model ex005_1 /  Def_Obj_1 / ;
Model ex005_2 /  Def_Obj_2 / ;

Solve ex005_1 using NLP minimazing f1 ;
Solve ex005_2 using NLP minimazing f2 ;

Display f1.l ;
Display f2.l ;
