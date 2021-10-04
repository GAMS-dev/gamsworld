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

*   Source:  problem 214 (p. 68) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NQR2-AN-2-2

$Set N 2
Set i /i1*i%N%/;

parameter xinit(i) / i1 0.0, i2 1.0 / ;

Variable x(i) , f ;

Equation cons1 , cons2 , Def_OBJ ;

cons1.. (x['i1']*x['i2']-1.0) =e= 0;

cons2.. (sqr(x['i1'])+sqr(x['i2'])-4.0) =e= 0;

Def_obj.. f =e= 0;

f.l = 0 ;
x.l(i) = xinit(i) ;

Model hypsir /all/;

Solve hypsir using nlp minimize f ;

display   x.l               ;
display   f.l               ;
