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
*   J. Hald and K. Madsen
*   "Combined LP and quasi-Newton methods for minmax optimization"
*   Mathematical Programming, vol.20, p. 49-62, 1981.

*   SIF input: Ph. Toint, April 1992.

*   classification LQR2-AN-3-4

$Set N 2
Set i/i1*i%N%/;

Parameter xinit(i) / i1 -1.2, i2 1.0 /;

Variable x(i) , u , f ;

Equation cons1 , cons2 , cons3 , cons4 , Def_obj ;

cons1.. u-10*x['i2']+10*sqr(x['i1']) =g= 0;
cons2.. u+10*x['i2']-10*sqr(x['i1']) =g= 0;
cons3.. u + x['i1'] - 1 =g= 0;
cons4.. u - x['i1'] + 1 =g= 0;
Def_obj.. f =e= u ;

x.l(i) = xinit(i) ;
u.l    = 1.0      ;

Model minmaxrb /all/ ;

Solve minmaxrb  using nlp minimazing f ;

display f.l;
display x.l;
display u.l;
