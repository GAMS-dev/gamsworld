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
*   E. Polak, D.H. Mayne and J.E. Higgins,
*   "Superlinearly convergent algorithm for min-max problems"
*   JOTA 69, pp. 407-439, 1991.

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LOR2-AN-3-2

$Set N 2
Set I              /i1*i%N%/;

Variable x[i] , u , f ;

Equation cons1 , cons2 , Def_obj ;

cons1.. -u+3*sqr(x['i1'])+50*sqr(x['i1']-power(x['i2'],4)-1) =l= 0;
cons2.. -u+3*sqr(x['i1'])+50*sqr(x['i1']-power(x['i2'],4)+1) =l= 0;
Def_obj..  f =e= u ;

x.l[i] = 0.1 ;

Model polak5  /all/;

Solve polak5   using nlp minimazing f ;

display f.l ; display x.l ;
