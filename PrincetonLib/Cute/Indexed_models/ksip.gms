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

*   Source: problem from Kortanek and No
*   The problem is really a semi-infinite QP
*   to appear in SIAM J. Optimization.

*   The structure is the following :


*     min  "Sum"{ Xj^2/(2j) + Xj/j  ;  j=1,...,n }   subject to

*      "Sum"{ t^(j-1)*Xj } ; j=1,...,n  >=  b(t) for all t in [0 1].


* Four examples are considered for n = 20, corresponding to the RHS
* function, b(t) : sin(t), 1/(2-t), exp(t), and tan(t).

* The interval [0 1] is dicretized via steps of 1/1000

*   SIF input: A.R. Conn, May 1993

*   classification QLR2-AN-20-1001

$Set N 20
Set i /i1*i%N%/;
$Set M 1000
Set j /j1*j%M%/;

Variable x(i) , obj ;
Equation c(j) , Def_obj ;

c(j)..     sum{i,(exp(log(ord(j)/%M%)*(ord(i)-1))*x[i] ) } =g= sin(ord(j)/%M%);

Def_obj..  obj=e= sum{i, ( sqr(x[i])/(2*ord(i)) + x[i]/ord(i)) };

x.l(i) = 2 ;
Model ksib /all/;

Solve ksib using nlp minimize obj;
Solve ksib using nlp minimize obj;
display   x.l               ;

display obj.l               ;
