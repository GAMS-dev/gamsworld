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
*   J.Ch. Gilbert,
*   "On the Realization of the Wolfe Conditions in Reduced Quasi-Newton
*   Methods for Equality Constrained Optimization",
*   RR-2127, INRIA (F), 1993.

*   SIF input: Ph. Toint, April 1994

*   classification QQR2-AN-V-1

$Set N 1000
Set i /i1*i%N%/;
Parameter a(i) ; a(i) = mod(ord(i),2)

Variable x(i) , f ;

Equation Eq_1 , Def_obj ;

Eq_1..    0 =e= (sum{i,sqr(x[i])}-1.0)/2        ;
Def_obj.. f =e= sum{i,sqr((%n%+1-ord(i))*x[i]/%n%-1.0)}/2;

x.l(i) =  1$(a(I) eq 1) - 1$(a(I) ne 1) ;

x.l(i) = x.l(i)*10;

Model gelbert /all/;

Solve gelbert  using nlp minimize f;

display a           ;
display x.l         ;
display f.l         ;
