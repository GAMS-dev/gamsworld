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

*   Source:
*   L.C.W. Dixon and Z. Maany,
*   "A family of test problems with sparse Hessians for unconstrained
*   optimization",
*   TR 206, Numerical Optimization Centre, Hatfield Polytechnic, 1988.

*   See also Buckley#221 (p. 49)
*   SIF input: Ph. Toint, Dec 1989.
*              correction by Ph. Shott, January 1995.

*   classification OUR2-AN-V-0

$Set M  1000
$Set N2 2000
$Set N  3000
$Set N1 2999
Set i /i1*i%N%/;

Set left(i)   /i1*i%N1%/;;
Set first(i)  /i1*i%M%/;;
Set second(i) /i1*i%N2%/;;

Set j /j1*j4/;

parameter alpha;   alpha = 1.0   ;
parameter  beta;    beta = 0.26  ;
parameter gamma;   gamma = 0.26  ;
parameter delta;   delta = 0.26  ;

parameter K[j] /j1 0,j2 0,j3 0,j4 0/;

Variable      x[i], f    ;

Equation   Def_obj ;

Def_obj..  f=e= 1.0 +
sum{i,           alpha*sqr(x[i])*power((ord(i)/%N%),K['j1']) }                      +
sum{i$left(i),    beta*sqr(x[i])*sqr(x[i+1]+sqr(x[i+1]))*power((ord(i)/%N%),K['j2'])} +
sum{i$second(i), gamma*sqr(x[i])*power(x[i+%M%],4)*power((ord(i)/%N%),K['j3'])}      +
sum{i$first(i),  delta*x[i]*x[i+2000]*power((ord(i)/%N%),K['j4'])}                   ;

x.l[i]  =  2.0;

Model dixmaand /all/;

Solve dixmaand using nlp minimize f;

display x.l;
display f.l;
