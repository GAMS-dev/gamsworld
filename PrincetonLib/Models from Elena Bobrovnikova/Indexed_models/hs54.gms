* hs54.mod      OLR2-MN-6-13
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 77.

* Number of variables:  6
* Number of constraints:  13
* Objective nonseparable
* Objective nonconvex
* Linear constraints

* There is apparently a mistake in the formulation in the book which we
* corrected by substituting 6.4E+7 by 6.4E+13 in h(x). The correct result
* is different from the solution of the book.
Set I /1*6/;

Variable x[I],
         h   ,
         Obj ;
Equation
Def_h ,
C1    ,
Defobj;

Def_h..  h =e= ( sqr(x['1'] - 1E+6) /   6.4E+13+(x['1']-1E+4)*(x['2']-1)/2E+4 +
                 sqr(x['2'] - 1))   *   sqr(x['3'] - 2E+6) / (0.96*4.9E+13)   +
                 sqr(x['4'] - 10)   /   2.5E+3 + sqr(x['5'] - 1E-3)/2.5E-3    +
                 sqr(x['6'] - 1E+8) /   2.5E+17                               ;
C1..     x['1'] + 4E+3 * x['2'] - 1.76E+4 =e= 0;
Defobj.. Obj =e= -exp(-h/2);

x.lo['1']=    0; x.up['1']=  2E+4 ;
x.lo['2']= -1.0; x.up['2']=  1    ;
x.lo['3']=    0; x.up['3']=  5E+6 ;
x.lo['4']=    0; x.up['4']=  10   ;
x.lo['5']= -1.0; x.up['5']=  1    ;
x.lo['6']=    0; x.up['6']=  6E+7 ;

h.lo=    0; h.up=  1 ;

    x.l['1']=   2E+4 ;
    x.l['2']=   10   ;
    x.l['3']=   1E+7 ;
    x.l['4']=   20   ;
    x.l['5']=   1    ;
    x.l['6']=   2E+8 ;
*****      SOLUTION  ***************
*x.fx['1']=           14050.3      ;
*x.fx['2']=               0.887423 ;
*x.fx['3']=         4996920        ;
*x.fx['4']=              10        ;
*x.fx['5']=               0.001    ;
*x.fx['6']=        59912600        ;
************************************

model hs54 /all/;
solve hs54 using nlp minimize Obj;
display Obj.l;
display x.l  ;
display h.l  ;
