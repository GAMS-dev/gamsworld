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
*   "The OPTIMA user manual (issue No.8, p. 26)",
*   Numerical Optimization Centre, Hatfield Polytechnic (UK), 1989.

*   SIF input: Ph. Toint, May 1990.

*   classification SBR2-AN-25-0

$Set N  4
$Set N1 3
Set I  / i1*i%N% / ;
Set Left(I)  / i2*i%N1% / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..  f =e=               sqr(x['i1']-1) +
                 sum{i$Left(i),sqr(x[i+1]-sqr(x[i]))} +
                               sqr(x['i%N%']-1);

x.lo['i1']    =  0.0 ;
x.up['i1']    = 10.0 ;
x.lo['i2']    =  0.0 ;
x.up['i2']    = 10.0 ;
x.lo['i3']    =  0.0 ;
x.up['i3']    = 10.0 ;

x.l[i]     = 0.9  ;

Model hatfldc /all/ ;

Solve hatfldc  using nlp minimazing f ;

Display   x.l ;
Display   f.l ;
