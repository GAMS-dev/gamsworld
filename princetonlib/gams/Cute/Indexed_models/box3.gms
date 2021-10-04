* Cute AMPL model  (translation to GAMS)
*
* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved

* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source: Problem 12 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.
*
*   See also Buckley#BOX663
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-3-0

$Set N 3
Set i /i1*i%N%/;
$Set M 10
Set j /j1*j%M%/;

parameter x_init[i] /i1 0, i2 10, i3 1.0/;

parameter t[j]; t[j] = 0.1*ord(j);

Variable      x[i], f    ;

Equation  Def_obj ;

Def_obj.. f=e= sum{j, sqr(        exp(-t[j]*x['i1'])-
                                  exp(-t[j]*x['i2'])-
                          x['i3']*exp(-t[j])        +
                          x['i3']*exp(-10*t[j]))      };

x.l[i]  =  x_init[i];

Model box3 /all/;

Solve box3 using nlp minimize f;


display x.l;
display f.l;
