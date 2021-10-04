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

*   classification QBR2-AN-V-V

$Set N 12
$Set M 6
Set I / i1*i%N% / ;
Set Left(I) / i1*i%M% / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..  f =e= sum{i,(-ord(i)*10*x[i])} + sum{i$left(i), x[i]*x[i+1] };

x.lo[i] = 0.0 ;
x.up[i] =10.0 ;

Model qudlin /all/ ;

Solve qudlin  using nlp minimazing f ;

display f.l; display x.l;
