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

*   Source: problem 2 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Toint#33, Buckley#24
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N   5000
$Set NGS 4999

Set i       /i1*i%N%  /;
Set Left(i) /i1*i%NGS%/;


Variable x[i] , f ;

Equation Def_obj ;

Def_obj..

f =e=   sum{i$left(i),sqr((5.0-x[i+1])*sqr(x[i+1])+x[i]- 2*x[i+1]-13.0) } +
        sum{i$left(i),sqr((1.0+x[i+1])*sqr(x[i+1])+x[i]-14*x[i+1]-29.0) }  ;

x.l[i]    =  0.0 ;
x.l['i1'] =  0.5 ;
x.l['i2'] = -2.0 ;

Model freuroth /all/;

Solve freuroth using nlp minimize f;

display x.l;
display f.l;
