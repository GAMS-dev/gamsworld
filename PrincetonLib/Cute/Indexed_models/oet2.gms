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
*   "Ein superlinear knonvergenter algorithmus zur losung
*    semi-infiniter optimierungsproblem",
*    Ph.D thesis, Bonn University, 1982

*   SIF input: Nick Gould, February, 1994.

*   classification LOR2-AN-3-V

$Set M 500
Set i /i0*i%M%/ ;

Parameter  LOWER ; LOWER =  -0.5       ;
Parameter  UPPER ; UPPER =   0.5       ;
Parameter   DIFF ;  DIFF = UPPER-LOWER ;
Parameter     H ;     H = DIFF/%M%    ;

Variable u , x1 , x2 , f ;

Equation cons1(i),  cons2(i),  Def_obj ;

cons1(i).. u + 1/(1+ord(i)*H+LOWER) -
               x1*exp(x2*(ord(i)*H+LOWER)) =g= 0;
cons2(i).. u - 1/(1+ord(i)*H+LOWER) +
               x1*exp(x2*(ord(i)*H+LOWER)) =g= 0;
Def_obj..  f =e= u ;

u.l  = 0 ;
x1.l = 0 ;
x2.l = 0 ;

Model oet2 /all/ ;

Solve oet2 using nlp minimazing f ;

display f.l;
display u.l , x1.l , x2.l ;
