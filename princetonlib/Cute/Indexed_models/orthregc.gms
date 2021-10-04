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

*   Source:  adapted from:
*   M. Gulliksson,
*   "Algorithms for nonlinear Least-squares with Applications to
*   Orthogonal Regression",
*   UMINF-178.90, University of Umea, Sweden, 1990.

*   SIF input: Ph. Toint, June 1990.

*   classification QQR2-AN-V-V

$Set npts 5000
Set i /i1*i%npts%/;

Parameter    v11 ;   v11 =    2.0      ;
Parameter    v12 ;   v12 =    1.0      ;
Parameter    v22 ;   v22 =    2.0      ;
Parameter  pseed ; pseed = 237.1531    ;
Parameter  psize ; psize =   0.2       ;
Parameter     pi ;    pi = 4*arctan(1) ;
Parameter   incr ;  incr = 2*pi/%npts% ;
Parameter     c3 ;    c3 = cos(v22)    ;
Parameter     s3 ;    s3 = sin(v22)    ;

Parameter xd(i) ; xd(i)= (v11*cos(incr*(ord(i)-1))*c3-
                          v12*sin(incr*(ord(i)-1))*s3)*
                          (psize*cos(incr*(ord(i)-1)*pseed)+1);
Parameter yd(i) ; yd(i)= (v11*cos(incr*(ord(i)-1))*s3+
                          v12*sin(incr*(ord(i)-1))*c3)*
                          (psize*cos(incr*(ord(i)-1)*pseed)+1);

Variable x(i) , y(i) , h11 , h12 , h22 , g1 , g2 , f ;

Equation cons1(i) ,  Def_obj ;

cons1(i)..
     h11*sqr(x[i])+2*h12*x[i]*y[i]+h22*sqr(y[i])-2*g1*x[i]-2*g2*y[i] =e= 1.0 ;

Def_obj..  f =e= (sum{i,sqr(x[i]-xd[i])} + sum{i,sqr(y[i]-yd[i])})*0.000001 ;

h11.l  = 1.0   ;
h22.l  = 1.0   ;
 g1.l  = 1.0   ;
 g2.l  = 1.0   ;

x.l(i) = xd[i] ;
y.l(i) = yd[i] ;
option reslim = 10000;
Model opthregc /all/ ;

Solve opthregc  using nlp minimazing f ;
f.l = 1000000*f.l;
display f.l;
display h11.l,h12.l,h22.l,g1.l,g2.l;
display x.l,y.l;
