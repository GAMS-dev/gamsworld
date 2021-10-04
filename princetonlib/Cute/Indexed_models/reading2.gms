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

*   classification LLR2-MN-V-V

$Set N 5000
Set I / i0*i%N% / ;
Set Right(I) / i1*i%N% / ;

Parameter  A ;   A = 0.07716;
Parameter  H ;   H = 1/%N%;
Parameter  pi ; pi = 3.1415;

Variable x1[i] , x2[i] , u[i] , f ;

Equation cons1(i) , cons2(i) , cons3 , cons4 , Def_obj ;

cons1(i)$Right(i).. (x1[i]-x1[i-1])/H - 0.5*(x2[i]+x2[i-1])  =e= 0 ;
cons2(i)$Right(i).. (x2[i]-x2[i-1])/H - 0.5*( u[i]+ u[i-1])  =e= 0 ;
cons3..              x1['i0'] =e= 0.0 ;
cons4..              x2['i0'] =e= 0.0 ;

Def_obj..  f =e= sum{i$Right(i),(-0.5*H*cos(2*pi* (ord(i)-1)    *H)*x1[i] -
                                  0.5*H*cos(2*pi*((ord(i)-1)- 1)*H)*x1[i] +
                                      H*   (u[i]+u[i-1])/(8*pi*pi))};

x2.lo[i] = -0.125 ;
x2.up[i] =  0.125 ;
 u.lo[i] = -1.0 ;
 u.up[i] =  1.0 ;

Model reading2 /all/ ;

Solve reading2 using nlp minimazing f ;

display f.l;
display x1.l;
display x2.l;
display  u.l;
