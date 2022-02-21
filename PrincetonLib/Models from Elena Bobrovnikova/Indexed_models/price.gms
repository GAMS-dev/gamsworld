* price.mod     OBR2-AN-2-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, p. 69 (problem "P").

* Price function

* Number of variables: 2
* Number of constraints: 4
* Objective nonseparable, nonconvex
* Simple bound constraints

* There are three global minima with Fprice = 0. x = (0,0), x = (2,4) and
* x = (1.464352,-2.506012).

Set j/1*2/;

Variable x[j],
         Fprice;
Equation Defobj;
         Defobj..    Fprice=e=sqr(2*power(x['1'],3)*x['2']-power(x['2'],3))+
                              sqr(6*x['1']-sqr(x['2'])+x['2']);
x.lo[j]  = -10.0;
x.up[j]  =  10.0;
x.l['1'] =      1;
x.l['2'] =      1;


Model price /all/;
Solve price using nlp minimize Fprice;

display Fprice.l;
