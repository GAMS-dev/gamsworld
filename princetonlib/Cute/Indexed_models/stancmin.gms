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
*   I.M. Stancu-Minasian
*   Private communication, 1992.

*   SDIF input: Ph. Toint, October 1992.

*   classification OLI2-AY-3-2
$Set N 3
Set I / i1 * i%N% / ;

Positive Variable x[i] ;

Variable f ;

Equation cons1 , cons2 , Def_obj ;


cons1.. 3*x['i1']+4*x['i2']+x['i3'] - 2 =l= 0;
cons2..   x['i1']+4*x['i2']+x['i3'] - 1 =l= 0;
Def_obj..  f =e= -(6*x['i2']+3*x['i1']+2*x['i3']-11)/
                                        (x['i1']+4*x['i2']+x['i3']+1);
x.l[i] = 50 ;

Model stancmin /all/ ;

Solve stancmin using nlp minimazing f ;

display f.l; display x.l;
