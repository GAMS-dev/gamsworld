* hs8.mod               CQR2-RN-2-2
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 31.

* Number of variables: 2
* Number of constraints: 2
* Objective constant
* Nonlinear constraints

Set I /1*2/;

Variable x[I]   ,
         f      ;
Equation C1     ,
         C2     ,
         Defobj ;

Defobj..  f =e= -1;
C1..      x['1']*x['1'] + x['2']*x['2'] =e= 25;
C2..      x['1']*x['2'] =e= 9;

f.l     =   -1  ;
x.l['1']=    2  ;
x.l['2']=    1  ;

model hs8 /all/;
solve hs8 using nlp minimize f;

display f.l;
display x.l;
