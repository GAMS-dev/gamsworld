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
*   P.S. Ritch,
*   Automatica, 1973, V9, pp 415-429,
*   (example 6.1)

*   SIF input: Todd Plantenga, August 1995.

*   classification QQR2-AN-V-V

$Set t 400
$Set t1 399
Set i /i0*i%t%/;
Set Left(i)   /i0*i%t1%/;
Set inside(i) /i1*i%t1%/;

Parameter       dt ;       dt = 20/%t%;
Parameter       a1 ;       a1 = dt/10;
Parameter springkm ; springkm = 0.02;
Parameter  damping ;  damping = 0.05;
Parameter       c1 ;       c1 = springkm*dt;
Parameter       c2 ;       c2 = damping*dt;

Variable x(i) , y(i) , u(i) , f ;

Equation cons1(i) , cons2(i) , Def_obj ;

cons1(i)$left(i).. x[i+1] - x[i] - dt*y[i] =e= 0.0;
cons2(i)$left(i).. y[i+1] - y[i] - dt*u[i] + c1*x[i] + c2*power(y[i],3) =e=0.0;
Def_obj..          f=e= a1*sum{i,sqr(x[i])} + 1000*sqr(y['i%t%']);

y.lo[i]       = -1.0 ;
y.l[i]        = -1.0 ;
u.lo[i]       = -0.2 ;
u.up[i]       =  0.2 ;

u.l[i]   =  0.0 ;
x.l[i]   =  0.0 ;

x.fx['i0']   = 10.0 ;
y.fx['i0']   =  0.0 ;
y.fx['i%t%'] =  0.0 ;

Model optcdeg3 /all/ ;

Solve optcdeg3 using nlp minimazing f ;

display f.l;
display x.l, y.l, u.l ;
