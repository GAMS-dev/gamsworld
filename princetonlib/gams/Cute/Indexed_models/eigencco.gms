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

*            Constrained optimization version

*   SIF input: Nick Gould, Nov 1992.

*   classification SQR2-AN-V-V

$Set N 5
Set i /i1*i%N%/;
$Set M 2
Set j(i) /i1*i%M%/;
Alias(i,k);
Alias(i,l);

parameter a(i,k) ; a(i,k) = 0;

a(i,k) =  (%m%+1-ord(i))$(ord(k) =ord(i));
a(i,k)$(ord(k) = ord(i) -1 ) =  1.0    ;

Variable d(i) ,q(i,k) , f ;

Equation Eq_1(i,l) , Eq_2(i) , Def_obj ;

Eq_1(i,l)$(ord(l) < ord(i)).. sum{k,(q[k,i]*q[k,l])} =e= 0.0;

Eq_2(i)..                     sum{k,(q[k,i]*q[k,i])} =e= 1.0;

Def_obj..
  f =e= sum{i,sum{j$(ord(j) le ord(i)),sqr(sum{k,q[k,i]*q[k,j]*d[k]}-a[i,j])}};


d.l(i) = 1 ;

q.l(i,k)$(ord(i) = ord(k)) = 1 ;

* below answers from the same AMPL model
*d.fx('i1')      =  2.746 ;
*d.fx('i2')      =  1.2077;
*d.fx('i3')      = -0.000000001;
*d.fx('i4')      = -1.2077;
*d.fx('i5')      = -2.74615;

Model eigencco /all/;

Solve eigencco using dnlp minimize f;

display a  ;
display d.l;
display q.l;
display f.l;
