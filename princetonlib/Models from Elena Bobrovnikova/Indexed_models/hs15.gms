* hs15.mod      OQR2-MN-2-3
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 38.

* Number of variables:  2
* Number of constraints:  3
* Objective nonseparable
* Objective nonconvex
* Nonlinear constraints

Set I /1,2/;

Variable x[I]  ,
         Obj   ;
Equation Ineq1 ,
         Ineq2 ,
         defobj;

defobj.. Obj=e=100*sqr(x['2']-sqr(x['1']))+sqr(1-x['1']);

Ineq1..          x['1']*x['2'] - 1 =g= 0;
Ineq2.. x['1'] + x['2']*x['2']     =g= 0;

    x.up['1'] =    0.5;
    x.l['1']  =    0.4;
    x.l['2']  =    1.5;

model hs15 /all/;
solve hs15 using nlp minimize Obj;

display Obj.l;
display x.l;
