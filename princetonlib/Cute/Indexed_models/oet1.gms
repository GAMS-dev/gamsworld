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

*   Source: K. Oettershagen
*   "Ein superlinear konvergenter algorithmus zur losung
*    semi-infiniter optimierungsproblem",
*    Ph.D thesis, Bonn University, 1982

*   SIF input: Nick Gould, February, 1994.

*   classification LLR2-AN-3-V
$Set N 2
$Set M 500
Set j /j1*j%N%/ ;
Set i /i0*i%M%/ ;

Parameter lower  ;  lower  =    0.0       ;
Parameter upper  ;  upper  =    2.0       ;
Parameter  diff  ;   diff  =  upper-lower ;
Parameter      h ;       h =  diff/%M%    ;

Variable u , x[j] , f ;

Equation cons1(i),  cons2(i),  Def_obj ;

cons1(i).. u-(ord(i)*h+lower)*x['j1']-
             exp(ord(i)*h+lower)*x['j2'] - sqr(ord(i)*h+lower) =g= 0 ;

cons2(i).. u+(ord(i)*h+lower)*x['j1']+
             exp(ord(i)*h+lower)*x['j2'] + sqr(ord(i)*h+lower) =g= 0 ;

Def_obj..  f =e= u ;

Model oet1 /all/ ;

Solve oet1 using nlp minimazing f ;

display f.l; display x.l;
