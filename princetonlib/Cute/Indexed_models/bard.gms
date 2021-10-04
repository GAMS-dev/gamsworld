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

*   Source: Problem 3 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#16.
*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-3-0

$Set N 3
Set j /j1*j%N%/;
$Set M 15
Set i /i1*i%M%/;

parameter y[i] / i1 0.14, i2 0.18, i3 0.22, i4 0.25, i5 0.29,
                 i6 0.32, i7 0.35, i8 0.39, i9 0.37,i10 0.58,
                i11 0.73,i12 0.96,i13 1.34,i14 2.10,i15 4.39 /;

parameter u[i];   u[i] = ord(i);
parameter v[i];   v[i] = 16-ord(i);
parameter w[i];   w[i] = min(u[i],v[i]);

Variable x[j],f;

Equation Def_obj;

Def_obj..
            f=e=sum{i,sqr(y[i]-(x['j1']+u[i]/(v[i]*x['j2']+w[i]*x['j3'])))};

x.l[j]  =    1.0    ;

Model bard /all/;

Solve bard using nlp minimize f;

display x.l;
display f.l;
