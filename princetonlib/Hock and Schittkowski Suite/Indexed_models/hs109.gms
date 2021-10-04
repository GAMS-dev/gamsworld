* hs109.mod    OOR2-MY-9-26
* Original AMPL coding by Elena Bobrovnikova (summer 1996 at Bell jLabs).

* Ref.: W. Hock and K. Schittkowski, Test Examples for Nonlinear Programming
* Codes.  Lecture Notes in Economics and Mathematical Systems, v. 187,
* Springer-Verlag, New York, 1981, p. 118.

* Number of variables:  9
* Number of constraints:  26
* Objective separable
* Objective nonconvex
* Nonlinear constraints

$Set N 9
Set i/i1*i%N%/;

Parameter  a ;  a = 50.176 ;
Parameter b1 ; b1 =  0.25  ;

Parameter b ;  b = sin(b1) ;
Parameter c ;  c = cos(b1) ;

Parameter  l(i) ;
Parameter  u(i) ;

l['i1'] =    0.0  ;
l['i2'] =    0.0  ;
l['i3'] =   -0.55 ;
l['i4'] =   -0.55 ;
l['i5'] =  196.0  ;
l['i6'] =  196.0  ;
l['i7'] =  196.0  ;
l['i8'] = -400.0  ;
l['i9'] = -400.0  ;

u['i1'] =1000000  ;
u['i2'] =1000000  ;
u['i3'] =   0.55  ;
u['i4'] =   0.55  ;
u['i5'] = 252.0   ;
u['i6'] = 252.0   ;
u['i7'] = 252.0   ;
u['i8'] = 800.0   ;
u['i9'] = 800.0   ;

Variable x(i) , obj ;

Equation c1   , c2   , c3   , c4   , c5   ,
         c6   , c7   , c8   , c9   , c10  , Def_obj ;

  C1.. x['i4'] - x['i3'] + .55  =g=  0;
  C2.. x['i3'] - x['i4'] + .55  =g=  0;
  C3.. 2250000 - sqr(x['i1']) - sqr(x['i8'])  =g=  0;
  C4.. 2250000 - sqr(x['i2']) - sqr(x['i9'])  =g=  0;

  C5.. x['i5'] * x['i6'] * sin(-x['i3'] - .25) + x['i5'] * x['i7'] * sin(-x['i4']           - .25) +
                                                          2 * b * sqr(x['i5']) - a * x['i1'] + 400 * a =e= 0;
  C6.. x['i5'] * x['i6'] * sin( x['i3'] - .25) + x['i6'] * x['i7'] * sin( x['i3'] - x['i4'] - .25) +
                                                          2 * b * sqr(x['i6']) - a * x['i2'] + 400 * a =e= 0;
  C7.. x['i5'] * x['i7'] * sin( x['i4'] - .25) + x['i6'] * x['i7'] * sin( x['i4'] - x['i3'] - .25) +
                                                          2 * b * sqr(x['i7']) + 881.779 * a =e= 0;
  C8.. a * x['i8'] + x['i5'] * x['i6'] * cos(-x['i3'] - .25) + x['i5'] * x['i7'] * cos(-x['i4']           - .25) -
                                200 * a - 2 * c * sqr(x['i5']) + .7533e-3 * a * sqr(x['i5']) =e= 0;
  C9.. a * x['i9'] + x['i5'] * x['i6'] * cos( x['i3'] - .25) + x['i6'] * x['i7'] * cos( x['i3'] - x['i4'] - .25) -
                                 2 * c * sqr(x['i6']) + .7533e-3 * a * sqr(x['i6']) - 200 * a =e=0;
C10.. x['i5'] * x['i7'] * cos(x['i4'] - .25) + x['i6'] * x['i7'] * cos(x['i4'] - x['i3'] - .25) -
                            2 * c * sqr(x['i7']) + 22.938 * a + .7533e-3 * a * sqr(x['i7'])  =e= 0;

Def_obj.. obj=e= 3 * x['i1'] + 1e-6 * power(x['i1'],3) + 2 * x['i2'] + .522074e-6 * power(x['i2'],3);

x.lo[i] = l(i); x.up[i] = u(i);

x.l[i] = 0;

*"optimal solution as starting point ";

*x.fx['i1'] =   674.8881    ;
*x.fx['i2'] =  1134.170     ;
*x.fx['i3'] =     0.1335691 ;
*x.fx['i4'] =    -0.3711526 ;
*x.fx['i5'] =   252.0       ;
*x.fx['i6'] =   252.0       ;
*x.fx['i7'] =   201.465     ;
*x.fx['i8'] =   426.661     ;
*x.fx['i9'] =   368.494     ;

Model hs109 /all/ ;

Solve hs109 using nlp minimazing obj ;

obj.l = obj.l - 5362.06928;

display obj.l;
