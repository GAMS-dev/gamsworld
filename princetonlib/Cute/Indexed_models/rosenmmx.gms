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
*   M.M. Makela,
*   "Nonsmooth optimization",
*   Ph.D. thesis, Jyvaskyla University, 1990

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LQR2-AN-5-4

$Set N 4
Set I / i1*i%N% / ;

Variable x[i] , u ,  f ;

Equation cons1 , cons2 , cons3 , cons4 , Def_obj ;

Def_obj..  f =e= u ;

cons1.. -u- 5*x['i1']- 5*x['i2']-21*x['i3']+7*x['i4']+
         sqr(x['i1'])+sqr(x['i2'])+2*sqr(x['i3'])+sqr(x['i4']) =l= 0;

cons2.. -u+ 5*x['i1']-15*x['i2']-11*x['i3']-3*x['i4']-
         80+11*sum{i,sqr(x[i])} +sqr(x['i3']) =l= 0;

cons3.. -u-15*x['i1']- 5*x['i2']-21*x['i3']-3*x['i4']-
         100+11*sqr(x['i1'])+21*sqr(x['i2'])+12*sqr(x['i3'])+21*sqr(x['i4']) =l= 0;

cons4.. -u+15*x['i1']-15*x['i2']-21*x['i3']-3*x['i4']-
         50+11*(sqr(x['i1'])+sqr(x['i2']))+12*sqr(x['i3'])+sqr(x['i4']) =l= 0;

u.l    = 0.0 ;
x.l[i] = 0.0 ;

Model rosenmmx /all/ ;

Solve rosenmmx  using nlp minimazing f ;

display f.l ; display x.l;
