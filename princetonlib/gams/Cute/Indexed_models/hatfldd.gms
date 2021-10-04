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
*   "The OPTIMA user manual (issue No.8, p. 35)",
*   Numerical Optimization Centre, Hatfield Polytechnic (UK), 1989.

*   SIF input: Ph. Toint, May 1990.

*   classification SUR2-AN-3-0

$Set N  10
Set I  / i1*i%N% / ;
$Set M  10
Set J  / j1*j%M% / ;

Parameter  t(i)
    / i1 0.2  , i2 0.3  , i3 0.4  , i4 0.5  , i5 0.6  ,
      i6 0.7  , i7 0.75 , i8 0.8  , i9 0.85 ,i10 0.9 /;

Parameter  z(i)
   / i1 1.751   , i2 1.561   , i3 1.391   , i4 1.239   ,  i5 1.103   ,
     i6 0.981   , i7 0.925   , i8 0.8721  , i9 0.8221  , i10 0.7748 /;

Variable x(j) , obj ;

Equation Def_obj ;

Def_obj..
obj =e= sum{i,sqr( exp(t[i]*x['j3']) -
                   x['j1']*exp(t[i]*x['j2']) +
                   z[i]) };

x.l['j1'] =  1.0;
x.l['j2'] = -1.0;
x.l['j3'] =  0.0;


Model hatfldd /all/ ;

Solve hatfldd  using nlp minimazing obj ;

Display   x.l ;
Display obj.l ;
