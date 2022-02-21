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

*   classification OOR2-MN-V-V


$Set N 5000

Set i / i0*i%N% / ;
Set Right(i) / i1*i%N% / ;

Parameter  a ;   a := 0.07716     ;
Parameter pi ;  pi := 4*arctan(1) ;

Variable x[i] , u[i] , us[i] , f ;
Equation cons1(i) , cons2 ,Def_obj ;

Def_obj..
  f =e= sum{i$Right(i),(-us[i]  *sqr(x[i]  - cos(2*pi*{ord(i)-1}    /%N%))/(2*%N%)
                        -us[i-1]*sqr(x[i-1]- cos(2*pi*({ord(i)-1}-1)/%N%))/(2*%N%))};

cons1(i)$Right(i)..          x[i]*us[i]/(2*a)   + x[i-1]*us[i-1]/(2*a)   +
                             x[i]*%N%           - x[i-1]*%N%             +
                            us[i]  *cos(2*pi*{ord(i)-1}    /%N%)/(-2*a)  +
                            us[i-1]*cos(2*pi*({ord(i)-1}-1)/%N%)/(-2*a)    =e= 0;


cons2.. (x['i0'] - x['i%n%']) =e= 0 ;

x.lo[i] = -0.5 ; x.up[i] =  0.5 ; x.l[i] =  0.25 ;
u.lo[i] =  0.0 ; u.up[i] =  1.0 ; u.l[i] =  0.25 ;
us.l[i] =  u.l[i]/%N% ;

x.fx['i0'] = 0.25 ;

Model sreadin3 / all / ;

Solve sreadin3 using nlp minimazing f ;
Display f.l ;
