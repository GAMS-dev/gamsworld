* Cute AMPL model  (translation to GAMS)
*
* hs114.mod     QOR2-MY-10-31
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell Labs).

* Alkylation process

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 123.

* Number of variables:  10
* Number of constraints:  31
* Objective separable
* Objective nonconvex
* Nonlinear constraints

$Set N 10
Set i /i1*i%N%/;


Parameter
  lb(i) /i1  0.00001, i2  0.00001, i3  0.00001 , i4  0.00001,  i5   0.00001 ,
         i6 85      , i7 90      , i8  3       , i9  1.2    , i10 145       / ;
Parameter
  ub(i) /i1  2000   , i2  16000  , i3  120     , i4  5000   ,  i5  2000     ,
         i6  93     , i7  95     , i8   12     , i9     4   , i10   162     / ;
Parameter
  x0(i) /i1 1745    , i2 12000   , i3  110     , i4  3048   ,  i5  1974     ,
         i6   89.2  , i7    92.8 , i8    8     , i9     3.6 , i10   145     / ;

parameter a ; a= .99 ;
parameter b ; b= .9  ;

Variable x(i) ,  G1 , G2 , G5 , G6 , obj ;

Equation add_1      ,
         add_2      ,
         add_3      ,
         add_4      ,
         g_small_3  ,
         g_small_4  ,
         g_small_7  ,
         g_small_8  ,
         g_small_9  ,
         g_small_10 ,
         g_small_11 , Def_obj ;

add_1.. G1 =e=  35.82     - .222*x['i10']       - b*x['i9'];
add_2.. G2 =e= -133       + 3*x['i7']           - a*x['i10'];
add_3.. G5 =e=  1.12*x['i1'] + .13167*x['i1']*x['i8'] - .00667*x['i1']*sqr(x['i8']) - a*x['i4']   ;
add_4.. G6 =e=  57.425    + 1.098*x['i8']       - .038*sqr(x['i8'])     + .325*x['i6'] - a*x['i7'];

 g_small_3.. -G1 + x['i9']*(1/b - b)  =g= 0;
 g_small_4.. -G2 + (1/a - a)*x['i10'] =g= 0;
 g_small_7.. -G5 + (1/a - a)*x['i4']  =g= 0;
 g_small_8.. -G6 + (1/a - a)*x['i7']  =g= 0;
 g_small_9.. 1.22*x['i4'] - x['i1'] - x['i5'] =e= 0;
g_small_10.. 98000*x['i3']/(x['i4']*x['i9'] + 1000*x['i3']) - x['i6'] =e= 0;
g_small_11.. (x['i2'] + x['i5'])/x['i1'] - x['i8'] =e= 0;

Def_obj.. obj =e= 5.04*x['i1'] + .035*x['i2'] + 10*x['i3'] + 3.36*x['i5'] - .063*x['i4']*x['i7'];

G1.lo = 0 ;
G2.lo = 0 ;
G5.lo = 0 ;
G6.lo = 0 ;

x.up(i) = ub(i) ;
x.lo(i) = lb(i) ;

Model hs114  /all/;

Solve hs114 using nlp minimize obj;

display   x.l               ;

obj.l = obj.l +1768.80696   ;
display obj.l               ;
