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
*   "The OPTIMA user manual (issue No.8, p. 49)",
*   Numerical Optimization Centre, Hatfield Polytechnic (UK), 1989.

*   SIF input: Ph. Toint, May 1990.

*   classification NOR2-AY-25-25

$Set N 25
$Set N1 24
Set I  / i1*i%N% / ;
Set Left(I)  / i2*i%N1% / ;

Variable x[i] , f ;

Equation cons(i) , cons2 , cons3 , Def_obj ;

cons(i)$Left(i)..  (x[i]*(x[i-1]-x[i+1])+x[i]-x['i13']+1 )     =e= 0 ;
cons2..            (x['i1']  -x['i13']+1-x['i1']*x['i2'])      =e= 0 ;
cons3..            (x['i%N%']-x['i13']+1+x['i%N1%']*x['i%N%']) =e= 0 ;

Def_obj..  f =e= 0 ;

x.l[i] =1 ;

Model hatfldg /all/ ;

Solve hatfldg  using nlp minimazing f ;

Display   x.l ;
Display   f.l ;
