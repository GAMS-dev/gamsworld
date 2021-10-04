* hs23.mod      QQR2-MN-2-9
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 46.

* Number of variables:  2
* Number of constraints:  9
* Objective convex separable quadratic
* Nonlinear constraints
Set I /1,2/;

Variable x[I],
            f;
Equation C1    ,
         C2    ,
         C3    ,
         C4    ,
         C5    ,
         defobj;

C1..      x['1'] + x['2'] - 1                       =g= 0;
C2..      x['1'] * x['1'] + x['2'] * x['2'] - 1     =g= 0;
C3..      9 * x['1'] * x['1'] + x['2'] * x['2'] - 9 =g= 0;
C4..      x['1'] * x['1'] - x['2']                  =g= 0;
C5..      x['2'] * x['2'] - x['1']                  =g= 0;
defobj..  f =e= x['1'] * x['1'] + x['2'] * x['2'];

    x.lo[I] = -50;
    x.up[I] =  50;
    x.l['1']=   3;
    x.l['2']=   1;

model hs23 /all/;
solve hs23 using nlp minimize f;

display f.l;
display x.l;
