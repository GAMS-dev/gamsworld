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

*   Source:  Problem 24 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley*112 (p. 80)

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N 100
Set I              /i1*i%N%/;
Set Left(i)        /i2*i%N%/;
Alias(i,j);

Parameter y[i]; y[i] = exp(ord(i)/10)  + exp( (ord(i)-1)/10 );

Parameter a ; a = 0.00001 ;

Variable X[i] , f  ;

Equation Def_obj ;

Def_obj..  f =e= sqr(x['i1']-0.2) +
     sum{i$Left(i),      (a*sqr(exp(x[i]/10)+exp(x[i-1]/10)-y[i]))} +
     sum{i$Left(i),      (a*sqr(exp(x[i]/10)-exp(-1    /10)     ))} +
sqr( sum{j, (%N%-ord(j)+1)*x[j]*x[j]}  - 1) ;

X.l[i] = 1/2;

Model penalty2  /all/;

Solve penalty2 using nlp minimazing f ;
display f.l;
display x.l;
