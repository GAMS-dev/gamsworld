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

*   Source: Problem 5 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.
*
*   See also Buckley#89.
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-2-0

$Set N 2
Set i /i1*i%N%/;

Variable     x[i],f ;

Equation Def_obj;
Def_obj..
            f=e=    sqr(-1.5+x['i1']*(1.0-x['i2']))           +
                    sqr(-2.25+x['i1']*(1.0-sqr(x['i2'])))     +
                    sqr(-2.625+x['i1']*(1.0-power(x['i2'],3))) ;

x.l[i]  =    1.0  ;

Model beale /all/;

Solve beale using nlp minimize f;

display x.l;
display f.l;
