* powell.mod    OBR2-AY-4-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Original reference:
* M. J. D. Powell, "An Iterative Method for Finding Stationary Values
* of a Function of Several Variables", Computer J., v. 5, 1962, pp. 147-151.

* Bounds as in

* C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, pp. 99-100 (problem "whs23").

* Powell's singular function

* Number of variables: 4
* Number of constraints:  4
* Objective group partially separable, nonconvex
* Simple bound constraints
* The global minimum is Fpow = 0 at x* = (0,0,0,0).

* Note: The Hessian of the objective is singular at x*.

Set j /1*4/;

Variable x[j],
         Fpow;
Equation Defobj;
         Defobj..

Fpow =e= sqr(x['1']+10*x['2'])+5*sqr(x['3']-x['4'])+power((x['2']-
         2*x['3']),4)+10*power((x['1']-x['4']),4)                ;

x.lo[j]  = -4.0  ;
x.up[j]  =  5.0  ;

x.l['1'] =  3.0  ;
x.l['2'] = -1.0  ;
x.l['3'] =  0.0  ;
x.l['4'] =  1.0  ;


Model powell /all/;
Solve powell using nlp minimize Fpow;

display Fpow.l;
