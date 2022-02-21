* chi.mod OBR2-AN-2-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: C. Jansson and O. Knueppel, "A Global Minimization Method:
* the Multi-Dimensional Case", Technische Informatik III,
* TU Hamburg-Hamburg, Jan. 1992, p. 67 (problem "Chi").

* Chichinadze function

* Number of variables: 2
* Number of constraints: 4
* Objective separable
* Objective nonconvex
* Simple bound constraints

* The global minimum is Fchi = -43.31586207 at x = (5.90133,0.5).
set i /1*2/;
parameter pi; pi= 4*arctan(1);
variable
     x[i],Fchi;
equation
 defobj;
 defobj..
Fchi=e=sqr(x['1']) - 12*x['1'] + 11 + 10*cos(pi*x['1']/2)
        + 8*sin(pi*5*x['1']) - exp(-sqr(x['2'] - .5)/2)/sqrt(5);

x.lo['1']=-30 ;
x.up['1']= 30 ;
x.lo['2']=-30 ;
x.up['2']= 30 ;

***** Local  minimun  **************
* x.fx['1']=           -0.900869 ;
* x.fx['2']=            0.5      ;
***** Global minimun  **************
* x.fx['1']=            5.90133  ;
* x.fx['2']=            0.5      ;


model chi /all/;
solve chi using nlp minimize Fchi;

display Fchi.l;
