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

*   SIF input: Ph. Toint, Dec 1989.

*   classification LLR2-AN-2-3

$SET N 2
Set I /i1*i%N%/;

Positive Variable  x[i] ;
         Variable  f    ;

Equation cons1 , cons2 , cons3 ,  Def_obj ;

cons1..   x['i1'] +   x['i2'] - 1.0 =g= 0;
cons2..   x['i1'] + 2*x['i2'] - 1.2 =g= 0;
cons3.. 2*x['i1'] +   x['i2'] - 1.2 =g= 0;
Def_obj..  f =e= 1.5*x['i1']+x['i2'] ;

x.l[i] = 0.1 ;

Model simpllpb  /all/ ;

Solve simpllpb using nlp minimazing f ;

display f.l;
display x.l;
