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
*   a contribution to fullfill the LANCELOT academic licence agreement,
*   inspired by
*   Y. Lin and J. Pang,
*   "Iterative methods for large convex quadratic programs: a survey",
*   SIAM Journal on Control and Optimization 25, pp.383-411, 1987.

*   SIF input: J. Judice, University of Coimbra, January 1995.
*              condensed by Ph. Toint, January 1995.

*   classification QBR2-AN-V-0

$Set N 1000
$Set M 503
$Set L 500
$Set L_1 501
$Set L_2 499
Set I /i1*i%N%/;
Set Left_1(I) /i%M%*i%N%/;
Set Left_2(I) /i%L%*i%N%/;

Positive Variable X[i] ;
Variable  f ;

Equation  Def_obj ;

Def_obj..  f=e= sum{i, (6*sqr(x[i])) }   -
                3*x['i1']    + x['i2']   +
                x['i%L_2%']    - 3*x['i%L%'] + 4*x['i%L_1%'] +
                sum{i$left_1(i), x[i] }  +
                sum{i$left_1(i), (-4*x[i]*x[i+1]+x[i]*x[i+2]) };

Model pentdi  /all/;

Solve pentdi using nlp minimazing f ;

display f.l ; display x.l ;
