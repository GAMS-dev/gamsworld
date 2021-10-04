* gold.mod      OBR2-AN-2-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, p. 37 (problem "GP").

* Goldstein-Price function

* Number of variables:  2
* Number of constraints:  4
* Objective nonseparable
* Objective nonconvex
* Simple bound constraints

* The global minimum is Fgold = 3, x = (0,-1).

Set i /1*2/;

variable x[i],Fgold;

x.lo[i] = -2;
x.up[i] = 2;
******  answers are
* x.fx['1']=-8.45262e-12  ;
* x.fx['2']=-1            ;

equation defobj;

defobj.. Fgold=e=(1 +  sqr(x['1'] + x['2'] + 1)
        * (19-14*x['1']+3*sqr(x['1'])-14*x['2']+6*x['1']*x['2']+3*sqr(x['2'])))
        * (30 + sqr(2*x['1'] - 3*x['2'])
        * (18 - 32*x['1'] + 12*sqr(x['1']) + 48*x['2'] - 36*x['1']*x['2']
        +  27*sqr(x['2'])));

x.L['1'] = 0.5;
x.L['2'] = -0.5;
model gold /all/;
solve gold using dnlp minimize Fgold;
display Fgold.l;
display x.l;
