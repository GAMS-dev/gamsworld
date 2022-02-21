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

*   Source:  problem 206 (p. 46) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-2-0

$Set N 2
Set i /i1*i%N%/;

parameter xinit[i] /i1 1.0, i2 -0.1/;

Variable x[i],  f  ;

Equation  Def_obj ;

Def_obj.. f=e=sqr(0.01*x['i1']-0.03)-x['i1']+x['i2']+exp(20*(x['i1']-x['i2']));

x.l[i]  =  xinit[i]  ;

Model cliff /all/;

Solve cliff using nlp minimize f;

display x.l;
display f.l;
