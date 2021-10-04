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
*   G. Di Pillo and L. Grippo,
*   "An new augmented Lagrangian function for inequality constraints
*   in nonlinear programming problems",
*   JOTA, vol. 36, pp. 495-519, 1982.

*   SIF input: Ph. Toint, June 1990.

*   classification OOR2-AN-7-4

$Set N 7
Set i /i1*i%N%/;

parameter x_init[i] /i1 1.0, i2  2.0 , i3 0.0, i4 4.0,
                     i5 0.0, i6  1.0 , i7 1.0 / ;


Variable x[i] , f ;
Equation  Eq_1, Eq_2, Eq_3, Eq_4, Def_obj ;

Eq_1..      2*sqr(x['i1']) +   3*power(x['i2'],4) +  4*sqr(x['i4'])   +
                  x['i3']  +   5*x['i5']          -  127.0              =l= 0;
Eq_2..
           10*sqr(x['i3']) +   7*x['i1']          +  3*x['i2']        +
                  x['i4']  -     x['i5']          -    282.0            =l= 0;

Eq_3..        sqr(x['i2']) +   6*sqr(x['i6'])     + 23*x['i1']        -
                8*x['i7']  - 196.0                                      =l= 0;

Eq_4..      4*sqr(x['i1']) +     sqr(x['i2'])     -  3*x['i1']*x['i2']+
            2*sqr(x['i3']) +       5*x['i6']      - 11*x['i7' ]         =l= 0;

Def_obj.. f=e= sqr(x['i1']-10) + 5*sqr(x['i2']-12)  + power(x['i3'],4) +
             3*sqr(x['i4']-11) +10*power(x['i5'],6) + 7*sqr(x['i6'])   +
             power(x['i7'],4)  - 4*x['i6']*x['i7']  -10*x['i6']        -
                 8*x['i7']                                               ;

x.l[i]  =  x_init[i];

Model dipiri /all/;

Solve dipiri  using nlp minimize f;

display x.l;
display f.l;
