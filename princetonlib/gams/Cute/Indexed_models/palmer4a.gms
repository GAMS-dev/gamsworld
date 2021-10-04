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
*   M. Palmer, Edinburgh, private communication.

*   SIF input: Nick Gould, 1990.

*   classification SBR2-RN-6-0

$Set M 23
Set I              /i1*i%M%/;
Parameter X[i] / i1    -1.658063   , i2    -1.570796   , i3    -1.396263   ,
                 i4    -1.221730   , i5    -1.047198   , i6    -0.872665   ,
                 i7    -0.741119   , i8    -0.698132   , i9    -0.523599   ,
                i10    -0.349066   ,i11    -0.174533   ,i12     0.0        ,
                i13     0.174533   ,i14     0.349066   ,i15     0.523599   ,
                i16     0.698132   ,i17     0.741119   ,i18     0.872665   ,
                i19     1.047198   ,i20     1.221730   ,i21     1.396263   ,
                i22     1.570796   ,i23     1.658063   / ;

Parameter Y[i] / i1   67.27625     , i2   52.8537      , i3   30.2718      ,
                 i4   14.9888      , i5    5.5675      , i6    0.92603     ,
                 i7    0.0         , i8    0.085108    , i9    1.867422    ,
                i10    5.014768    ,i11    8.263520    ,i12    9.8046208   ,
                i13    8.263520    ,i14    5.014768    ,i15    1.867422    ,
                i16    0.085108    ,i17    0.0         ,i18    0.92603     ,
                i19    5.5675      ,i20   14.9888      ,i21   30.2718      ,
                i22   52.8537      ,i23   67.27625     / ;

Positive Variable B , C ;
         Variable A0 , A2 , A4 , A6 , B , C , palmer ;

Equation Def_obj ;

Def_obj..  palmer =e= sum{i, sqr(Y[i] - (A0 + A2*sqr(X[i])     +
                                              A4*power(X[i],4) +
                                              A6*power(X[i],6) +
                                                        B/(C+sqr(X[i]))) ) };
 A0.l = 1.0 ;
 A2.l = 1.0 ;
 A4.l = 1.0 ;
 A6.l = 1.0 ;
  B.l = 1.0 ;
  C.l = 1.0 ;

Model palmer4a  /all/;

solve palmer4a  using nlp minimazing  palmer;

display palmer.l ;

display A0.l , A2.l , A4.l , A6.l , B.l , C.l;
