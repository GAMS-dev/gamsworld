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
*   E. Polak, D.H. Mayne and J.E. Higgins,
*   "Superlinearly convergent algorithm for min-max problems"
*   JOTA 69, pp. 407-439, 1991.

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LQR2-AN-3-3

$Set N 2
Set I              /i1*i%N%/;

Parameter  xinit[i] / i1 0.9 , i2 0.1 / ;

Variable x[i] , u , f ;

Equation cons1 , cons2 , cons3 , Def_obj ;

cons1.. -u -x['i1']  -      1+2*sqr(x['i1'])   +    2*sqr(x['i2'])      =l= 0;
cons2.. -u -0.01     +     0.01*sqr(x['i1'])   + 0.01*sqr(x['i2'])      =l= 0;
cons3.. -u -100000.0 + 100000.0*sqr(x['i1']-2) +      sqr(x['i2'])      =l= 0;

Def_obj..  f =e= u ;

x.l[i] = xinit[i];

Model polak4  /all/;

Solve polak4   using nlp minimazing f ;

display f.l ; display x.l ;
