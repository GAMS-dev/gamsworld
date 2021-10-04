* hs44.mod      QLR2-MN-4-10
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 114.

* Number of variables:  4
* Number of constraints:  10
* Objective nonseparable quadratic
* Objective nonconvex
* Linear constraints

Set I /1,2,3,4/;

Positive variable x[I] ;
Variable             f ;

Equation C1    ,
         C2    ,
         C3    ,
         C4    ,
         C5    ,
         C6    ,
         Defobj;

C1..       8 - x['1'] - 2 * x['2'] =g= 0;
C2..      12 - 4 * x['1'] - x['2'] =g= 0;
C3..      12 - 3 * x['1'] - 4 * x['2'] =g= 0;
C4..       8 - 2 * x['3'] - x['4'] =g= 0;
C5..       8 - x['3'] - 2 * x['4'] =g= 0;
C6..       5 - x['3'] - x['4'] =g= 0;

Defobj..   f =e= x['1'] - x['2'] - x['3'] - x['1'] *
                x['3'] + x['1'] * x['4'] +
                x['2'] * x['3'] - x['2'] * x['4']  ;
x.l['1']=0;
x.l['2']=0;
x.l['3']=0;
x.l['4']=0;

model hs44 /all/;
solve hs44 using nlp minimize f;

display f.l;
display x.l;
