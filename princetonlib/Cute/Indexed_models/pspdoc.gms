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

*   Source: problem 47 in
*   Ph.L. Toint,
*   "Test problems for partially separable optimization and results
*   for the routine PSPMIN",
*   Report 83/4, Department of Mathematics, FUNDP (Namur, B), 1983.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SBR2-AY-4-0

$Set N  4
$Set N2 2
Set I /i1*i%N%/;

Set NGS(I)  /i1*i%N2%/;
Variable x[i] , f ;
Equation  Def_obj ;

Def_obj..  f =e= sum{i$NGS(i), sqrt( sqr(x[i])+sqr(x[i+1]-x[i+2])+1) } ;

x.l[i] = 3 ;
x.up['i1'] = -1 ;


Model pspdoc  /all/;

Solve pspdoc using nlp minimazing f ;

display x.l ; 
display f.l ;
