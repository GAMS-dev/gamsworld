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
*   K.M. Irani, M.P. Kamat, C.J. Ribbens, H.F.Walker and L.T. Watson,
*   "Experiments with conjugate gradient algoritms for homotopy curve
*    tracking" ,
*   SIAM Journal on Optimization, May 1991, pp. 222-251, 1991.

*   SIF input: Ph. Toint, May 1990.

*   classification NOR2-AN-V-V


$Set N 5001
Set i /i0*i%N%/;

Variable      x[i],f;

Equation Eq_1[i],Def_obj;

*Eq_1[i]$((ord(i)>1)and(ord(i) ne card(i)))..
Eq_1[i]$((ord(i)>1)and(ord(i) ne card(i)))..
*Eq_1[i]..

          (-0.05* (x[i] + x[i+1] + x[i-1]) +
(      arctan(sin(mod((ord(i)-1),100)*x[i]))   )
) =e=
0;



Def_obj.. f=e=0;

x.fx['i0']   = 0.0;
x.fx['i%N%'] = 0.0;

x.l[i]  =    1.0 ;

Model artif /all/;

Solve artif using nlp minimize f;

display x.l;
display f.l;
