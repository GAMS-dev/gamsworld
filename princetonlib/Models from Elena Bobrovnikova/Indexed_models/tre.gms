*  tre.mod             OBR2-AN-2-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: C.Jansson and O.Knuppel. A global minimization method: the multi-
* dimensional case. Technische Informatik III, TU Hamburg-Hamburg, Jan.1992.

* Treccani function

* Number of variables: 2
* Number of constraints: 4
* Objective separable
* Objective nonconvex
* Simple bound constraints

* The global minimum is Ftre = 0, x = (0,0).
* There are saddle points at (-1,0) and (-2,0).

Set j /1*2/;

Variable x[j],
         Ftre;

Equation Defobj;
         Defobj..

Ftre=e=power(x['1'],4)+4*power(x['1'],3)+4*power(x['1'],2)+power(x['2'],2);

    x.lo[j]=  -5.0;
    x.up[j]=   5.0;

*   starting point
    x.l['1']=  -1.1;
    x.l['2']=   0.1;

Model tre /all/;
Solve tre using nlp minimize Ftre;

display Ftre.l;
