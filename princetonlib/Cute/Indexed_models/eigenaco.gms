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

$Set N 10
Set i /i1*i%N%/;
Alias(i,j);
Alias(i,k);

parameter a(i,j); a(i,j) =ord(j)$(ord(i) = ord(j));

Variable d(i) , q(i,j) , f ;

Equation  cons(j,i), cons1(j), Def_obj ;

cons(j,i)$((ord(i) le ord(j)) and (ord(i) ne ord(j)))..
            sum{k,(q[k,i]*q[k,j])} =e= 0.0;

cons1(j)..  sum{k,(q[k,j]*q[k,j])} =e= 1.0;

Def_obj..  f=e=
       sum{j,sum{i$(ord(i)<=ord(j)),sqr(sum{k,(q[k,i]*q[k,j]*d[k])}-a[j,i])}};

d.l(i) = 1.0 ;

q.l(i,j)$(ord(i) = ord(j)) = 1.0 ;

Model eigenaco /all/;

Solve eigenaco using nlp minimize f;

display a  ;
display d.l;
display q.l;
display f.l;
