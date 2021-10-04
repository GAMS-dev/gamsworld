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

*   classification QOR2-AN-V-V

$Set N  5000
$Set N1 4999
Set i /i1*i%N%/;
Set left(i) /i1*i%N1%/;
Set inside(i) /i2*i%N1%/;

$Set M 2
Set j /j1*j%M%/;

parameter h;  h = 1/%N%;

Variable x[i] , y[i,j] , f ;

Equation  Eq_1(i), Eq_2(i), Def_obj ;

Def_obj..
f=e=   5*h*(0.5*sqr(y['i1','j1'])+0.5*sqr(y['i1','j2'])+sqr(x['i1'])  +
         sum{i$inside(i),(sqr(y[i,'j1'])+sqr(y[i,'j2'])+sqr(x[i]))}   +
             0.5*sqr(y['i%n%','j1']) + 0.5*sqr(y['i%n%','j2']))       ;

Eq_1(i)$left(i).. -y[i+1,'j1']      +    (1+5*h)*y[i,'j1']-
                   5*h*y[i,'j2']    +     5*h*x[i]        -
                   5*h*y[i,'j1']*sqr(y[i,'j2'])             =e= 0     ;

Eq_2(i)$left(i)..  y[i,'j2'] - y[i+1,'j2'] + 5*h*y[i,'j1']  =e= 0     ;


y.fx['i1','j1'] =  0.0;
y.fx['i1','j2'] =  1.0;
x.lo[i]=-100;
x.up[i]= 100;
Model dtoc4 /all/;
Solve dtoc4  using nlp minimize f;

display x.l;
display y.l;
display f.l;
