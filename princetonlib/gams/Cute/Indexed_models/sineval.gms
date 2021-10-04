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

*   Source:  problem 4.2 in
*   Y. Xiao and F. Zhou,
*   "Non-monotone trust region methods with curvilinear path
*   in unconstrained optimization",
*   Computing, vol. 48, pp. 303-317, 1992.

*   SIF input: F Facchinei, M. Roma and Ph. Toint, June 1994

*   classification SUR2-AN-2-0

$SET N 2
Set I /i1*i%N%/;

Parameter c ; c = 0.0001 ;

Parameter xinit(i)  / i1 4.712389 , i2 -1.0 /;
Variable x(i) , f ; 
Equation  Def_obj ;

Def_obj..  f =e= sqr(x['i2']-sin(x['i1']))/c + sqr(x['i1'])/4;

x.l[i] = xinit[i] ;

Model sineval  /all/ ;

Solve sineval using nlp minimazing f ;

display f.l; display x.l;
