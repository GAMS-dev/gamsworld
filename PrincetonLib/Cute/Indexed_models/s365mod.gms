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

*   Source: a modification (Ph. Toint) of problem 365 in
*   K. Schittkowski,
*   " More Test Problems for Nonlinear Programming Codes",
*   Springer Verlag, Berlin, 1987.

*   SIF input: Ph. Toint, March 1991.

*   classification QOR2-AY-7-5

$Set n 7
Set I /i1*i%n%/;

Variable x[i] , P , Q , f ;

Equation For_var_P , For_var_Q , cons1 , cons2 , cons3 , cons4 , cons5 , Def_obj;

For_var_P.. P =e= sqrt(x['i2']*x['i2']) + sqr(x['i3'])         ;

For_var_Q.. Q =e= sqrt(x['i3']*x['i3']) + sqr(x['i2']-x['i1']) ;

cons1.. sqr(x['i4']-x['i6']) + sqr(x['i5']-x['i7']) - 4  =g= 0 ;

cons2.. (x['i3']*x['i4'] - x['i2']*x['i5']) - P        =g= 0 ;

cons3.. (x['i3']*x['i6'] - x['i2']*x['i7']) - P        =g= 0 ;

cons4.. (x['i1']*x['i3']+(x['i2']-x['i1'])*x['i5']-x['i3']*x['i4'])-Q =g= 0 ;

cons5.. (x['i1']*x['i3']+(x['i2']-x['i1'])*x['i7']-x['i3']*x['i6'])-Q =g= 0 ;

Def_obj..  f =e= x['i1']*x['i3'] ;

x.lo['i1'] = 0.5 ;
x.lo['i3'] = 0.5 ;
x.lo['i5'] = 1.0 ;
x.lo['i7'] = 1.0 ;

x.l['i1']  =     3.00 ;
x.l['i2']  =     0.01 ;
x.l['i3']  =     2.00 ;
x.l['i4']  =    -1.50 ;
x.l['i5']  =     1.50 ;
x.l['i6']  =     5.00 ;
x.l['i7']  =     0.00 ;

Model s365mod /all /;

Solve s365mod  using nlp minimazing f ;

display f.l ;
display x.l ;
