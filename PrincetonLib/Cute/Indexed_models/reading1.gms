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
*   S. Lyle and N.K. Nichols,
*   "Numerical Methods for Optimal Control Problems with State Constraints",
*   Numerical Analysis Report 8/91, Dept of Mathematics,
*   University of Reading, UK.

*   SIF input: Nick Gould, July 1991.

*   classification OOR2-MN-V-V

$Set N 5000
Set I / i0*i%N% / ;

Set Right(i) / i1*i%N% / ;

Parameter   a ;  a =    0.07716  ;
Parameter  pi ; pi = 4*arctan(1) ;

Variable  x[i] , u[i] , f ;

Equation cons1(i) , Def_obj ;

Def_obj..
f =e=sum{i$Right(I),(-u[i]  *sqr(x[i]  -cos(2*pi* (ord(i)-1)   /%n%))/(2*%n%) -
                      u[i-1]*sqr(x[i-1]-cos(2*pi*((ord(i)-1)-1)/%n%))/(2*%n%))};

cons1(i)$Right(I)..
           x[i]*u[i]/(2*a) + x[i-1]*u[i-1]/(2*a) +
           x[i]*%n% - x[i-1]*%n% +
           u[i]  *cos(2*pi* (ord(i)-1)   /%n%)/(-2*a) +
           u[i-1]*cos(2*pi*((ord(i)-1)-1)/%n%)/(-2*a) =e= 0;

x.lo[i] =-0.5 ; x.up[i] = 0.5 ;
u.lo[i] = 0.0 ; u.up[i] = 1.0 ;

x.l[i]  = 0.0 ;
u.l[i]  = 0.0 ;

x.fx['i0'] = 0.25;

Model reading1 /all/ ;

Solve reading1  using nlp minimazing f ;

display f.l; display x.l;
