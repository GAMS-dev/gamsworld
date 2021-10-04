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

*   SIF input: N. Gould, Jan 1996

*   classification OUR2-AN-V-0

$Set N 10000
Set i /i1*i%N%/;

Variable      x[i],   f    ;

Equation  Def_obj ;

Def_obj.. f=e= sum {i$(ord(i) ne card(i)),cos(-0.5*x[i+1]+sqr(x[i]))};

x.l[i]  =   1.0    ;

Model COSINE /all/;

Solve COSINE using nlp minimize f;

display x.l;
display f.l;
