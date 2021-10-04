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

*   Source: problem 27 in
*   D.H. Himmelblau,
*   "Applied nonlinear programming",
*   McGraw-Hill, New-York, 1972.


*   See Buckley*77 (p. 62)

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-2-0

$Set N  2
Set I  / i1*i%N% / ;

Parameter x_init  / i1 -1.2, i2 1.0 / ;

Variable x[i] ,  f ;

Equation  Def_obj ;

Def_obj.. f =e= sqr( x['i1']            *
                     x['i2']            *
                     (1-x['i1'])        *
                     (1-x['i2']-x['i1'] *
                     (1-power(x['i1'],5))));


x.l[i] = x_init[i] ;

Model himmelbb /all/ ;

Solve himmelbb using nlp minimazing f ;

display f.l ;
display x.l ;
