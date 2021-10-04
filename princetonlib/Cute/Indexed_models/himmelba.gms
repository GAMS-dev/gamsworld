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

*   Source: problem 25 in
*   D.H. Himmelblau,
*   "Applied nonlinear programming",
*   McGraw-Hill, New-York, 1972.

*   See Buckley*215 (p. 61)

*   SIF input: Ph. Toint, Dec 1989.

*   classification NLR2-AN-2-2

$Set N  2
Set I  / i1*i%N% / ;

Parameter x_init  / i1 8, i2 9 / ;
Variable x[i] ,  f ;

Equation cons1 , cons2 , Def_obj ;

cons1..  ( 4*x['i1']-20 ) =e= 0;
cons2..  (   x['i2']- 6 ) =e= 0;
Def_obj.. f =e= 0 ;

x.l[i] = x_init[i] ;

Model himmelba /all/ ;

Solve himmelba using nlp minimazing f ;

display f.l ;
display x.l ;
