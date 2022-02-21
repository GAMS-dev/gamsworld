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

*   Source: a one variable box-constrained quadratic

*   SIF input: Nick Gould, March 1992

*   classification QBR2-AN-1-0

Positive Variable     x1   ;
Variable              f    ;

Equation  Def_obj ;
Def_obj.. f =e= x1+sqr(x1);

x1.up  =    0.5   ;
x1.l   =    0.25  ;

Model bqp1var /all/;

Solve bqp1var using nlp minimize f;

display x1.l;
display f.l;
