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

*   Source: problem 29 in
*   D.H. Himmelblau,
*   "Applied nonlinear programming",
*   McGraw-Hill, New-York, 1972.

*   See Buckley*86 (p. 64)

*   SIF input: Ph. Toint, Dec 1989.

*   classification NQR2-AN-2-2

$Set N  1
Set I  / i1*i%N% / ;

Variable x[i] , d, f ;

Equation  cons2 , Def_obj ;

cons2..       84*x['i1'] +
            2324*{(1 - x['i1']*x['i1'])/12} - 681.0 +
            49*x['i1']*x['i1']   +
            49*{(1 - x['i1']*x['i1'])/12}*{(1 - x['i1']*x['i1'])/12}  =e= 0 ;
Def_obj.. f =e= 0 ;

x.l[i] = 21.0 ;

Model himmelbd /all/ ;

Solve himmelbd using nlp minimazing f ;

display f.l ;
display x.l ;
