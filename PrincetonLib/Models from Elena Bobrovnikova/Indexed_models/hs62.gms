* hs62.mod      OLR2-MY-3-7
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 64.

* Number of variables:  3
* Number of constraints:  7
* Objective nonseparable
* Objective nonconvex
* Linear constraints

Set I /1*3/;

Variable x[I],
         Obj ;
Equation simplex,
         Defobj ;

Defobj.. Obj =e=
         -32.174 * (255 * log((x['1'] + x['2'] + x['3'] + 0.03) /
         (0.09 * x['1'] + x['2'] + x['3'] + 0.03))
         + 280 * log((x['2'] + x['3'] + 0.03) / (0.07 * x['2'] + x['3'] +0.03))
         + 290 * log((x['3'] + 0.03) / (0.13 * x['3'] +0.03)));

simplex..
     x['1'] + x['2'] + x['3'] =e= 1;

x.lo[I]=0 ; x.up[I]=1 ;

x.l['1']=0.7;
x.l['2']=0.2;
x.l['3']=0.1;

model hs62 /all/;
solve hs62 using nlp minimize Obj;

display Obj.l;
display x.l;
