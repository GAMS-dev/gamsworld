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

*   Source: problem 31 in
*   Ph.L. Toint,
*   "Test problems for partially separable optimization and results
*   for the routine PSPMIN",
*   Report 83/4, Department of Mathematics, FUNDP (Namur, B), 1983.

*   See also Buckley#172 (p. 52)
*   SIF input: Ph. Toint and N. Gould, Dec 1989.

*   classification OUR2-AN-V-0

$Set N 5000
$Set M 4999
Set i /i1*i%N%/;
Set left(i) /i1*i%M%/;

Variable      x[i], f    ;

Equation   Def_obj ;

Def_obj..  f =e= sum{i$left(i), sqr(sqr(x[i]) + sqr(x[i+1])     ) }+
                 sum{i$left(i),    (-4* x[i]               + 3.0) } ;

x.l[i]  =  2.0 ;

Model engval1 /all/;

Solve engval1 using nlp minimize f;

display x.l;
display f.l;
