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

*   Source: E. Polak and A. L. Tits,
*   "A recursive quadratic programming algorithm for semi-infinite
*    optimization problems",
*   Appl. Math. Optim. 8, 1982, pp 325-349.

*   SIF input: Nick Gould, February, 1994.

*   classification LLR2-AN-2-V

$Set M 500
Set I /i0*i%M%/;

Parameter lower ;  lower = 0.0;
Parameter upper ;  upper = 1.0;
Parameter  diff ;   diff = upper-lower;
Parameter     h ;      h = diff/%M%;

Variable  u , x , f ;

Equation  cons1(i) , Def_obj ;

cons1(i)..    -((ord(i)-1)*h+lower) +
            sqr((ord(i)-1)*h+lower) +
             u                      +
          sqr( ((ord(i)-1)*h+lower) - 3*((ord(i)-1)*h+lower) + 1) * x =g= 0;

Def_obj..  f=e=u;

Model pt  /all/;

Solve pt using nlp minimazing f ;

display x.l ; display u.l ;
display f.l ;
