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

*   Source: a generalization of problem 20 in
*   M. J. D. Powell
*   "On the quadratic progamming algorithm of Goldfarb and Idnani",
*   Mathematical Programmimg Study 25 (1985) 46-61.

*   SIF input: Nick Gould, August 1994.

*   classification QLR2-AN-V-V

$Set N 1000
$Set N1 999
$Set N2 999.5
Set I              /i1*i%N%/;
Set Left(i) /i1*i%N1%/;

Variable  x[i]  , f ;
Equation cons1(i) , cons2 , Def_obj ;

cons1(i)$Left(i) .. x[i+1]-x[i] =g= -0.5 + power((-1),ord(i)) * ord(i);
cons2..             x['i1']-x['i%N%'] =g= %N2%;

Def_obj..  f =e= 0.001*0.5*sum{i,sqr(x[i])};

x.l[i] = 0 ;

Model powell20  /all/;

Solve powell20    using nlp minimazing f ;

f.l = f.l*1000;
display f.l ; display x.l ;
