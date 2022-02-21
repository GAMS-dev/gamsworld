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

*   classification OBR2-AN-V-V

$Set N 120
$Set N1 119
Set i /i1*i%N%/;
$Set M  10
$Set M1 11
Set Left(i)  /i1*i%M%/;
Set Right(i) /i%M1%*i%N1%/;

Variable x(i) , f ;

Equation Def_obj ;

Def_obj..
f =e= sum {i$Left(i) , exp(0.1*ord(i)*%m%*x[i]*x[i+1])                      } +
      sum {i$Right(i),(4.0*x[i]*x[i]+2.0*x['i%n%']*x['i%n%']+x[i]*x['i%n%'])} +
      sum {i         , (-10.0*ord(i)*x[i])                                  } ;

x.up(i)$Left(i) = 10 ;
x.lo(i)$Left(i) =  0 ;
x.l(i)          =  0 ;

Model expquad /all/;

Solve expquad using nlp minimize f;

display x.l;
display f.l;
