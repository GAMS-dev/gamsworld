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
*   B. Murtagh and M. Saunders,
*   Mathematical Programming studies 16, pp 84-117,
*   (example 5.11)

*   SIF input: Nick Gould, June 1990.
*              Todd Plantenga, August 1995.

*   classification QQR2-AN-V-V

$Set t 400
$Set t1 399
Set i /i0*i%t%/;
Set Left(i)   /i0*i%t1%/;
Set inside(i) /i1*i%t1%/;

Parameter        dt ;       dt = 20/%t%        ;
Parameter        a1 ;       a1 = dt/2        ;
Parameter  springkm ; springkm = 0.02        ;
Parameter   damping ;  damping = 0.05        ;
Parameter        c1 ;       c1 = springkm*dt ;
Parameter        c2 ;       c2 = damping*dt  ;

Variable x(i) , y(i) , u(i) , f ;

Equation cons1(i) , cons2(i) , Def_obj ;

cons1(i)$Left(i).. x[i+1]-x[i]-dt*y[i] =e= 0.0;
cons2(i)$Left(i).. y[i+1]-y[i]-dt*u[i]+c1*x[i]+c2*sqr(y[i]) =e= 0.0;
Def_obj.. f=e= a1*sum{i, sqr(x[i]) };

y.lo[i]       = -1.0 ;
y.up[i]       =  1.0 ;
u.lo[i]       = -0.2 ;
u.up[i]       =  0.2 ;

u.l[i]   =  0.0 ;
x.l[i]   =  0.0 ;

x.fx['i0']   = 10.0 ;
y.fx['i0']   =  0.0 ;
y.fx['i%t%'] =  0.0 ;

Model optcdeg2 /all/ ;

Solve optcdeg2 using nlp minimazing f ;

display f.l;
display x.l, y.l, u.l ;
