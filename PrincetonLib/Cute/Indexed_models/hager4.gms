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

*   Source: problem P4 in
*   W.W. Hager,
*   "Multiplier Methods for Nonlinear Optimal Control",
*   SIAM J. on Numercal Analysis 27(4): 1061-1080, 1990.

*   SIF input: Ph. Toint, April 1991.

*   classification OLR2-AN-V-V

$Set N  5000
Set I  / i0*i%N% / ;
Set Right(i) / i1*i%N% / ;

Parameter     h ; h = 1/%n% ;

Parameter  t(i) ; t(i) = (ord(i)-1)*h;
Parameter  z(i) ; z(i) = exp(-2*t[i]);
Parameter  a(i) ; a(i) = -0.5*z[i];
Parameter  b(i) ; b(i) = a[i]*(t[i]+0.5);
Parameter  c(i) ; c(i) = a[i]*(sqr(t[i])+t[i]+0.5);

Parameter  scda ; scda = (a['i1'] - a['i0'])/2;
Parameter  scdb ; scdb = (b['i1'] - b['i0'])*%n%;
Parameter  scdc ; scdc = (c['i1'] - c['i0'])*%n%*%n%*0.5;

Parameter     e ;    e = exp(1);
Parameter   xx0 ;  xx0 = (1+3*e)/(2-2*e);

Variable x(i) , u(i) , f ;

Equation cons1(i) , Def_obj ;

cons1(i)$Right(i).. (%n%-1)*x[i] - %n%*x[i-1] - exp(t[i])*u[i] =e= 0;

Def_obj..
  f =e= sum{i$Right(i), (scda*z[i-1]*sqr(x[i])            +
                         scdb*z[i-1]*x[i]*(x[i-1] - x[i]) +
                         scdc*z[i-1]*sqr(x[i-1]   - x[i])) } +
        sum{i$Right(i), (sqr(u[i]))*h*0.5 };

x.l[i]  = 0.0 ;
u.l[i]  = 0.0 ;
u.up[i] = 1.0 ;
x.fx['i0'] = xx0;

Model hager4 /all/ ;

Solve hager4 using nlp minimazing f ;

Display x.l ;
Display f.l ;
