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

*   Source: problem 3 in
*   W. Hock and K. Schittkowski,
*   "Test examples for nonlinear programming codes",
*   Lectures Notes in Economics and Mathematical Systems 187, Springer
*   Verlag, Heidelberg, 1981.

*   SIF input: A.R. Conn March 1990

*   classification QBR2-AN-2-0

$Set N 2
Set i /i1*i%N%/;

parameter xinit(i) ;    xinit(i) = 10 ;

Variable x(i) , f  ;

Equation Def_obj ;

Def_obj..  f =e= x['i2'] + sqr(-x['i1']+x['i2']) ;

x.lo['i2'] = 0 ;

Model hs3mod /all/;

Solve hs3mod using nlp minimize f ;

display   x.l               ;
display   f.l               ;
