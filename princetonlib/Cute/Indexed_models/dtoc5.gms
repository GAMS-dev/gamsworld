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

*   classification QQR2-AN-V-V

$Set N  5000
$Set N1 4999

Set i /i1*i%N%/;
Set left(i) /i1*i%N1%/;

Parameter h;  h = 1/%N%;

Variable x[i] , y[i] , f ;

Equation Eq_1(i) , Def_obj;

Eq_1(i)$left(i).. h*sqr(y[i])+y[i]-y[i+1]-h*x[i] =e= 0;

Def_obj.. f=e=sum{i$left(i),(sqr(y[i])+sqr(x[i]))/%n%};

y.fx['i1'] = 1.0;

Model dtoc5 /all/;

Solve dtoc5  using nlp minimize f;
Solve dtoc5  using nlp minimize f;
Solve dtoc5  using nlp minimize f;

display x.l;
display y.l;
display f.l;
