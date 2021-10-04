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
*   G. Li,
*   "The secant/finite difference algorithm for solving sparse
*   nonlinear systems of equations",
*   SIAM Journal on Optimization, (to appear), 1990.

*   SIF input: Ph. Toint, Apr 1990.
*              minor correction by Ph. Shott, January 1995.

*   classification OUR2-AN-V-0

$Set N 2000
$Set M 1999
Set i /i1*i%N%/;
Set Left(i) /i1*i%M%/;


Variable x(i) , f ;

Equation   Def_obj ;

Def_obj.. f=e= sum{i$Left(i),
                   (power((x[i]-2),4)+sqr(x[i]*x[i+1]-2*x[i+1])+sqr(x[i+1]+1))}
                                                                           +16;
x.l[i]  =  0 ;

Model edensch /all/;

Solve edensch using nlp minimize f;

display x.l;
display f.l;
