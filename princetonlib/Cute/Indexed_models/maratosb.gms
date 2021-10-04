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
*   Ph. Toint.

*   SIF input: Ph. Toint, June 1990.

*   classification QUR2-AN-2-0

$Set N 2
Set i /i1*i%N%/;

parameter invp ; invp = 0.000001;
parameter xinit(i) / i1 0.0 , i2 0.0 /;

Variable x(i) , f ;

Equation  Def_obj ;

Def_obj..  f =e= x['i1']+sqr(sqr(x['i1'])+sqr(x['i2'])-1)/invp;

x.l(i) = xinit(i) ;

Model maratosb /all/;

Solve maratosb  using nlp minimize f ;

display f.l ;
