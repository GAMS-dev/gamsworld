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
*   "The OPTIMA user manual (issue No.8, p. 12)",
*   Numerical Optimization Centre, Hatfield Polytechnic (UK), 1989.

*   SIF input: Ph. Toint, May 1990.

*   classification SBR2-AN-4-0

$Set N  4
Set I  / i1*i%N% / ;
Set Left(I)  / i2*i%N% / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..  f =e=
        sqr(x['i1']-1) + sum{i$Left(i),  sqr(x[i-1]-sqrt(x[i]))};

x.lo[i] = 0.0000001 ;
x.up['i2'] = 0.8       ;
x.l[i]  = 0.1       ;

Model hatfldb /all/ ;

Solve hatfldb  using nlp minimazing f ;

Display   x.l ;
display   f.l ;
