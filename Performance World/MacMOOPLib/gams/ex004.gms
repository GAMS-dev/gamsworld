* ex004.mod
* Original AMPL coding by Sven Leyffer, University of Dundee
*
* A simple multi-objective optimization problem due to
* SLC Oliveira & PAV Ferreira, Bi-objective optimization
* with multiple decision-makers: a convex approach to attain
* majority solutions, JORS, 51, 333-340, 2000.

* ... sets & parameters
Set I / i1 , i2 / ;
* ... dimension of the problem

Positive Variables x[I] ;
         Variables f1 ,
                   f2 ;

Equation c1        ,
         c2        ,
         c3        ,
         Def_Obj_1 ,
         Def_Obj_2 ;

c1.. 2*x['i1'] + 3*x['i2'] =g=  6 ;

c2.. 2*x['i1'] + 3*x['i2'] =l= 12 ;

c3..   x['i2'] =l= 2;

* ... objective functions
Def_Obj_1..
f1 =e= x['i1'] + 2 ;

Def_Obj_2..
f2 =e= exp( x['i2'] ) + 1 ;


Model ex004_1 / c1 , c2 , c3 , Def_Obj_1 / ;
Model ex004_2 / c1 , c2 , c3 , Def_Obj_2 / ;

Solve ex004_1 using LP minimazing f1 ;
Solve ex004_2 using NLP minimazing f2 ;

Display f1.l ;
Display f2.l ;