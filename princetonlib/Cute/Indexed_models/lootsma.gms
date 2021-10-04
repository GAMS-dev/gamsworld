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
*   a contribution to fullfill the LANCELOT academic licence agreement.

*   SIF input: Li-zhi Liao, Dept. of Mathematics,
*              Hong Kong Baptist College, May 1994.

*   classification OQR2-AN-3-2

$Set N 3
Set i /i1*i%N%/;

parameter xinit(i) / i1 0.0 , i2 0.0 , i3 3.0 /;

Variable x(i), f ;
Equation cons1 , cons2 , Def_obj ;

cons1..      - sqr(x['i1']) - sqr(x['i2']) + sqr(x['i3']) =g= 0 ;

cons2..   -4 + sqr(x['i1']) + sqr(x['i2']) + sqr(x['i3']) =g= 0 ;

Def_obj..    f =e=  11*x['i1']+x['i3']+power(x['i1'],3)-6*sqr(x['i1']) ;

x.lo[i] = 0.0     ;
x.up[i] = 5.0     ;
x.l[i]  = xinit(i) ;

Model lootsma /all/;

Solve lootsma using nlp minimize f ;

display x.l   ;

display f.l   ;
