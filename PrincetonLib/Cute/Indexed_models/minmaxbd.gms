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

*   Source: Problem 16 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#30
*   SDIF input: Ph. Toint, Dec 1989, modified by Nick Gould, Oct 1992.

*   classification LOR2-AN-5-20

$Set M 20
$Set N 4

Set j /j1*j%M%/ ;
Set i /i1*i%N%/ ;

Parameter x_init(i) / i1 25 , i2 5 , i3 -5 , i4 -1 /;

Parameter t(j) ; t(j) = ord(j) / 5 ;

Variable x(i) , u , f ;

Equation cons1(j) , Def_obj ;

cons1(j).. sqr(x['i1']+t[j]*x['i2'] - exp(t[j])      ) +
           sqr(x['i3']+x['i4']*sin(t[j]) - cos(t[j]) ) - u =l= 0;

Def_obj.. f =e= u ;

x.l(i) = x_init(i) ;

Model minmaxbd /all/ ;

Solve minmaxbd  using nlp minimazing f ;

display f.l;
display x.l;
display u.l;
