* levy3.mod     OBR2-AN-2-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, pp. 71-72 (problem "whs4").

* Levy function No. 3

* Number of variables:  2
* Number pf constraints:  4
* Objective separable
* Objective nonconvex
* Simple bound constraints

* Note: there is a mistake in the values of global minima in the Ref.

* There are lots of local minima in the domain.
Set I /1*2/;
Set J /1*5/;

Variable x[I],
         Flevy;
Equation Defobj;

Defobj..  Flevy=e= -prod{i,sum{j,(ord(j)*cos{(ord(j)+1)*x[i]+ord(j)})}};

x.lo[I] = -10;
x.up[I] =  10;
x.l['1']=  4.976;
x.l['2']=  4.976;

Model levy3 /all/;
Solve  levy3  using nlp minimize Flevy;
display Flevy.l;
