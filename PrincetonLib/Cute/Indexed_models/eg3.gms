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
*   A. R. Conn, N. I. M. Gould and Ph. L. Toint,
*   "LANCELOT: a Fortran package for large-scale nonlinear optimization
*    (Release A)", Springer Series in Computational Mathematics 17,
*   Springer Verlag, 1992

*   SIF input: A. R. Conn, Nick Gould and Ph. L. Toint, June 1994.

*   classification OOR2-AY-V-V

$Set N 100
$Set N_1 99
Set i /i1*i%N%/;
Set left(i) /i1*i%N_1%/;
Variable y , x[i] , f ;

Equation consq(i), conss(i), eq, Def_obj ;

consq(i)$left(i).. y+x['i1']*x[i+1]+(1+2/ord(i))*x[i]*x['i%n%'] =l= 0.0;
conss(i)..         0.5 =g= sqr(sin(x[i]));
eq..               sqr(x['i1']+x['i%n%']) =e= 1.0;

Def_obj..          f =e= 0.5*sqr((x['i1']-x['i%n%'])*x['i2']+y);

x.lo[i] =  -1.0     ;
x.up[i] =  ord(i)   ;
x.l[i]  =  0.5      ;

Model eg3 /all/;

Solve eg3 using nlp minimize f;

display x.l;
display f.l;
