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

*               Constrained Optimization version 2.

*   SIF input: Nick Gould, Nov 1992.

*   classification QQR2-AN-V-V

$Set M 10
$Set N 21
Set i /i1*i%N%/;
Set j(i) /i1*i%M%/;
Alias(i,k);
Alias(i,l);

parameter a(i,k) ; a(i,k) = 0;
a(i,k)$(ord(k) = ord(i) -1 ) =  1.0         ;
a(i,k)$(ord(k) = ord(i) +1 ) =  1.0         ;
a(i,k)$(ord(k) = ord(i)    ) = %M%+1-ord(i) ;

Variable d(i) ,q(i,k) , f ;
Equation Eq_1(i,l) , Eq_2(i) , Def_obj ;

Eq_1(i,l)$(ord(l) < ord(i)).. sum{k,(q[k,i]*q[k,l])} =e= 0.0 ;

Eq_2(i)..                     sum{k,(q[k,i]*q[k,i])} =e= 1.0 ;

Def_obj..
  f =e= sum{i,sum{j,sqr(sum{k,(q[i,j]*d[i]-a[i,k]*q[i,k])})}};

q.l(i,k)$(ord(i) = ord(k)) = 1 ;
d.l(i) = 1 ;

Model eigenc2 /all/;

Solve eigenc2 using nlp minimize f;

display a  ;
display d.l;
display q.l;
display f.l;
