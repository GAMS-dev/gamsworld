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

*   Source: problem 156 (p. 51) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification QUR2-AN-V-0

$Set n 10
$Set m 9
Set i /i1*i%n%/;
Set inside(i) /i2*i%m%/;

Variable      x[i], obj  ;

Equation   Def_obj ;

* rvdb comment: the sum should start at 1.

Def_obj..  obj=e= sqr(x['i1']-1.0)                  +
                  sum{i$inside(i),sqr(x[i]-x[i+1])} +
                  sqr(x['i%n%']-1.0)                 ;
x.l[i] = -1.0;

Model dixon3dq /all/;

Solve dixon3dq using nlp minimize obj;


display x.l;
display obj.l;
