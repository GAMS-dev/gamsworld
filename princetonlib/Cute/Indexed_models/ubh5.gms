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

*   Source: unscaled problem 5
*   (ODE = 1, CLS = 2, GRD = 1, MET = T, SEED = 0.) in
*   J.T. Betts and W.P. Huffman,
*   "Sparse Nonlinear Programming Test Problems (Release 1.0)",
*   Boeing Computer services, Seattle, July 1993.

*   SIF input: Ph.L. Toint, October 1993.

*   classification LQR2-MN-V-V

$Set N  2000
Set t  / t0*t%N% / ;
Set Left_t(t)  / t1*t%N% / ;

$Set M   7
$Set M3  3
Set i  / i1*i%M% / ;
Set Left(i)  / i1*i%M3% / ;

Parameter t0 ; t0 =    0.0 ;
Parameter tf ; tf = 1000.0 ;

Parameter k ; k = (tf-t0)/%N%;

Variable y(i,t) , u(i,t) , f ;
Equation cons1(i,t) , cons2(i,t) , cons3(t) , Def_obj ;


cons1(i,t)$(Left(i)and Left_t(t))..
                          y[i,t]-y[i,t-1]-k*y[i+3,t-1]/2-k*y[i+3,t]/2 =e= 0 ;
cons2(i,t)$(Left(i)and Left_t(t))..
                          y[i+3,t]-y[i+3,t-1]-k*u[i,t-1]/2-k*u[i,t]/2 =e= 0 ;
cons3(t)$Left_t(t).. sum{i$Left(i),((-k)*(sqr(u[i,t])+sqr(u[i,t-1]))/2) } +
                                                 y['i7',t]-y['i7',t-1] =e= 0;
 Def_obj.. f =e= y['i7','t%n%'];

y.fx['i1','t0'] = 1000.0 ;
y.fx['i2','t0'] = 1000.0 ;
y.fx['i3','t0'] = 1000.0 ;
y.fx['i4','t0'] =  -10.0 ;
y.fx['i5','t0'] =   10.0 ;
y.fx['i6','t0'] =  -10.0 ;
y.fx['i7','t0'] =    0.0 ;

y.fx['i1','t%N%'] =    0.0 ;
y.fx['i2','t%N%'] =    0.0 ;
y.fx['i3','t%N%'] =    0.0 ;
y.fx['i4','t%N%'] =    0.0 ;
y.fx['i5','t%N%'] =    0.0 ;
y.fx['i6','t%N%'] =    0.0 ;


y.l[i,t]       =    0.0 ;
u.lo[i,t]      =   -1.0 ;
u.up[i,t]      =    1.0 ;
u.l[i,t]       =    0.0 ;

Model ubh5 /all/ ;

Solve ubh5 using nlp minimazing f ;


Display f.l ;
