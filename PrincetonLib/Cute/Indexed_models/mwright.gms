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

*   Source: problem 4 starting point D in
*   M.H. Wright:
*   "Numerical Methods for Nonlinearly Constrained Optimization",
*   Ph.D. Thesis, Stanford (USA), 1976.

*   SIF input: Ph. Toint, March 1991.
*              correction by Ph. Shott, January, 1995.

*   classification OQR2-AN-5-3

$Set N 5
Set i/i1*i%N%/;

Parameter x_init(i) / i1 -1 , i2  2 , i3  1 , i4  -2 , i5  -2 / ;

Variable x(i) , f ;
Equation cons1 , cons2 , cons3 , Def_obj ;

cons1..  sqr(x['i2']) + sqr(x['i3']) + x['i1'] - 3*sqrt(2) - 2 =e= 0;
cons2.. -sqr(x['i3']) +     x['i2']  + x['i4'] - 2*sqrt(2) + 2 =e= 0;
cons3..  x['i1']*x['i5']-2 =e= 0;

Def_obj..  f=e= sqr(x['i1']) +
                sqr(x['i1']-x['i2'])   +
                 power((x['i2']-x['i3']),3)
               + power((x['i3']-x['i4']),4)
               + power((x['i4']-x['i5']),4) ;

x.l(i) = x_init(i) ;

Model mwright /all/ ;

Solve mwright  using nlp minimazing f ;

display f.l;

display x.l;
