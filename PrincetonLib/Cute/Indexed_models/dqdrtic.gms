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

*   Source: problem 22 in
*   Ph. L. Toint,
*   "Test problems for partially separable optimization and results
*   for the routine PSPMIN",
*   Report 83/4, Department of Mathematics, FUNDP (Namur, B), 1983.

*   SIF input: Ph. Toint, Dec 1989.

*   classification QUR2-AN-V-0

$Set N  5000
$Set N1 4998
Set i /i1*i%N%/;
Set left(i) /i1*i%N1%/;
Variable   x[i], f    ;

Equation   Def_obj ;

Def_obj.. f=e=sum{i$left(i),(100*sqr(x[i+1])+100*sqr(x[i+2])+sqr(x[i]))};

x.l[i]  =  3 ;

Model dqdrtic /all/;

Solve dqdrtic using nlp minimize f;

display x.l;
display f.l;
