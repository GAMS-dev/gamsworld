* griewank.mod  OBR2-AN-2-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, p. 47 (problem "G2").

* Number of variables:  2
* Number of constraints:  4
* Objective nonconvex, noseparable
* Simple bound constraints

* The global minimum is Fgre = 0, x = (0,0). There are lots of local minima.

Set i /1*2/;

variable x[i],Fgre;

x.lo[i] = -100;
x.up[i] =  100;

equation defobj;
defobj..  Fgre=e=(sqr(x['1'])+sqr(x['2']))/200-cos(x['1'])*cos(x['2']/
                                                               sqrt(2))+1;
model griewank /all/;
solve griewank usinf nlp minimize Fgre ;

display Fgre.l
display x.l;
