* ABC-comp.mod
* Original AMPL coding by Sven Leyffer, Argonne Natl. Lab.
*
* A simple multi-objective optimization problem (p. 79f):
* C.-L. Hwang & A. S. Md. Masud, Multiple Objective
* Decision Making - Methods and Applications, No. 164 in
* Lecture Notes in Economics and Mathematical Systems,
* Springer, 1979.
*
* ... model modified to give meaningful MOOP.

* ... variables
Positive Variable x1 , x2 ;

* x1 -> product 1 in tons/day
* x2 -> product 2 in tons/day
Variable f1 ,
         f2 ;

Equation profit    ,
         labor     ,
         product   ,
         Def_Obj_1 ,
         Def_Obj_2 ;

* ... achieve profit min & limit labor cost
profit..
     x1*x2 =g= 3;
labor..
     5*x1 + 4*x2 =l= 25;

* ... daily production goal
product..
      x1 + 2*x2 =g= 5;

* ... objective functions
* ... total cost
Def_Obj_1..
    f1 =e= sqr(x1-4) + sqr(x2) + 5*x1 + 4*x2 - x1*x2;

* ... production
Def_Obj_2..
    f2 =e= - x1 - 2*x2 ;


Model ABC_comp_1 / profit , labor , product , Def_Obj_1 / ;
Model ABC_comp_2 / profit , labor , product , Def_Obj_2 / ;

Solve ABC_comp_1 using NLP minimazing f1 ;
Solve ABC_comp_2 using NLP minimazing f2 ;

Display f1.l ;
Display f2.l ;