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

*   Source: adapted from:
*   M. Gulliksson,
*   "Algorithms for nonlinear Least-squares with Applications to
*   Orthogonal Regression",
*   UMINF-178.90, University of Umea, Sweden, 1990.

*   SIF input: Ph. Toint, Mar 1991.
*              minor correction by Ph. Shott, Jan 1995.

*   classification QOR2-AY-V-V

$Set npts 5000
Set i /i1*i%npts%/;

Parameter   tz3 ;   tz3 =   1.7       ;
Parameter pseed ; pseed = 237.1531    ;
Parameter psize ; psize =   0.2       ;
Parameter    pi ;    pi = 4*arctan(1) ;
Parameter  icr0 ;  icr0 = 1/%npts%    ;
Parameter  incr ;  incr = icr0*2*pi   ;

Parameter xd(i) ; xd(i) = ((1+tz3*tz3)+cos(incr*(ord(i)-1)))*
                                       cos(incr*(ord(i)-1))*
                                      (1+psize*cos(incr*(ord(i)-1)*pseed));
Parameter yd(i) ; yd(i) = ((1+tz3*tz3)+cos(incr*(ord(i)-1)))*
                                       sin(incr*(ord(i)-1))*
                                      (1+psize*cos(incr*(ord(i)-1)*pseed));

Variable z1 , z2 , z3 , epsi ,
         x(i) , y(i) , f ;

Equation cons1(i) , Def_obj ;

cons1(i).. sqr(sqr(x[i]-z1)+sqr(y[i]-z2)) -
              (sqr(x[i]-z1)+sqr(y[i]-z2))*sqr(1+sqr(z3)) =l= epsi;

Def_obj..  f =e= sum{i,(sqr(x[i]-xd[i])+sqr(y[i]-yd[i]))} +epsi ;
epsi.lo = 0;
z1.lo   = 1.0   ;
z2.lo   =-1.0   ;
z3.lo   = 1.0   ;

z1.up   = 2.0   ;
z2.up   = 0.0   ;
z3.up   = 3.0   ;


z1.l   = 1.0   ;
z2.l   =-1.0   ;
z3.l   = 2.0   ;


* AMPL solution
*z1.fx = 1.01334      ;
*z2.fx = -3.18295e-06 ;
*z3.fx = 1.7196   ;

x.lo(i) = -2.0*abs(xd[i]) ;
y.lo(i) = -2.0*abs(yd[i]) ;

x.up(i) = 2.0*abs(xd[i]) ;
y.up(i) = 2.0*abs(yd[i]) ;

x.l(i) = xd[i] ;
y.l(i) = yd[i] ;

option reslim = 10000;
Model orthregd /all/ ;

Solve orthregd  using nlp minimazing f ;

display  f.l ;
display z1.l , z2.l , z3.l ,epsi.l ;
display  x.l ,  y.l ;
