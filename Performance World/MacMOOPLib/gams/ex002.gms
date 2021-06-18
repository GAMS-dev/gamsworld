* ex002.mod
* Original AMPL coding by Sven Leyffer, University of Dundee
*
* A simple multi-objective optimization problem due to
* Jing-Fang Wang and John E. Renaud, Dept. Aerospace & Mech. Engng.
* University of Notre Dame, "Automatic differentiation in multi-
* objective collaborative optimization".
* Proceedings of the 3rd WCSMO, 1999.
*
* NB: Mistake in paper; g2 should be y21 <= 10 (not >= 10)

* ... sets & parameters

* ... dimension of the problem
Set I / i1*i3 / ;

* ... lower bounds
Parameter xl[I] ;  xl[I] =  0.0 ;
* ... upper bounds
Parameter xu[I] ;  xu[I] = 10.0 ;

Variables x[I] ,
          y12  ,
          y21  ,
          f1   ,
          f2   ;

Equation def_y12   ,
         def_y21   ,
         Def_Obj_1 ,
         Def_Obj_2 ;

* ... constraints

def_y12..
    y12 =e= sqr(x['i1']) + x['i2'] + x['i3'] - 0.2*y21;
def_y21..
    y21 =e= x['i1'] + x['i3'] + sqrt(y12);
* ... objective functions
Def_Obj_1..
    f1 =e= sqr(x['i2']) + x['i3'] + y12;
Def_Obj_2..
    f2 =e= - y21 ;

* ... data statement & start points
x.fx['i1'] = 10.0 ;
x.lo[I] = xl[I] ;
x.up[I] = xu[I] ;
y12.lo =  8 ;
y21.up = 10 ;

Model ex002_1 / def_y12 , def_y21 , Def_Obj_1 / ;
Model ex002_2 / def_y12 , def_y21 , Def_Obj_2 / ;

Solve ex002_1 using NLP minimazing f1 ;
Solve ex002_2 using NLP minimazing f2 ;

Display f1.l ;
Display f2.l ;



