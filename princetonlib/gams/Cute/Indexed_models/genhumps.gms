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
*   Ph. Toint, private communication, 1997.

*   SDIF input: N. Gould and Ph. Toint, November 1997.

*   classification SUR2-AN-V-0

$Set N 5
Set i /i1*i%N%/;
$Set N_1  4
Set left1(i) /i1*i%N_1%/;

parameter zeta ; zeta = 2;

Variable  x(i) , f ;

Equation  Def_obj ;

Def_obj..

f=e= sum{i$left1(i),(sqr(sin(zeta*x[i]))*sqr(sin(zeta*x[i+1]))+
                                 0.05*(sqr(x[i])+sqr(x[i+1]))) };

x.l(i)    = -506.0 ;
x.l('i1') =  506.2 ;

Model genhumps  /all/;

Solve genhumps  using nlp minimize f;

display x.l         ;
display f.l         ;
