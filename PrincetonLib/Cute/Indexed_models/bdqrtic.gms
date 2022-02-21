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

*   Source: Problem 61 in
*   A.R. Conn, N.I.M. Gould, M. Lescrenier and Ph.L. Toint,
*   "Performance of a multifrontal scheme for partially separable
*   optimization",
*   Report 88/4, Dept of Mathematics, FUNDP (Namur, B), 1988.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N 1000
$Set M  996

Set i /i1*i%N%/;
Set inside(i) /i1*i%M%/;

Variable     x[i],f   ;

Equation Def_obj;

Def_obj.. f=e=sum{i$inside(i),sqr(-4*x[i]+3.0)} +
              sum{i$inside(i),sqr(  sqr(x[i])  +2*sqr(x[i+1])+
                                  3*sqr(x[i+2])+4*sqr(x[i+3])+
                                  5*sqr(x['i%N%'])            )};
x.l[i]  =    1.0  ;

Model bdqrtic  /all/;

Solve bdqrtic  using nlp minimize f;

display x.l;
display f.l;
