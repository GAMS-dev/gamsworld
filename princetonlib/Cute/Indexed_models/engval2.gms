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

*   Source: problem 15 in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-3-0

$Set N 3
Set i /i1*i%N%/;

parameter x_init(i) /i1 1, i2 2, i3 0 / ;

Variable      x[i], f    ;

Equation Def_obj ;

Def_obj.. f=e=    sqr(sqr(x['i1'])   + sqr(x['i2']) + sqr(x['i3']     ) - 1 )
                + sqr(sqr(x['i1'])   + sqr(x['i2']) + sqr(x['i3']  - 2) - 1 )
                + sqr(    x['i1']    +     x['i2']  +     x['i3']  - 1)
                + sqr(    x['i1']    +     x['i2']  -     x['i3']  + 1)
                + sqr(3*sqr(x['i2']) + power(x['i1'],3)
                                              + sqr(5*x['i3']-x['i1']+1)-36) ;

x.l[i]  =  x_init[i];

Model engval2 /all/;

Solve engval2 using nlp minimize f;

display x.l;
display f.l;
