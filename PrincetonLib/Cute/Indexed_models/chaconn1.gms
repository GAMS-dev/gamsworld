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
*   C. Charalambous and A.R. Conn,
*   "An efficient method to solve the minmax problem directly",
*   SINUM 15, pp. 162-187, 1978.

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LOR2-AY-3-3

$Set N 2
Set i /i1*i%N%/;


parameter xinit[i] /i1 1.0, i2 -0.1/;

Variable u,  x[i],  f  ;

Equation Eq_1, Eq_2, Eq_3, Def_obj ;

Eq_1..    -u + sqr(x['i1'])   + power(x['i2'],4) =l= 0 ;
Eq_2..    -u + sqr(2-x['i1']) + sqr(2-x['i2'])   =l= 0 ;
Eq_3..    -u + 2*exp(x['i2']-x['i1'])            =l= 0 ;
Def_obj..  f  =e=   u   ;

x.l[i]  =  xinit[i]  ;

Model chaconn1 /all/;

Solve chaconn1 using nlp minimize f;

display x.l;
display f.l;
