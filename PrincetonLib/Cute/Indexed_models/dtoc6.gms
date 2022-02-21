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

*   classification OOR2-AN-V-V

$Set N  5001
$Set N1 5000

Set i /i1*i%N%/;
Set left(i) /i1*i%N1%/;

Variable x[i] , y[i] , f ;

Equation Eq_1(i) , Def_obj;

Eq_1(i)$left(i)..  y[i] - y[i+1] + exp(x[i]) =e= 0;

Def_obj.. f=e=  sum{i$left(i),(0.5*sqr(exp(x[i])+y[i])+0.5*sqr(x[i]))}/1000;

y.fx['i1'] = 0.0;

Model dtoc6 /all/;

Solve dtoc6  using nlp minimize f;

f.l=f.l*1000;
display x.l;
display y.l;
display f.l;
