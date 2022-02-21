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

*   Source: problem 31 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#73 and Toint#18
*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-AN-V-V

$Set N 5000

Set i /i1*i%N%/;

parameter ml; ml = 5;
parameter mu; mu = 1;

Alias(i,j);

Variable    x[i], f    ;

Equation Eq_1(i), Def_obj ;

Eq_1(i)..  x[i]*(2+5*SQR(x[i])) + 1 -
sum{j$((ord(j) ge ord(i)-5) and (ord(j) le ord(i)+1) and (ord(j) ne ord(i))),
       (x[i]*(1+x[i])) } =e= 0;
                        
Def_obj.. f=e=0.0;


x.l[i]   =    -1.0    ;
Model broydnbd /all/;

Solve broydnbd using nlp minimize f;

display x.l;
display f.l;
