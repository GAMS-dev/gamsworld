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
*              modified by T Plantagena, May 1994.

*   classification QOR2-AY-V-V

$Set npts 100
Set i /i1*i%npts%/;

Parameter    tz3 ;    tz3 =   1.7       ;
Parameter  pseed ;  pseed = 237.1531    ;
Parameter  psize ;  psize = 0.2         ;
Parameter tdp_lo ; tdp_lo = 5           ;
Parameter tdp_hi ; tdp_hi = 5           ;
Parameter     pi ;     pi = 4*arctan(1) ;
Parameter   icr0 ;   icr0 = 1/%npts%    ;
Parameter   incr ;   incr = icr0*2*pi   ;

Parameter xd(i) ;
xd(i)= ((1+tz3*tz3)+cos(incr*(ord(i)-1)))*cos(incr*(ord(i)-1))*(1+psize*cos(incr*(ord(i)-1)*pseed));
xd(i)$((ord(i) ge tdp_lo) and (ord(i) le tdp_hi)) = 1.1 ;


Parameter yd(i) ;
yd(i)= ((1+tz3*tz3)+cos(incr*(ord(i)-1)))*sin(incr*(ord(i)-1))*(1+psize*cos(incr*(ord(i)-1)*pseed));
yd(i)$((ord(i) ge tdp_lo) and (ord(i) le tdp_hi)) = 1.1 ;


Variable z1 , z2 , z3 ,
         x(i) , y(i) , f ;
Equation cons1(i) , Def_obj ;


cons1(i).. sqr(sqr(x[i]-z1)+sqr(y[i]-z2)) -
              (sqr(x[i]-z1)+sqr(y[i]-z2))*sqr(1+sqr(z3)) =e= 0.0;

Def_obj..  f =e= sum{i,(sqr(x[i]-xd[i]) + sqr(y[i]-yd[i])) };

z1.l   = 1.0   ;
z2.l   =-1.0   ;
z3.l   = 1.0   ;
x.l(i) = xd[i] ;
y.l(i) = yd[i] ;

Model opthrds2 /all/ ;

Solve opthrds2  using nlp minimazing f ;

display f.l ;
display z1.l , z2.l , z3.l ;
display x.l , y.l ;
