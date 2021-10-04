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

*   Source:  Problem 3 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also  Toint*34, Buckley*22 (p. 82).

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-AN-2-2

$Set N 2
$Set N1 1
Set I       /i1*i%N%/;
Set left(i) /i1*i%N1%/;
Parameter xinit[i] / i1 0.0 , i2 1.0 /;

Variable X[i] , f ;
Equation cons1(i) , cons2(i) , Def_obj ;

cons1(i)$left(i).. (-1.0+10000*x[i]*x[i+1]) =e= 0;

cons2(i)$left(i).. (-1.0001+exp(-x[i])+exp(-x[i+1])) =e= 0;

Def_obj..  f =e= 0 ;

x.l[i] = xinit[i];

Model powellbs /all/;

Solve powellbs   using nlp minimazing f ;

display f.l;

display x.l;
