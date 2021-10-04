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


$Set N 1000
$Set M  750
$Set K   750
$Set K1  751

Set i/i1*i%N%/;
Set M_left(i) /i1*i%M%/;
Set Nplus_l(i) /i1*i%K%/;
Set Nplus_r(i) /i%K1%*i%N%/;

Alias(i,j);

Variable x(i) , f ;

Equation cons1(i) ,  Def_obj ;

cons1(i)$M_left(i)..
 x[i]+2*sum(j$(ord(j) eq ( mod((4*ord(i)-1),%N%) +1 )),x(j)) +
      3*sum(j$(ord(j) eq ( mod((5*ord(i)-1),%N%) +1 )),x(j)) =e= 6;

Def_obj..  f =e=
  sum{i$Nplus_l(i),(0.0000005*ord(i)*sqr(x[i]+
               sum(j$(ord(j) eq (mod((2*ord(i)-1),%N%)+1)),x(j)) +
               sum(j$(ord(j) eq (mod((3*ord(i)-1),%N%)+1)),x(j))
  ) )} -
  sum{i$Nplus_r(i),(0.0000005*ord(i)*sqr(x[i]+
               sum(j$(ord(j) eq (mod((2*ord(i)-1),%N%)+1)),x(j)) +
               sum(j$(ord(j) eq (mod((3*ord(i)-1),%N%)+1)),x(j))
  ) )} ;

x.lo(i) =  0.1 ;
x.up(i) = 10.0 ;
x.l(i)  =  0.5 ;

Model ncvxbqp9 /all/ ;
Solve ncvxbqp9 using nlp minimazing f ;
f.l:=f.l*1000000;
display f.l;
