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
*   R. Fletcher
*   "Practical Methods of Optimization",
*   second edition, Wiley, 1987.

*   SIF input: Ph. Toint, March 1994.

*   classification QOR2-AN-4-4

$Set N 4
Set i /i1*i%N%/;

Variable      x[i], f    ;

Equation  Eq_1, Eq_2, Eq_3, Eq_4, Def_obj ;


Eq_1..   sqr(x['i1']*x['i3']+x['i2']*x['i4'])/
                                          (sqr(x['i1'])+sqr(x['i2'])) -

        sqr(x['i3']) - sqr(x['i4']) + 1 =e= 0;

Eq_2..        x['i1'] - x['i3']-1 =g= 0;

Eq_3..        x['i2'] - x['i4']-1 =g= 0;

Eq_4..        x['i3'] - x['i4']   =g= 0;

Def_obj.. f =e= x['i1']*x['i2'];

x.lo['i4']  =  1.0 ;
x.l[i]      =  1.0 ;

Model fletcher /all/;

Solve fletcher  using nlp minimize f;

display x.l;
display f.l;
