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

*   classification QBR2-AN-V-0

$Set N 10000
Set i /i1*i%N%/;
Alias(i,j);

Variable      x[i], f    ;
Equation   Def_obj ;

Def_obj..

f=e= sum{i,(0.5*ord(i)*sqr( x[i]+
  sum{j$((mod((2*ord(i)-1),%N%)+1) eq ord(j)),x[j]}+
  sum{j$((mod((3*ord(i)-1),%N%)+1) eq ord(j)),x[j]}

        )   )              }/1000000;


x.lo[i] = 0.1;
x.up[i] =10.0;
x.l[i]  = 0.5;
Model cvxbqp1 /all/;

Solve cvxbqp1 using nlp minimize f;


display x.l;
display f.l;
