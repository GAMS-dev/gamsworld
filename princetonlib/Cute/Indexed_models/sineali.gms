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

*   Source: on original idea by
*   Ali Bouriacha, private communication.

*   SIF input: Nick Gould and Ph. Toint, October, 1993.

*   classification OBR2-AN-V-0

$SET N 20
Set I /i1*i%N%/;
Set Right(I) /i2*i%N%/;

Parameter pi ; pi = 3.1415926535 ;

Variable x(i) , f ;
Equation  Def_obj ;

Def_obj..  f =e= sin(x['i1']-1)+sum{i$Right(I),100*sin(x[i]-sqr(x[i-1]))};

x.lo[i] =  sqrt(pi)-2*pi ;
x.lo['i1']    = -1.5*pi ;

x.up[i] =  sqrt(pi) ;
x.up['i1']    =  0.5*pi ;

x.l[i] = 0.0 ;

Model sineali  /all/ ;

Solve sineali using nlp minimazing f ;

display f.l;
display x.l;
