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

*   classification OUR2-AN-V-0

$Set N  1000
Set i/i1*i%N%/;
Alias(i,j);

Variable x(i) , obj ;

Equation  Def_obj ;

Def_obj..  obj =e= 0.000001*
  sum{i, (sqr(x[i] + sum(j$(ord(j) eq ( mod((3*ord(i)-2),%N%) +1 )),x(j))
                 + sum(j$(ord(j) eq ( mod((7*ord(i)-3),%N%) +1 )),x(j))
             ) +
          4*cos(x[i] + sum(j$(ord(j) eq ( mod((3*ord(i)-2),%N%) +1 )),x(j)) +
                       sum(j$(ord(j) eq ( mod((7*ord(i)-3),%N%) +1 )),x(j))
               )
     )   } ;

x.l(i)                    = ord(i);

Model noncvxu2 /all/ ;
Solve noncvxu2 using nlp minimazing obj ;

obj.l = obj.l*100000;

display obj.l;
