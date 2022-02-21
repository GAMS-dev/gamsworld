* branin.mod OBR2-AN-2-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, p. 35 (problem "BR").

* Number of variables: 2
* Number of constraints:  4
* Objective nonseparable, nonconvex
* Simple bound constraints

* There are 3 global minima with Fbr = 0.397887: (-pi,12.275),
* (pi,2.275), (3*pi,2.475).

parameter pi; pi = 4*arctan(1);
set i /1*2/;

variable   x[i],
            fbr;
equation   defobj;

defobj.. Fbr=e=sqr(x['2']-5.1*sqr(x['1'])/(4*pi*pi)+5*x['1']/pi-6)
               + 10*(1-1/(8*pi))*cos(x['1'])+10;

x.lo['1'] =-5;
x.up['1'] =10;
x.lo['2'] = 0;
x.up['2'] =15;

model branin /all/;
solve branin using nlp minimaze fbr

display Fbr.l;
display x.l;
