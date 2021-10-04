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

*   Source: problem 7 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley*12 (p. 58)
*   SIF input: Ph. Toint, Dec 1989.

*   classification  SUR2-AN-3-0


$Set N  3
Set I  / i1*i%N% / ;

Parameter x_init  / i1 -1, i2 0 , i3 0 / ;

Variable x[i] , theta  , f ;

Equation Eq_1 , Def_obj ;

Eq_1..   theta =e=  max(x['i1'],0)* arctan(x['i2']/x['i1'])/(2*3.1415) +
                    min(x['i1'],0)*(arctan(x['i2']/x['i1'])/(2*3.1415)+0.5) +
                    0.0
  ;

Def_obj.. f =e= sqr(10*(x['i3']-10*theta)) +
                sqr(10*(sqrt(sqr(x['i1'])+sqr(x['i2']))-1)) +
                sqr(x['i3']) ;


x.l[i] = x_init[i] ;

Model helix /all/ ;

Solve helix using dnlp minimazing f ;

display f.l ;
display x.l ;
