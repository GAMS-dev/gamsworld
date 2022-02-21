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
*   N. Gould, private communication.

*   SIF input: N. Gould, Dec 1989.

*   classification OUR2-AY-V-0

$Set N 10000
$Set N1 9999

Set I / i1*i%N% / ;
Set Inside(I) / i2*i%N1% / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..
f =e= power((x['i1']-1),4) +
      sum{i$Inside(i),sqr(sin(x[i]-x['i%N%'])-sqr(x['i1'])+sqr(x[i]))} +
                              sqr(sqr(x['i%N%']) - sqr(x['i1']))         ;

x.l[i] = 0.1 ;

Model sinquard / all / ;

Solve sinquard using nlp minimazing f ;

display f.l;
display x.l;
