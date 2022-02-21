* schwefel.mod  OBR2-AN-5-10
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, p. 103 (problem "whs25").

* Schwefel function

* Number of variables:  5
* Number of constraints:  10
* Objective separable convex
* Simple bound constraints

* The global minimum is Fs = 0, x = (0,0,0,0,0).

SET  i /1*5/;

Variable x[i],
         Fs  ;
Equation Defobj;
Defobj.. Fs=e= sum{I,power{x[i],10}};

x.lo[I] = -0.5;
x.up[I] =  0.4;
x.l[I]  =  0.4;

Model schwefel /all/;
Solve schwefel  using nlp minimize Fs;
display Fs.l;
