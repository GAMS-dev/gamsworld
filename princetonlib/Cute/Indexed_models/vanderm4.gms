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
*   A. Neumaier, private communication, 1991.

*   SIF input: Ph. L. Toint, May 1993.
*              minor correction by Ph. Shott, Jan 1995.

*   classification NOR2-AN-V-V

$Set N 9
Set I  / i1*i%N% / ;
Set Left(I)  / i2*i%N% / ;
Alias(i,k);

Parameter al(i) ; al(i) = power(0.5,(ord(i)-1))$Left(I)  ;

                  al('i1') = 1.0 ;

Parameter a(i) ; a(i)    = sum{k,exp(ord(i)*log(al[k]))} ;
                 a('i1') = sum{k,al[k]} ;

Variable x[i] , f ;

Equation cons1 , cons2(i) , cons3(i) ,  Def_obj ;

cons1..               sqr(sum{i,x[i]} - a['i1'])       =e= 0 ;
cons2(i)$Left(i)..    sqr(sum{k,(power(x[k],ord(i)) )}   - a[i]) =e= 0 ;
cons3(i)$Left(i)..  x[i] =g= x[i-1];

Def_obj..  f =e= 0 ;

x.l[i] = (ord(i)-1)/%N%;

Model vanderm4 /all/ ;

Solve vanderm4 using nlp minimazing f ;

display f.l;

display x.l;
