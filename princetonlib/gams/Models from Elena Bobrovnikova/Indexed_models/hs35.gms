* hs35.mod      QLR2-MN-3-4
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 58.

* Number of variables:    3
* Number of constraints:  4
* Objective nonseparable convex quadratic
* Linear constraints
Set I /1,2,3/;
Positive variable x[I] ;
Variable             f ;
Equation Constr,
         Defobj;

Defobj..  f =e= 9 - 8*x['1']-6*x['2']-4*x['3']+2*x['1']*x['1']+2*x['2']*x['2']
                  + x['3']*x['3']+2*x['1']*x['2']+2*x['1']*x['3']            ;
Constr..
    3 =g= x['1'] + x['2'] + 2*x['3'];

    x.l['1']= 0.5;
    x.l['2']= 0.5;
    x.l['3']= 0.5;

model hs35 /all/;
solve hs35 using nlp minimize f;

display f.l;
display x.l;
