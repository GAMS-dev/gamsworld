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

*   classification OBR2-MN-V-0

$Set N 120
$Set N1 119
Set I / i1*i%N% / ;
$Set M 10
$Set M1 11
Set Left(I) / i1*i%M% / ;
Set Right(I) / i%M1%*i%N1% / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..
f=e=sum{i$Left(i) ,((ord(i)/%M%)*POWER((x[i]*x[i+1]),4)-10*ord(i)*x[i])}+
    sum{i$Right(i),(4*sqr(x[i])+2*sqr(x['i%N%'])+x[i]*x['i%N%']-10*ord(i)*x[i])};

x.lo[i]$Left(i)  =  0.0 ;
x.up[i]$Left(i)  = 10.0 ;
x.l[i] =   0.0 ;

Model qrtquad /all/ ;

Solve qrtquad  using nlp minimazing f ;

display f.l; display x.l;
