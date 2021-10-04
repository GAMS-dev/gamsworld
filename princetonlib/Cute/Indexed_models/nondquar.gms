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

*   Source: problem 57 in
*   A.R. Conn, N.I.M. Gould, M. Lescrenier and Ph.L. Toint,
*   "Performance of a multi-frontal scheme for partially separable
*   optimization"
*   Report 88/4, Dept of Mathematics, FUNDP (Namur, B), 1988.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-V-0

$Set N  10000
$Set N1  9999
$Set M   9998
Set i/i1*i%N%/;
Set left(i) /i1*i%M%/;

Variable x(i) , f ;

Equation  Def_obj ;

Def_obj..  f=e= sum{i$left(i), (power((x[i]+x[i+1]+x['i%N%']),4))} +
                                                   sqr(x['i1']    - x['i2']) +
                                                   sqr(x['i%N1%'] + x['i%N%']);

x.l(i)                   =  1 ;
x.l(i)$(mod(ord(i),2)=0) = -1 ;

Model nondquar /all/ ;
Solve nondquar  using nlp minimazing f ;

display f.l;
