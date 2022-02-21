* hs5.mod               OBR2-MN-2-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 28.

* Number of variables: 2
* Number of constraints:  4
* Objective nonseparable
* Objective nonconvex
* Simple bound constraints

Set I /1,2/;

Variable x[I] ,
            f ;
Equation Defobj;

Defobj..       f =e= sin(x['1']+x['2'])
                    +sqr((x['1']-x['2']))-1.5*x['1']+2.5*x['2']+1         ;

x.lo['1']= -1.5;
x.up['1']=  4.0;
x.lo['2']= -3.0;
x.up['2']=  3.0;

x.l['1']= 0;
x.l['2']= 0;

model hs5 /all/;
solve hs5 using nlp minimize f;
display f.l;
display x.l;
