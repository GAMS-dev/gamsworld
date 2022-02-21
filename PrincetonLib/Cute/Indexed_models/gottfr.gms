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

*   Source:  problem 208 (p. 56) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NQR2-AN-2-2

$Set N 2
Set i /i1*i%N%/;


Variable  x(i) , f ;

Equation Eq_1 , Eq_2 , def_obj ;


Eq_1..   (x['i1']-0.1136*(    x['i1']+3.0*x['i2'])*(1-x['i1'])) =e= 0;
Eq_2..   (x['i2']+   7.5*(2.0*x['i1']-    x['i2'])*(1-x['i2'])) =e= 0;

Def_obj.. f=e=0;

X.l(i)    = 0.5;

Model gottfr  /all/;

Solve gottfr  using nlp minimize f;

display x.l         ;
display f.l         ;
