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
*   Hans Mittelmann, private communication.

*   SIF input: N. Gould, Jan 1998

*   classification OOR2-AY-V-0

$Set N 250
$Set N_1 249

Set i /i1*i%N%/;
Set left(i) /i1*i%N_1%/;
Alias(i,j);
Set right(j) /i2*i%N%/;


Variable  x(i) , f ;

Equation  Eq_1(i) , Eq_2(i) , Def_obj ;

Eq_1(i)$left(i)..      x[i]   +      x[i+1] =g=  0.0;

Eq_2(i)$left(i)..  exp(x[i])  + exp(x[i+1]) =l= 20.0;

Def_obj..         f =e= sum{i$left(i),sum{j$(ord(j) gt ord(i)),exp(x[j]-x[i])}};

x.l(i)    = 0.9 ;

Model gpp /all/;

Solve gpp using nlp minimize f;

display x.l         ;
display f.l         ;
