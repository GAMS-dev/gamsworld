* Cute AMPL model  (translation to GAMS)
*
* hs116.mod     LQR2-MN-13-41
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* 3-stage membrane separation

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 124.

* Number of variables: 13
* Number of constraints: 41
* Objective linear
* Nonlinear constraints

$Set N 13
Set i /i1*i%N%/;

parameter a ; a = 0.002    ;
parameter b ; b = 1.262626 ;
parameter c ; c = 1.231059 ;
parameter d ; d = 0.03475  ;
parameter e ; e = 0.975    ;
parameter f ; f = 0.00975  ;


Positive Variable x(i) ;
Variable obj  ;
Equation c1  , c2  ,  c3 , c4 , c5 ,
         c6  , c7  ,  c8 , c9 ,c10 ,
         c11 , c12 , c13 ,c14 ,c15 , Def_obj ;


 c1.. x['i3'] - x['i2']                                                  =g= 0;
 c2.. x['i2'] - x['i1']                                                  =g= 0;
 c3.. 1 - a * x['i7'] + a * x['i8']                                      =g= 0;
 c4.. x['i11'] + x['i12'] + x['i13']                                    =g= 50;
 c5.. x['i13'] - b * x['i10'] + c * x['i3'] * x['i10']                   =g= 0;
 c6.. x['i5'] - d * x['i2'] - e * x['i2'] * x['i5'] + f * sqr(x['i2'])   =g= 0;
 c7.. x['i6'] - d * x['i3'] - e * x['i3'] * x['i6'] + f * sqr(x['i3'])   =g= 0;
 c8.. x['i4'] - d * x['i1'] - e * x['i1'] * x['i4'] + f * sqr(x['i1'])   =g= 0;
 c9.. x['i12'] - b * x['i9'] + c * x['i2'] * x['i9']                     =g= 0;
c10.. x['i11'] - b * x['i8'] + c * x['i1'] * x['i8']                     =g= 0;
c11.. x['i5'] * x['i7'] - x['i1'] * x['i8'] - x['i4'] * x['i7'] +
                                                       x['i4'] * x['i8'] =g= 0;
c12.. 1 - a * (x['i2'] * x['i9'] + x['i5'] * x['i8'] - x['i1'] * x['i8']-
                                   x['i6'] * x['i9']) -x['i5'] - x['i6'] =g= 0;
c13.. x['i2'] * x['i9'] - x['i3'] * x['i10'] - x['i6'] * x['i9'] -
                        500 * x['i2']+ 500 * x['i6'] + x['i2']* x['i10'] =g= 0;
c14.. x['i2'] - 0.9 - a * (x['i2'] * x['i10'] - x['i3'] * x['i10'])      =g= 0;
c15.. x['i11'] + x['i12'] + x['i13']                                     =l=250;

Def_obj.. obj=e=x['i11'] + x['i12'] + x['i13'];

 x.lo['i1'] =    0.1   ;  x.up['i1'] =  1    ;
 x.lo['i2'] =    0.1   ;  x.up['i2'] =  1    ;
 x.lo['i3'] =    0.1   ;  x.up['i3'] =  1    ;
 x.lo['i4'] =    0.0001;  x.up['i4'] =  0.1  ;
 x.lo['i5'] =    0.1   ;  x.up['i5'] =  0.9  ;
 x.lo['i6'] =    0.1   ;  x.up['i6'] =  0.9  ;
 x.lo['i7'] =    0.1   ;  x.up['i7'] =  1000 ;
 x.lo['i8'] =    0.1   ;  x.up['i8'] =  1000 ;
 x.lo['i9'] =  500     ;  x.up['i9'] =  1000 ;
x.lo['i10'] =    0.1   ; x.up['i10'] =   500 ;
x.lo['i11'] =    1     ; x.up['i11'] =   150 ;
x.lo['i12'] =    0.0001; x.up['i12'] =   150 ;
x.lo['i13'] =    0.0001; x.up['i13'] =   150 ;

 x.l['i1'] =     0.5  ;
 x.l['i2'] =     0.8  ;
 x.l['i3'] =     0.9  ;
 x.l['i4'] =     0.1  ;
 x.l['i5'] =     0.14 ;
 x.l['i6'] =     0.5  ;
 x.l['i7'] =   489    ;
 x.l['i8'] =    80    ;
 x.l['i9'] =   650    ;
x.l['i10'] =   450    ;
x.l['i11'] =   150    ;
x.l['i12'] =   150    ;
x.l['i13'] =   150    ;

Model hs116 /all/;

Solve hs116 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l -97.588409    ;
display obj.l               ;
