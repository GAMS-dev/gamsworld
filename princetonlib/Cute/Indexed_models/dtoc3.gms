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

*   classification QLR2-AN-V-V

$Set N  5000
$Set N1 4999
Set i /i1*i%N%/;
Set left(i) /i1*i%N1%/;
$Set M 2
Set j /j1*j%M%/;

parameter s;  s = 1/%N%;

Variable x[i] , y[i,j] , f ;

Equation  Eq_1(i), Eq_2(i), Def_obj ;

Eq_1(i)$left(i)..    y[i,'j1']-y[i+1,'j1']+s*y[i,'j2']        =e= 0;

Eq_2(i)$left(i)..    y[i,'j2']-y[i+1,'j2']-s*y[i,'j1']+s*x[i] =e= 0;

Def_obj..
   f=e=0.5*s*(sum{i$left(i),(2*sqr(y[i+1,'j1'])+sqr(y[i+1,'j2'])+6*sqr(x[i]))});

y.fx['i1','j1'] = 15.0;
y.fx['i1','j2'] =  5.0;
x.lo[i] = -100;
x.up[i] =  100;

Model dtoc3 /all/;

Solve dtoc3  using nlp minimize f;


display x.l;
display y.l;
display f.l;
