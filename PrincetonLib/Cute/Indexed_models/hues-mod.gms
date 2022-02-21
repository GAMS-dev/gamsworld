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

*   Source: An inverse problem from astronomy,
*   reformulated as a convex quadratic program by
*   S. P. Hestis, SIAM Review 34 (1992) pp. 642-647.

*   SIF input: Nick Gould, January 1993.
*   improvements by: Ruediger Franke (Ruediger.Franke@RZ.TU-Ilmenau.DE)

*   classification QLR2-MN-V-V

$Set K  10000
Set I  / i1*i%K% / ;

Parameter  range ;  range = 1.0;
Parameter deltax ; deltax = range/%K%;

Variable M[i],epsi ,  f ;

Equation cons1 , cons2 ,  Def_obj ;

cons1..
sqrt(sqrt(-sum{i,(power(ord(i),3)-power((ord(i)-1),3))*power(deltax,3)*M[i]/3} + 1835.2)) =l= epsi ;
cons2..
sqrt(sqrt(-sum{i,(power(ord(i),5)-power((ord(i)-1),5))*power(deltax,5)*M[i]/5} +  909.8)) =l= epsi ;

Def_obj..  f =e= sum{i, M[i]*M[i]/%K%}+ epsi;

epsi.lo = 0.0 ;
M.lo[i] = 0.0 ;
M.l[i]  = 1.0 ;

Model hues_mod /all/ ;

Solve hues_mod   using nlp minimazing f ;
f.l = f.l - epsi.l;
display f.l;
display M.l;
