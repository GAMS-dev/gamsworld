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

*   classification OXR2-MY-64-0

$Set N 8
$Set M 7
Set i /i1*i%N%/;
Alias(i,ii);
Set Left1(i)  /i1*i%M%/;
Set Left2(ii) /i1*i%M%/;

Variable x(i,ii) , A(i,ii) , B(i,ii) , f ;
Equation Eq_1(i,ii) , Eq_2(i,ii) , Def_obj ;

Eq_1(i,ii)$((left1(i))and(left2(i))).. A(i,ii) =e=sqr(x[i,ii]   -x[i+1,ii+1] );
Eq_2(i,ii)$((left1(i))and(left2(i))).. B(i,ii) =e=sqr(x[i,ii+1] -x[i+1,ii]   );
Def_obj..
    f =e= sum{i$left1(i),sum{ii$left2(ii),
              sqrt((1+0.5*A[i,ii]*sqr(%m%)+0.5*B[i,ii]*sqr(%m%)) )/sqr(%m%) }};

x.fx['i1',ii] = 1.0;
x.fx['i%n%',ii] = 1.0;
x.fx[i,'i1'] = 1.0;
x.fx[i,'i%n%'] = 1.0;

Model minsurf /all/ ;

Solve minsurf  using nlp minimazing f ;

display f.l;
