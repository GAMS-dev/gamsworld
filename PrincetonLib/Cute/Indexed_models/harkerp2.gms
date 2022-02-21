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
*   P. T. Harker and J.-S. Pang,
*   "A damped Newton method for the linear complementarity problem",
*   in 'Allgower and Georg: Computational solution of nonlinear
*   systems of equations', AMS lectures in Applied Mathematics 26,
*   AMS, Providence, Rhode Island, USA, pp 265-284.

*   SIF input: Nick Gould, July 1993.
*   classification QBR2-AN-V-V

$Set N  100
Set I  / i1*i%N% / ;
Alias(i,j);
Set Right(j) / i2*i%N% / ;
Variable x[i] , f ;

Equation Def_obj ;

Def_obj..  f =e=    sum{i, (-1*sqr(x[i])*0.5) }  +
                    sum{i, (-x[i]           ) }  +
                sqr(sum{i, ( x[i]           ) }) +
                    sum{j$Right(j),
                       (2*sqr(sum{i$(ord(i) lt ord(j)), x[i]}))};

x.lo[i] = 0.0    ;
x.l[i]  = ord(i) ;

Model harkept2 /all/ ;

Solve harkept2  using nlp minimazing f ;

Display x.l ;
Display f.l ;
