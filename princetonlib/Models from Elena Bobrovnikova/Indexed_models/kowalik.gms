* kowalik.mod   OBR2-AN-4-8
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Kowalik & Osborne problem, originally stated in

* J. R. Kowalik and M. R. Osborne, Methods for Unconstrained Minimization,
* American Elsevier, New York, 1968.

* but with modified b[i] values as specified in

* C. Jansson and O. Knueppel, "A Global Minimization Method: the Multi-
* Dimensional Case", Technische Informatik III, TU Hamburg-Hamburg, Jan. 1992.

* where the problem is called just "Kowalik".  The original formulation
* explicitly gives the b[i] values to three significant figures.

* Number of variables:  4
* Number of constraints:  8
* Objective nonconvex, nonseparable
* Simple bound constraints

* The global minimum is Fko = 3.07486*10e-4,
* x = (0.192833, 0.190836, 0.123117, 0.135766).

Set I /1*11/;
Set J /1*4/;
parameter  a[I] / 1 0.1957,2 0.1947,3 0.1735, 4 0.16  , 5 0.0844, 6 0.0627,
                  7 0.0456,8 0.0342,9 0.0323,10 0.0235,11 0.0246           /;
parameter  c[I] / 1 0.25, 2 0.5 ,3  1   ,4  2   , 5    4,
                  6 6   , 7 8   ,8 10   ,9 12   ,10   14, 11   16  /;
parameter  b[I]; b{I}= 1/c[i];

Positive Variable x[j]
Variable Fko;
Equation Defobj;
         Defobj..
Fko =e= sum{I,
        sqr(a[i]-x['1']*(sqr(b[i])+b[i]*x['2'])/(sqr(b[i])+b[i]*x['3']+x['4']))
           };
   x.up[j]= 0.42;
   x.l[j] = 0.42;
Model kowalik /all/;
Solve kowalik using nlp minimize Fko;
display Fko.l;
