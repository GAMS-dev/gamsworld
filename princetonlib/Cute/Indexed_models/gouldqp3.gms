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

*   Source: a problem of optimal knot placement in a scheme for
*   ordinary differential equations with boundary values suggested
*   by J. R. Kightley, see N. I. M. Gould, "An algorithm for
*   large-scale quadratic programming", IMA J. Num. Anal (1991),
*   11, 299-324, problem class 2.

*   SIF input: Nick Gould, December 1991

*   classification QLR2-MN-V-V

$Set K_0 351
$Set K   350
$Set K_1 349
$Set K_2 348
Set i /i1*i%K_0%/;
Set inside(i)  /i1*i%K%/;
Set inside1(i) /i1*i%K_1%/;
Set inside2(i) /i1*i%K_2%/;
Alias(i,j);
parameter alpha(i);

   alpha(i)    = 1.0 + exp(log(1.01)*ord(i))  ;
   alpha('i1') = 2.0                          ;

Variable knot(i) , space(i) , f ;
Equation cons1(i) , def_obj ;

cons1(i)$inside1(i)..   space[i]-knot[i+1]+knot[i] =e= 0;

def_obj..

f=e=  sum{i$inside2(i),(0.5*sqr(space[i+1]-space[i]))} +
      sum{i$inside1(i),(0.5*sqr(
     sum{j$(ord(j)=(350-ord(i))),knot(j) } +space(i)-
     sum{j$(ord(j)=(351-ord(i))),alpha(j)}
         )              )      }                          ;


knot.lo(i)$inside(i) = alpha(i)   ;
knot.up(i)$inside(i) = alpha(i+1) ;
knot.l(i)$inside(i)  = alpha(i)   ;

space.lo(i)$inside1(i) = 0.4*(alpha(i+2)-alpha(i)) ;
space.up(i)$inside1(i) = 0.6*(alpha(i+2)-alpha(i)) ;
space.l(i)$inside1(i)  = alpha(i+1)-alpha(i)       ;

Model gouldqp3 /all/;

Solve gouldqp3 using nlp minimize f;

display  knot.l  ;
display space.l  ;
display     f.l  ;
