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
*   A.R. Conn, N. Gould and Ph.L. Toint,
*   "The LANCELOT User's Manual",
*   Dept of Maths, FUNDP, 1991.

*   SIF input:  Ph. Toint, Jan 1991.

*   classification OOR2-AN-2-1

Variable  x,y,f  ;

Equation Eq_1,Def_obj;

Eq_1..    sin(-x+y-1)=e= 0         ;
Def_obj.. f          =e= exp(x-2*y);

x.lo =    -2.0    ;
x.up =     2.0    ;
y.lo =    -1.5    ;
y.up =     1.5    ;

Model alsotame /all/;

Solve alsotame  using nlp minimize f;

display x.l;
display y.l;
display f.l;
