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
*   N. Gould, private communication.

*   SIF input: N. Gould, Dec 1989.

*   classification LLR2-AN-2-2

$SET N 2
Set I /i1*i%N%/;

Positive Variable  x[i] ;
         Variable  f    ;

Equation Eq_1 , Eq_2 ,  Def_obj ;

Eq_1..  x['i1'] +   x['i2'] - 1.0 =g= 0;

Eq_2..  x['i1'] + 2*x['i2'] - 1.5 =g= 0;

Def_obj..  f =e= 2*x['i1'] + x['i2'] ;

Model simpllpa  /all/ ;

Solve simpllpa using nlp minimazing f ;

display f.l;
display x.l;
