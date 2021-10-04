* Cute AMPL model  (translation to GAMS)
*
* hs106.mod     LQR2-MN-8-22
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Heat exchanger design

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 115.

* Number of variables: 8
* Number of constraints:  22
* Objective linear
* Nonlinear constraints

$Set N 8
Set i /i1*i%N%/;

parameter a ; a =        0.0025  ;
parameter b ; b =        0.01    ;
parameter c ; c =     833.3325   ;
parameter d ; d =     100        ;
parameter e ; e =   83333.33     ;
parameter f ; f =    1250        ;
parameter g ; g = 1250000        ;
parameter h ; h =    2500        ;

Variable x[i] ,   obj ;
Equation   c1 ,c2 ,c3 ,c4 ,c5 ,c6 ,Def_obj ;

c1..      1                 - a * (x['i4'] + x['i6'])                  =g= 0;
c2..      1                 - a * (x['i5'] + x['i7'] - x['i4'])        =g= 0;
c3..      1                 - b * (x['i8'] - x['i5'])                  =g= 0;
c4..      x['i1'] * x['i6'] - c * x['i4'] - d * x['i1'] + e            =g= 0;
c5..      x['i2'] * x['i7'] - f * x['i5'] - x['i2']*x['i4'] + f*x['i4']=g= 0;
c6..      x['i3'] * x['i8'] - g - x['i3'] * x['i5'] + h * x['i5']      =g= 0;
Def_obj.. obj =e= x['i1'] + x['i2'] + x['i3'];

x.lo['i1'] =  100 ;   x.up['i1'] = 10000 ;

x.lo['i2'] = 1000 ;   x.up['i2'] = 10000 ;
x.lo['i3'] = 1000 ;   x.up['i3'] = 10000 ;

x.lo['i4'] =   10 ;   x.up['i4'] =  1000 ;
x.lo['i5'] =   10 ;   x.up['i5'] =  1000 ;
x.lo['i6'] =   10 ;   x.up['i6'] =  1000 ;
x.lo['i7'] =   10 ;   x.up['i7'] =  1000 ;
x.lo['i8'] =   10 ;   x.up['i8'] =  1000 ;

x.l['i1'] = 5000 ;
x.l['i2'] = 5000 ;
x.l['i3'] = 5000 ;
x.l['i4'] =  200 ;
x.l['i5'] =  350 ;
x.l['i6'] =  150 ;
x.l['i7'] =  225 ;
x.l['i8'] =  425 ;

*printf "optimal solution as starting point \n";
*var x :=
*    1  579.3167
*    2  1359.943
*    3  5110.071
*    4  182.0174
*    5  295.5985
*    6  217.9799
*    7  286.4162
*    8  395.5979
*   ;

Model hs106  /all/;

Solve hs106 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l - 7049.330923 ;
display obj.l               ;
