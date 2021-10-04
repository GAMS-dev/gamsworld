* s324.mod      QQR2-AN-2-3
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: K. Schittkowski, More Test Examples for Nonlinear Programming Codes.
* Lecture Notes in Economics and Mathematical Systems, v. 282,
* Springer-Verlag, New York, 1987, p. 145.

* Number of variables:  2
* Number of constraints:  3
* Objective convex separable quadratic
* Quadratic constraints
Set I /1*2/;

Variable x[I], Obj;

Equation G1    ,
         G2    ,
         Defobj;

G1..     x['1']*x['2']           - 25 =g= 0;
G2..     sqr(x['1'])+sqr(x['2']) - 25 =g= 0;
Defobj.. Obj=e= 0.01 * sqr(x['1']) + sqr(x['2']);

x.l[I]    = 2;
x.lo['1'] = 2;

Model s324 /all/;
Solve s324 using nlp minimize Obj;

display Obj.l;
