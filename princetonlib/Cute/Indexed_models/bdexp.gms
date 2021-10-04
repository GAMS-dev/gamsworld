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

*   Source: Problem 56 in
*   A.R. Conn, N.I.M. Gould, M. Lescrenier and Ph.L. Toint,
*   "Performance of a multifrontal scheme for partially separable
*   optimization",
*   Report 88/4, Dept of Mathematics, FUNDP (Namur, B), 1988.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OBR2-AY-V-0
$Set N 5000
$Set M 4998
Set i /i1*i%N%/;
Set inside(i) /i1*i%M%/;

Variable     x[i],f   ;

Equation Def_obj;

Def_obj.. f=e=sum{i$inside(i),(x[i]+x[i+1])*exp(-(x[i]+x[i+1])*(x[i+2]))};

x.l[i]   =    1.00  ;

Model bdexp /all/;

Solve bdexp  using nlp minimize f;

display x.l;
display f.l;
