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

*   Source: problem 10 in
*   Ph.L. Toint,
*   "Test problems for partially separable optimization and results
*   for the routine PSPMIN",
*   Report 83/4, Department of Mathematics, FUNDP (Namur, B), 1983.

*   See also Buckley#116.  Note that MGH#21 is the separable version.
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N 10
Set i /i1*i%N%/;

Variable x(i) , f ;

Equation Def_obj ;

Def_obj..
        f=e=sqr(x['i1']-1) + sum{i$(ord(i) ne 1),(100*sqr(x[i]-sqr(x[i-1])))};

x.l[i]  =  1 ;

Model extrosnb /all/;

Solve extrosnb using nlp minimize f;

display x.l;
display f.l;
