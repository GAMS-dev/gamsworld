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
*   M. Batholomew-Biggs and F.G. Hernandez,
*   "Some improvements to the subroutine OPALQP for dealing with large
*    problems",
*   Numerical Optimization Centre, Hatfield, 1992.

*   SIF input: Ph Toint, April 1992.

*   classification QBR2-AN-V-V

$Set N 1000
Set i /i1*i%N%/;

Positive Variable     x[i];
Variable              f   ;

Equation Def_obj;

Def_obj.. f=e=   sqr(x['i1']-1)                               +
                 sum {i$(ord(i) ne card(i)),sqr(x[i+1]-x[i])} +
                 sqr(1-x['i%N%'])                             ;

x.up[i]$(ord(i) ne card(i))=0.9   ;
x.l[i] =     0.9   ;

Model biggsb1 /all/;

Solve biggsb1  using nlp minimize f;

display x.l;
display f.l;
