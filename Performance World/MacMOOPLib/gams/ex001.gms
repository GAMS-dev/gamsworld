* ex001.mod
* Original AMPL coding by Sven Leyffer, University of Dundee
*
* A simple multi-objective optimization problem due to
* I. Das and J.E. Dennis, " {A closer look at drawbacks of
* minimizing weighted sums of objectives for Pareto set
* generation in multicriteria optimization problems,
* Dept. of CAAM Tech. Report, TR-96-36, Rice University, 1996.

* ... sets & parameters
Set I / i1*i5 / ;
* ... dimension of the problem

Variables  x[I] ,
           f1   ,
           f2   ;

Equation  c1        ,
          c2        ,
          c3        ,
          Def_obj_1 ,
          Def_obj_2 ;



c1.. x['i1'] + 2*x['i2'] - x['i3'] - 0.5*x['i4'] + x['i5'] =e= 2;

c2.. 4*x['i1'] - 2*x['i2'] + 0.8*x['i3'] + 0.6*x['i4'] + 0.5*x['i5']*x['i5'] =e= 0;

c3.. Sum{I,sqr( x[I])} =l= 10;

* ... objective functions
Def_obj_1..
     f1 =e= Sum{I,sqr(x[I]) };
Def_obj_2..
     f2 =e= 3*x['i1'] + 2*x['i2'] - x['i3']/3 +
                 0.01*power((x['i4'] - x['i5']),3);


Model ex001_1 / c1 , c2 , c3 , Def_Obj_1 / ;
Model ex001_2 / c1 , c2 , c3 , Def_Obj_2 / ;

Solve ex001_1 using NLP minimazing f1 ;
Solve ex001_2 using NLP minimazing f2 ;

Display f1.l ;
Display f2.l ;
