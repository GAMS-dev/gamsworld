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

*   Source: problem 32 in
*   D.H. Himmelblau,
*   "Applied nonlinear programming",
*   McGraw-Hill, New-York, 1972.

*   See Buckley*76 (p. 66)

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-4-0

$Set M  7
Set j  / j1*j%M% / ;

$Set N  4
Set I  / i1*i%N% / ;

Parameter  a[j] /j1  0.0      , j2  0.000428 , j3  0.001000 ,
                 j4  0.001610 , j5  0.002090 , j6  0.003480 , j7  0.005250 / ;

Parameter  b[j] /j1  7.391 , j2  11.18 , j3  16.44,
                 j4  16.20 , j5  22.20 , j6  24.02,j7  31.32 /;

Parameter  x_init[i] /i1 2.7 , i2 90.0 , i3 1500.0 , i4 10.0 /;

Variable x[i] ,  f ;

Equation  Def_obj ;

Def_obj..
f =e= 10000*sum{j, sqr(-1 + (sqr(x['i1'])+
                           a[j]*sqr(x['i2'])+
                                sqr(a[j])*sqr(x['i3']))/
                                      (b[j]*(1+a[j]*sqr(x['i4']))))} ;

x.l[i] = x_init[i] ;

Model himmelbf /all/ ;

Solve himmelbf using nlp minimazing f ;

display f.l ;
display x.l ;
