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

$Set N 1000
$Set M 999
Set i /i1*i%N%/;
Set left(i) /i1*i%M%/;
$Set nx 2
Set j /j1*j%nx%/;
$Set ny 4
Set k /k1*k%ny%/;

parameter c(k,j); c(k,j) = (ord(k)+ord(j))/(2*%ny%)

Variable x(i,j),y(i,k),f;

Equation Eq_1(i,k), Def_obj;

Eq_1(i,k)$left(i).. sin(y[i,k])+sum{j,(c[k,j]*(sin(x[i,j])))}-y[i+1,k]=e=0;

Def_obj..
 f=e=sum{i$left(i),(sum{k,sqr(y[i,k])})*(sqr(sin(0.5*sum{j,sqr(x[i,j])}))+1.0)}+
     sum{k,sqr(y['i%N%',k])};

y.fx['i1',k] = ord(k)/2/(%ny%);

Model dtoc2 /all/;

Solve dtoc2 using nlp minimize f;
Solve dtoc2 using nlp minimize f;
display x.l;
display y.l;
display f.l;
