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

*   Source:
*   Ph. Toint

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set P  3
Set I  / i1*i%P% / ;

Alias(i,j);
Alias(i,k);

Parameter B[i,j] ;
B[i,j] =  sin( sqr((ord(i)-1)*%P% + ord(j)) );
B['i3','i1'] = 0.0 ;

Parameter A[i,j] ; A[i,j] = sum{k, B[i,k]*B[k,j] };

Variable x[i,j] , f ;

Equation Def_obj ;

Def_obj..  f =e= sum{(i,j),sqr(sum {k, x[i,k]*x[i,j]} - A[i,j] ) } ;

x.l[i,j] = 0.2*B[i,j] ;
x.l[i,j]$((ord(i) eq 3) and (ord(j) eq 1))=-0.8*sin(sqr((ord(i)-1)*%P%+ord(j)));

Model nonmsqrt /all/ ;

Solve nonmsqrt using nlp minimazing f ;

display f.l;
display x.l;
