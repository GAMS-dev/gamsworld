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
*   R.  Wommersley and R. Fletcher,
*   "An algorithm for composite nonsmooth optimization problems"
*   JOTA, vol.48, pp.493-523, 1986

*   SIF input: Ph. Toint, April 1992.

*   classification LOR2-AN-3-3

$Set N 2
Set i /i1*i%N%/;

Variable u,  x[i],  f  ;

Equation Eq_1, Eq_2, Eq_3, Def_obj ;
Eq_1..    u-  power(x['i1'],4)    -  sqr(x['i2']    ) =g= 0;
Eq_2..    u-  sqr(2.0-x['i1'])    -  sqr(2.0-x['i2']) =g= 0;
Eq_3..    u-2*exp(x['i2']-x['i1'])                    =g= 0;
Def_obj.. f  =e=   u   ;

x.l[i]  =    2.0 ;
u.l     =    1.0 ;

Model cb3 /all/;

solve cb3 using nlp minimize f;

display x.l;
display u.l;
display f.l;
