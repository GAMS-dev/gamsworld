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

*   Source: Problem 55 in
*   A.R. Conn, N.I.M. Gould, M. Lescrenier and Ph.L. Toint,
*   "Performance of a multifrontal scheme for partially separable
*   optimization",
*   Report 88/4, Dept of Mathematics, FUNDP (Namur, B), 1988.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-V-0

$Set N 5000
Set i /i1*i%N%/;

Variable      x[i],  f   ;

Equation Def_obj;

Def_obj.. f=e=
        sum{i$(ord(i) <card(i)), (-4*x[i]  +3.0           ) }  +
        sum{i$(ord(i) <card(i)), sqr(sqr(x[i])+sqr(x['i%N%'])) }    ;

x.l[i]  =    1.0   ;

Model arwhead /all/;

Solve arwhead  using nlp minimize f;

display x.l;
display f.l;
