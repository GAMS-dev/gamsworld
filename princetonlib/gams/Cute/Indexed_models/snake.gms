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
*   a problem designed by Ph. Toint for experimenting with feasibility
*   issues in barrier approaches to nonlinear inequality constraints.

*   SIF input: Ph.L. Toint, September 93.

*   classification LOR2-AN-2-2

Parameter  tip ; tip = 0.0001 ;

Variable x , y , f ;

Equation cons1 , cons2 ,  Def_obj ;

cons1.. -y+      sin(x) =l= 0 ;
cons2.. -y+tip*x+sin(x) =g= 0 ;
Def_obj..  f =e= x ;

x.l = 1.0 ;
x.l = 5.0 ;

Model snake  /all/ ;

Solve snake  using nlp minimazing f ;

display f.l;
display x.l;
display y.l;
