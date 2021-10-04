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
*   P. Wolfe,
*   "Explicit solution of an optimization problem",
*   Mathematical Programming 2, 258-260, 1972.

*   SIF input: Nick Gould, Oct 1992.

*   See also Schittkowski *368 (for N = 8)

*   classification OBR2-MN-V-0
$Set n 100
Set I /i1*i%n%/;
Alias(i,j);

Variable x[i] , f ;
Equation  Def_obj ;

Def_obj..  f =e= sum{(i,j), (  sqr(-x[i]  ) * power(x[j],4) ) } +
                 sum{(i,j), (power( x[i],3) * power(x[j],3) ) }  ;

x.lo[i] =  0.0 ;
x.up[i] =  1.0 ;

Model s368 /all /;

Solve s368 using nlp minimazing f ;

Display f.l ;
