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
*   "The OPTIMA user manual (issue No.8, p. 37)",
*   Numerical Optimization Centre, Hatfield Polytechnic (UK), 1989.

*   SIF input: Ph. Toint, May 1990.

*   classification SUR2-AN-3-0

$Set N  10
Set I  / i1*i%N% / ;
$Set M  10
Set J  / j1*j%M% / ;

Parameter  t(i)
 / i1 0.3    , i2 0.35   , i3 0.4    , i4 0.45   , i5 0.5   ,
   i6 0.55   , i7 0.6    , i8 0.65   , i9 0.7    ,i10 0.75
* i11 0.8    ,i12 0.85   ,i13 0.9    ,i14 0.95   ,i15 1.0   ,
* i16 1.05   ,i17 1.1    ,i18 1.15   ,i19 1.2    ,i20 1.25  ,
* i21 1.3
    / ;
Parameter  z(i)
 / i1 1.561   , i2 1.473   , i3 1.391   , i4 1.313   , i5 1.239   ,
   i6 1.169   , i7 1.103   , i8 1.04    , i9 0.981   , i10 0.925
* i11 0.8721  ,i12 0.8221  ,i13 0.7748  ,i14 0.73    ,i15 0.6877 ,
* i16 0.6477  ,i17 0.6099  ,i18 0.5741  ,i19 0.5403  ,i20 0.5084 ,
* i21 0.4782
 / ;

Variable x(j) , obj ;

Equation Def_obj ;

Def_obj..
      obj =e= sum{i,sqr(exp(t[i]*x['j3'])-x['j1']*exp(t[i]*x['j2'])+z[i]) } ;

 x.l['j1'] =  1.0 ;
 x.l['j2'] = -1.0 ;
 x.l['j3'] =  0.0 ;

Model hatflde /all/ ;

Solve hatflde  using nlp minimazing obj ;

Display   x.l ;
Display obj.l ;
