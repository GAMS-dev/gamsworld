* Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source: problem 33 in
*   D.H. Himmelblau,
*   "Applied nonlinear programming",
*   McGraw-Hill, New-York, 1972.

*   See Buckley*87 (p. 67)

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-2-0

$Set N  2
Set I  / i1*i%N% / ;

Variable x[i] ,  f ;

Equation  Def_obj ;

Def_obj.. f =e=exp(-x['i1']-x['i2'])*(2*sqr(x['i1'])+3*sqr(x['i2'])) ;

x.l[i] = 0.5 ;

Model himmelbg /all/ ;

Solve himmelbg using nlp minimazing f ;

display f.l ;
display x.l ;
