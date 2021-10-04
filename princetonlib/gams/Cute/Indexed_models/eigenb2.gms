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

*   Source:  An idea by Nick Gould

*               Nonlinear equations version 2.

*   SIF input: Nick Gould, Nov 1992.

*   classification QQR2-AN-V-V

$Set N 10
Set i /i1*i%N%/;
$Set M 10
Set j(i) /i1*i%M%/;
Alias(i,k);
Alias(i,l);

parameter a(i,k) ; a(i,k) = 0;

a(i,k)$(ord(i) =ord(k)-1) =  -1;
a(i,k)$(ord(i) =ord(k)+1) =  -1;
a(i,k)$(ord(i) =ord(k))   =   2;


Variable d(i) ,q(i,k) , f ;
Equation Eq_1(i,l) , Eq_2(i) , Def_obj ;

Eq_1(i,l)$(ord(l) < ord(i)).. sum{k,(q[k,i]*q[k,l])} =e= 0.0;

Eq_2(i)..                     sum{k,(q[k,i]*q[k,i])} =e= 1.0;

Def_obj..
  f =e= sum{i,sum{j,sqr(sum{k, (q[j,i]*d[j]-a[i,k]*q[j,k]) })}};

d.l(i) = 1 ;

q.l(i,k)$(ord(i) = ord(k)) = 1 ;

Model eigenb2 /all/;

Solve eigenb2 using nlp minimize f;

display a  ;
display d.l;
display q.l;
display f.l;
