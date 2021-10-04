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
*   Y. Tanaka, M. Fukushima, T. Ibaraki,
*   "A comparative study of several semi-infinite nonlinear programming
*   algorithms",
*   EJOR, vol. 36, pp. 92-100, 1988.

*   SIF input: Ph. Toint, April 1992.

*   classification LLR2-AN-3-V
$Set M 10000
Set j /j0*j%M% / ;
Set i /i1*i3 / ;

Parameter h ; h = 1/%M%;

Variable  x[i] , f ;

Equation cons1(j) ,  Def_obj ;

cons1(j).. -x['i1']-(ord(j)-1)*h*x['i2']-
           sqr((ord(j)-1)*h)*x['i3']+sin{((ord(j)-1)*h)}/cos{((ord(j)-1)*h)}=l= 0;

Def_obj..  f =e= x['i1']+0.5*x['i2']+x['i3']/3;

Model tfi2 /all/ ;

Solve tfi2 using nlp minimazing f ;

Display f.l , x.l ;
