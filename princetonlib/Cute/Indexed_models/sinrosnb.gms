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

*   Source: a modification of an original idea by
*   Ali Bouriacha, private communication.

*   SIF input: Nick Gould and Ph. Toint, October, 1993.

*   classification OQR2-AN-V-V

$Set N 1000
$Set N1 999
Set I / i1*i%N% / ;

Set Right(I) / i2*i%N% / ;

Parameter pi ;  pi = 4*arctan(1);

Variable x[i] , f ;

Equation cons1(i) , cons2(i) , Def_obj ;

cons1(i)$Right(I).. 2*pi =g= pi-x[i]+sqr(x[i-1])       ;

cons2(i)$Right(I)..          pi-x[i]+sqr(x[i-1]) =g= 0 ;

Def_obj..  f =e= sin(x['i1']-1+1.5*pi) +
                 sum{i$Right(I), (100*sin(-x[i]+1.5*pi+sqr(x[i-1])))} ;

x.lo[i] = -pi ;
x.up[i] =  pi ;
x.l[i]  =  1  ;

Model sinrosnb / all / ;

Solve sinrosnb  using nlp minimazing f ;

display f.l;
display x.l;
