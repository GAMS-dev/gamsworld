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

*   Source:  problem 20 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley*128 (p. 100).

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0


$Set N  31
$Set N29  29
Set I  / i1*i%N% / ;
Set Left(i) / i1*i%N29% / ;
Alias(i,j);
Set Right(j) / i2*i%N% / ;

Parameter t[i] ; t[i] = ord(i)/29;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..
f=e=sum{i$Left(i),sqr(sum{j$right(j),(ord(j)-1)*x[j]*power(t[i],(ord(j)-2))} -
                  sqr(sum{j,                    x[j]*power(t[i],(ord(j)-1))})-1)}+
        sqr(x['i1'])+sqr(x['i2']-sqr(x['i1'])-1);

x.l[i]=0.0;
Model watson /all/ ;

Solve watson  using nlp minimazing f ;


Display x.l ;
Display f.l ;
