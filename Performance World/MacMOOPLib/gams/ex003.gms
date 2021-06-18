* ex003.mod
* Original AMPL coding by Sven Leyffer, University of Dundee
*
* A simple multi-objective optimization problem due to
* Ravindra V. Tappeta and John E. Renaud, Dept. Aerospace & Mech. Engng.
* University of Notre Dame, "Interactive multiobjective optimization
* procedure with local preferences", Proceedings of the 3rd WCSMO, 1999.

* ... sets & parameters

* ... dimension of the problem
Set I /i1,i2/ ;

Positive Variables x[I] ;
* ... add bounds for MPEC
Variable f1 ,
         f2 ;

Equation g1        ,
         g2        ,
         Def_Obj_1 ,
         Def_Obj_2 ;

g1..
     2.5 - 0.5*power{(x['i1'] - 2),3} - x['i2'] =g= 0;

g2..
     3.85 + 8*sqr(x['i2'] - x['i1'] + 0.65) - x['i2'] - x['i1'] =g= 0;

* ... objective functions
Def_Obj_1..
    f1 =e= sqr(x['i1'] + x['i2'] - 7.5) + 0.25*sqr(x['i2'] - x['i1'] + 3);
Def_Obj_2..
    f2 =e= 0.25*sqr(x['i1'] - 1)  + 0.5*sqr(x['i2'] - 4 );

Model ex003_1 / g1 , g2 , Def_Obj_1 / ;
Model ex003_2 / g1 , g2 , Def_Obj_2 / ;

Solve ex003_1 using NLP minimazing f1 ;
Solve ex003_2 using NLP minimazing f2 ;

Display f1.l ;
Display f2.l ;