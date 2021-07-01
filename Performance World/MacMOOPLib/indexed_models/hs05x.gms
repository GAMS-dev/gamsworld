* hs05x.mod
* AMPL coding by Sven Leyffer, University of Dundee.
*
* A simple multi-objective optimization problem (MOOP)
* constructed from Hock-Schittkowsky models hs051-hs053
*# of Bob Vanderbei's cute-ampl collection.

* ... sets & parameters
Set I / i1*i5 /;

* ... variables
Variable x[I] ,
         f1   ,
         f2   ,
         f3   ;

Equation c1        ,
         c2        ,
         c3        ,
         Def_Obj_1 ,
         Def_Obj_2 ,
         Def_Obj_3 ;

c1.. x['i1'] + 3*x['i2']             =e= 4 ;
c2.. x['i3'] +   x['i4'] - 2*x['i5'] =e= 0 ;
c3.. x['i2'] -   x['i5']             =e= 0 ;
* ... objective functions
Def_Obj_1..
    f1 =e= sqr(  x['i1']-x['i2']) + sqr(x['i2']+x['i3']-2) +
           sqr(2*x['i4']-1)       + sqr(  x['i5']-1)         ;
Def_Obj_2..
    f2 =e= sqr(4*x['i1']-x['i2']) + sqr(x['i2']-x['i3']-2) +
           sqr(  x['i4']-1)       + sqr(3*x['i5']-1)         ;
Def_Obj_3..
    f3 =e= sqr(  x['i1']+x['i2']) + sqr(x['i2']+x['i3']+2) +
           sqr(  x['i4']+1)       + sqr(  x['i5']+1)         ;


x.lo[I] = -10 ;
x.up[I] =  10 ;


Model hs05x_1 / c1 , c2 , c3 , Def_Obj_1 / ;
Model hs05x_2 / c1 , c2 , c3 , Def_Obj_2 / ;
Model hs05x_3 / c1 , c2 , c3 , Def_Obj_3 / ;

Solve hs05x_1 using NLP minimazing f1 ;
Solve hs05x_2 using NLP minimazing f2 ;
Solve hs05x_3 using NLP minimazing f3 ;


Display f1.l ;
Display f2.l ;
Display f3.l ;

