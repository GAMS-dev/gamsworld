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

*   classification LLR2-AN-4-V

$Set M 500
$Set N 3
Set i /i0*i%M%/ ;
Set j /j1*j%N%/ ;

Parameter lower ;  lower  =  0.0         ;
Parameter upper ;  upper  =  1.0         ;
Parameter  diff ;   diff  =  upper-lower ;
Parameter     h ;      h  =  diff/%M%    ;

Variable u , x(j) , f ;
Equation cons1(i),  cons2(i),  Def_obj ;

cons1(i).. u - sin(ord(i)*h+lower)-x['j1'] -
                  (ord(i)*h+lower)*x['j2'] -
               sqr(ord(i)*h+lower)*x['j3'] =g= 0;

cons2(i).. u + sin(ord(i)*h+lower)+x['j1'] +
                  (ord(i)*h+lower)*x['j2'] +
               sqr(ord(i)*h+lower)*x['j3'] =g= 0;

Def_obj..  f =e= u ;

Model oet3 /all/ ;

Solve oet3 using nlp minimazing f ;

display f.l;
display u.l , x.l ;
