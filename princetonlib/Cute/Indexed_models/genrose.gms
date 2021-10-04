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

*   Source: problem 5 in
*   S. Nash,
*   "Newton-type minimization via the Lanczos process",
*   SIAM J. Num. Anal. 21, 1984, 770-788.

*   SIF input: Nick Gould, Oct 1992.
*              minor correction by Ph. Shott, Jan 1995.

*   classification SUR2-AN-V-0

$Set N 500
Set i /i1*i%N%/;
Set right(i) /i2*i%N%/;

Variable x(i) , f ;
Equation Def_obj ;

Def_obj..

f=e= 1.0 + sum{i$right(i), 100*sqr(x[i]-sqr(x[i-1]))} +
           sum{i$right(i), sqr(x[i]-1.0)            } ;

x.l(i) = 1/(1+ord(i)) ;
Model genrose /all/;

Solve genrose using nlp minimize f;

display x.l         ;
display f.l         ;
