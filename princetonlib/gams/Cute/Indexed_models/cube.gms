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

*   Source: problem 5 (p. 89) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-2-0

$Set N 2
Set i /i1*i%N%/;

parameter xinit[i] /i1 -1.2, i2 1.0 /;


Variable     x[i], f ;

Equation  Def_obj ;

Def_obj.. f=e=sqr(x['i1']-1.0)+sum{i$(ord(i)>1),100*sqr(x[i]-power(x[i-1],3))};

x.l[i]=xinit[i];

Model cube /all/;

Solve cube using nlp minimize f;

display x.l;
display f.l;
