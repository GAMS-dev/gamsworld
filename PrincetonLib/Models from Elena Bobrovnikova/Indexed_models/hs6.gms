* hs6.mod               QQR2-RN-2-1
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 29.

* Number of variables: 2
* Number of constraints: 1
* Objective quadratic
* Nonlinear constraint

Set I /1,2/;
Variable x[I] ,
            f ;

Equation Constr,
         Defobj;

Defobj.. f=e=sqr(1-x['1']);
Constr.. 10*(x['2']-sqr(x['1'])) =e= 0;

x.l['1']= -1.2 ;
x.l['2']=  1   ;

model hs6 /all/;
solve hs6 using nlp minimize f;
display f.l;
display x.l;
