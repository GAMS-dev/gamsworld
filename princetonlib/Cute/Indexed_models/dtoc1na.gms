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

*   classification OQR2-AN-V-V

$Set NX 5
$Set NY 10
$Set NY1 9
$Set N 100
$Set N1 99

Set j /j1*j%NX%/;
Set i /i1*i%NY%/;
Alias(i,ii);
Set k /k1*k%N%/;
Set Left(k) /k1*k%N1%/;
Set inside(i) /i2*i%NY1%/;
parameter mu; mu = 0.005;

parameter b[i,j]; b[i,j]= (ord(i)-ord(j))/(%nx%+%ny%);
parameter c[i,j]; c[i,j]= (ord(i)+ord(j))*mu/(%nx%+%ny%);

Variable x[k,j],y[k,i],f;

Equation cons1(k), cons2(k,ii), cons3(k), Def_obj ;

cons1(k)$(ord(k) ne card(k))..

 sum(j,x[k,j]*sum{i,c[i,j]*y[k,i]})+

 0.5*y[k,'i1'] +   0.25*y[k,'i2'] - y[k+1,'i1'] +
                       sum{j,(b['i1',j]*x[k,j])}        =e= 0;


cons2(k,ii)$((ord(k) ne card(k))and(inside(ii)))..
  sum(j,x[k,j]*sum{i,c[i,j]*y[k,i]})
 -y[k+1,ii]+0.5*y[k,ii]-0.25*y[k,ii-1]+0.25*y[k,ii+1]+
                                 sum {j,b[ii,j]*x[k,j]}  =e= 0;

cons3(k)$(ord(k) ne card(k))..
 sum(j,x[k,j]*sum{i,c[i,j]*y[k,i]})+
 0.5*y[k,'i%ny%'] - 0.25*y[k,'i9'] - y[k+1,'i%ny%'] +
                                sum {j,b['i%ny%',j]*x[k,j]}  =e= 0;

Def_obj.. f=e=
        sum { (k,j)$Left(k), sqr(sqr(x[k,j] + 0.5 ))} +
        sum { (k,i)        , sqr(sqr(y[k,i] + 0.25))}  ;

y.fx['k1',i] = 0;

Model dtoc1na /all/;

Solve dtoc1na  using nlp minimize f;

display x.l;
display f.l;
