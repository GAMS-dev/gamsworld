* Cute AMPL model  (translation to GAMS)
*
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
*   Ph. Toint, private communication, 1997.

*   SDIF input: Ph. Toint, May 1997.

*   classification SUR2-AN-2-0

parameter zeta ; zeta = 20.0;

Variable x , y , f ;

Equation Def_obj ;

Def_obj.. f=e= 0.05*(sqr(x)+sqr(y)) + sqr(sin(zeta*x)*sin(zeta*y));

x.l=-506.0;
y.l=-506.2;

Model humps /all/;

Solve humps using nlp minimize f ;

display x.l ; display y.l ; display f.l ;
