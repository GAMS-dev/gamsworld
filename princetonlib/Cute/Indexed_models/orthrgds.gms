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

*   SIF input: Ph. Toint, Mar 1991 and T. Plantenga, May 1993.

*   classification QOR2-AY-V-V

$Set npts  5000
Set i /i1*i%npts%/;

Parameter     tz3 ;    tz3 =    1.7      ;
Parameter   pseed ;  pseed =  237.1531   ;
Parameter   psize ;  psize =    0.2      ;
Parameter  tdp_lo ; tdp_lo =    5.0      ;
Parameter  tdp_hi ; tdp_hi =   14.0      ;
Parameter      pi ;     pi = 4*arctan(1) ;
Parameter    icr0 ;   icr0 = 1/%npts%    ;
Parameter    incr ;   incr = icr0*2*pi   ;

Parameter xd(i) ; xd(i) = ((1+tz3*tz3)+cos(incr*(ord(i)-1)))*
                                       cos(incr*(ord(i)-1)) *
                              (1+psize*cos(incr*(ord(i)-1)*pseed));
Parameter yd(i) ; yd(i) = ((1+tz3*tz3)+cos(incr*(ord(i)-1)))*
                                       sin(incr*(ord(i)-1)) *
                              (1+psize*cos(incr*(ord(i)-1)*pseed));
Variable x(i) , y(i) , z1 , z2 , z3 , f ;
Equation Cons1(i) , Def_obj ;

cons1(i)..      sqr(y[i]-z2) =e= (sqr(1+z3*z3)-(sqr(x[i]-z1))) ;

Def_obj..  f =e=   sum{i, (sqr(x[i]-xd[i]) + sqr(y[i]-yd[i])) };

z1.lo = 0.0 ;
z2.lo = 0.0 ;
z3.lo = 0.0 ;

z1.l = 1.02976 ;
z2.l = 0.000234392 ;
z3.l = 1.7206 ;
* AMPL solution
*z1.fx = 1.02976     ;
*z2.fx = 0.000234392 ;
*z3.fx = 1.7206      ;


x.l(i) =  xd[i];
y.l(i) =  yd[i];

x.l(i)$((tdp_lo le ord(i)) and (ord(i) le tdp_hi)) = 1.8 ;
y.l(i)$((tdp_lo le ord(i)) and (ord(i) le tdp_hi)) = 1.0 ;

*         OR
* x.l['i5'] = 1.8 ;  y.l['i5'] = 1.0 ;
* x.l['i6'] = 1.8 ;  y.l['i6'] = 1.0 ;
* x.l['i7'] = 1.8 ;  y.l['i7'] = 1.0 ;
* x.l['i8'] = 1.8 ;  y.l['i8'] = 1.0 ;
* x.l['i9'] = 1.8 ;  y.l['i9'] = 1.0 ;
*x.l['i10'] = 1.8 ; y.l['i10'] = 1.0 ;
*x.l['i11'] = 1.8 ; y.l['i11'] = 1.0 ;
*x.l['i12'] = 1.8 ; y.l['i12'] = 1.0 ;
*x.l['i13'] = 1.8 ; y.l['i13'] = 1.0 ;
*x.l['i14'] = 1.8 ; y.l['i14'] = 1.0 ;




option reslim = 10000 ;
Model orthrgds /all/ ;

Solve orthrgds  using nlp minimazing f ;

display f.l;
display x.l , y.l , z1.l , z2.l , z3.l ;
