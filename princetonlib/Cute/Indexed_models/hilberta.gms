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
*   K. Schittkowski,
*   "More Test Examples for Nonlinear Programming Codes",
*   Springer Verlag, Heidelberg, 1987.

*   See also Buckley*19 (p. 59)

*   SIF input: Ph. Toint, Dec 1989.

*   classification QUR2-AN-V-0

$Set N  10
Set I  / i1*i%N% / ;
Alias(i,j);
Parameter A[i,j] ; A[i,j] = 1/(ord(i)+(ord(j)-1));

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..  f =e= sum{i,(x[i]*(sum{j,A[i,j]*x[j]})) } ;

x.l['i1']  =     -4 ;
x.l['i2']  =     -2 ;

Model hilberta /all/ ;

Solve hilberta using nlp minimazing f ;
display f.l;
display x.l;
display a;
