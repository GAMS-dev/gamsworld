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

*   Source: Problem 16 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#30
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-4-0

$Set N 4
Set i /i1*i%N%/;

$Set M 20
Set j /j1*j%M%/;

parameter x_init[i] /i1 25, i2 5, i3 -5, i4 -1 /;

parameter t[j]; t[j] = ord(j)/5;

Variable  x[i],f;

Equation  Def_obj ;
Def_obj.. f=e=
        sum {j,sqr( sqr(x['i1']+t[j]*x['i2']-exp(t[j])) +
                    sqr(x['i3']+x['i4']*sin(t[j])-cos(t[j]))
            )     };

x.l[i]  =   x_init[i]   ;
Model brownden /all/;

Solve brownden using nlp minimize f;

display x.l;
display f.l;
