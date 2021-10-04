* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source:
*   B.N. Pshenichnyj
*   "The Linearization Method for Constrained Optimization",
*   Springer Verlag, SCM Series 22, Heidelberg, 1994

*   SIF input: Ph. Toint, December 1994.

*   classification OQR2-AN-2-3

$Set N  20
Set I  / i1*i%N% / ;

$Set M  2
Set j  / j1*j%M% / ;

Parameter  b[i] / i1      75.1963666677 , i2       -3.8112755343 ,
                  i3       0.1269366345 , i4       -0.0020567665 ,
                  i5       0.103450e-4  , i6       -6.8306567613 ,
                  i7       0.0302344793 , i8       -0.0012813448 ,
                  i9       0.352599e-4  , i10      -0.2266e-6    ,
                 i11       0.2564581253 , i12      -0.003460403  ,
                 i13       0.135139e-4  , i14      -28.1064434908,
                 i15      -0.52375e-5   , i16      -0.63e-8      ,
                 i17       0.7e-9       , i18       0.0003405462 ,
                 i19      -0.16638e-5   , i20      -2.8673112392 /;

Parameter  xinit[j] / j1 31 , j2 48 / ;

Variable x[j] , f ;

Equation cons3 , cons4 , cons5 ,  Def_obj ;

cons3.. x['j1']*    x['j2']  - 700.0   =g= 0;
cons4.. 0.008  *sqr(x['j1']) - x['j2'] =l= 0;
cons5.. 5      *    x['j1']  + 100*x['j2'] - sqr(x['j2']) - 2775 =l= 0;
Def_obj.. f =e= -b['i2']*x['j1'] - b['i6'] * x['j2'] - b['i1'] - (b['i3']*
                 power(x['j1'],2)  +  b['i4']*
                 power(x['j1'],3)  +  b['i5']*
                 power(x['j1'],4)  +  x['j2']*(b['i7']*x['j1']+b['i8']*
                 power(x['j1'],2)  +  b['i9']*
                 power(x['j1'],3)  +  b['i10']*
                 power(x['j1'],4)) +  b['i11']*
                 power(x['j2'],2)  +  b['i12']*
                 power(x['j2'],3)  +  b['i13']*
                 power(x['j2'],4)  +  b['i14']/
                           (1+x['j2']) + (b['i18']*x['j1'] + b['i15']*
                 power(x['j1'],2)  +  b['i16']*
                 power(x['j1'],3)) *
                 power(x['j2'],2)  + (b['i17']*
                 power(x['j1'],3)  +  b['i19']*x['j1'])*
                 power(x['j2'],3)  +  b['i20']*
                        exp(0.0005*x['j1']*x['j2']) );


 x.lo['j1'] =  0.0 ;
 x.up['j1'] = 75.0 ;
 x.lo['j2'] =  0.0 ;
 x.up['j2'] = 65.0 ;

x.l[j] = xinit[j]; ;

Model himmelp4 /all/ ;

Solve himmelp4 using nlp minimazing f ;

Display x.l ;
Display f.l ;
