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
*   M. Batholomew-Biggs and F.G. Hernandez,
*   "Some improvements to the subroutine OPALQP for dealing with large
*    problems",
*   Numerical Optimization Centre, Hatfield, 1992.

*   SIF input: Ph Toint, April 1992.

*   classification QLR2-AN-4-7

$Set N 4
Set i /i1*i%N%/;

Positive Variable     x[i]      ;
         Variable           f   ;

Equation Eq_01,Eq_11,Eq_02,Eq_12,Eq_03,Eq_13,Eq_04,Eq_14,Eq_05,Eq_15,
         Eq_06,Eq_16,Eq_07, Def_obj;

Eq_01..    x['i1']+x['i2']                -2.5 =l= 5.0;
Eq_11..    x['i1']+x['i2']                -2.5 =g= 0.0;
Eq_02..    x['i1']+x['i3']                -2.5 =l= 5.0;
Eq_12..    x['i1']+x['i3']                -2.5 =g= 0.0;
Eq_03..    x['i1']+x['i4']                -2.5 =l= 5.0;
Eq_13..    x['i1']+x['i4']                -2.5 =g= 0.0;
Eq_04..    x['i2']+x['i3']                -2.0 =l= 5.0;
Eq_14..    x['i2']+x['i3']                -2.0 =g= 0.0;
Eq_05..    x['i2']+x['i4']                -2.0 =l= 5.0;
Eq_15..    x['i2']+x['i4']                -2.0 =g= 0.0;
Eq_06..    x['i3']+x['i4']                -1.5 =l= 5.0;
Eq_16..    x['i3']+x['i4']                -1.5 =g= 0.0;
Eq_07..    x['i1']+x['i2']+x['i3']+x['i4']-5.0 =g= 0.0;

Def_obj..  f=e=(-x['i1']*x['i3']-x['i2']*x['i4']);

x.up[i] =    5.0    ;
x.l[i]  =    0.0    ;

Model biggsc4 /all/;

Solve biggsc4 using nlp minimize f;


display x.l;
display f.l;
