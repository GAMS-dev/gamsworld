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

*   classification QBR2-AN-V-0

$Set N 10000
$Set M  5000
$Set K   2500
$Set K1  2501

Set i/i1*i%N%/;
Set Nplus_l(i) /i1*i%K%/;
Set Nplus_r(i) /i%K1%*i%N%/;
Set M_left(i) /i1*i%M%/;

Alias(i,j);


Variable x(i) , f ;

Equation  Def_obj ;

Def_obj..  f =e=
  sum{i$Nplus_l(i),(0.0000005*ord(i)*sqr(x[i]+
               sum(j$(ord(j) eq ( mod((2*ord(i)-1),%N%) )+1),x(j)) +
               sum(j$(ord(j) eq ( mod((3*ord(i)-1),%N%) )+1),x(j))
  ) )} -
  sum{i$Nplus_r(i),(0.0000005*ord(i)*sqr(x[i]+
               sum(j$(ord(j) eq ( mod((2*ord(i)-1),%N%) )+1),x(j)) +
               sum(j$(ord(j) eq ( mod((3*ord(i)-1),%N%) )+1),x(j))
  ) )} ;




x.lo(i) =  0.1 ;
x.up(i) = 10.0 ;
x.l(i)  =  0.5 ;
Model ncvxbqp1 /all/ ;
ncvxbqp1.workspace=100 ;
Solve ncvxbqp1 using nlp minimazing f ;

display f.l;
