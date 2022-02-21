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
*   V.F. Demynanov and V.N. Malozemov
*   "Introduction to Minimax"
*   Wiley, 1974

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LQR2-AN-3-3

$Set N 2
Set i /i1*i%N%/;

parameter xinit[i] /i1 1.0, i2 1.0/;
Variable x[i] , u , f ;

Equation  Eq_1, Eq_2, Eq_3, Def_obj ;

Eq_1..
        -u+5*x['i1']+x['i2'] =l= 0;
Eq_2..
        -u-5*x['i1']+x['i2'] =l= 0;
Eq_3..
        -u+4*x['i2']+sqr(x['i1'])+sqr(x['i2']) =l= 0;

Def_obj.. f=e= u;

x.l[i]  =  xinit[i];

Model demymalo /all/;

Solve demymalo  using nlp minimize f;


display u.l;
display x.l;
display f.l;
