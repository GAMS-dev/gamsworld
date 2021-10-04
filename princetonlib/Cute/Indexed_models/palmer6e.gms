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
*   M.  Palmer, Edinburgh, private communication.

*   SIF input: Nick Gould, 1992.

*   classification SBR2-RN-8-0

$Set N 12
$Set M 24
Set I              /i%N%*i%M%/;

Parameter X[i] / i12    0.000000  ,
                 i13    1.570796  ,
                 i14    1.396263  ,
                 i15    1.221730  ,
                 i16    1.047198  ,
                 i17    0.872665  ,
                 i18    0.785398  ,
                 i19    0.732789  ,
                 i20    0.698132  ,
                 i21    0.610865  ,
                 i22    0.523599  ,
                 i23    0.349066  ,
                 i24    0.174533  /;

Parameter Y[i] / i12   10.678659  ,
                 i13   75.414511  ,
                 i14   41.513459  ,
                 i15   20.104735  ,
                 i16    7.432436  ,
                 i17    1.298082  ,
                 i18    0.171300  ,
                 i19    0.000000  ,
                 i20    0.068203  ,
                 i21    0.774499  ,
                 i22    2.070002  ,
                 i23    5.574556  ,
                 i24    9.026378  /;

Variable A0 , A2 , A4 , A6 , A8 , A10 , K , L , palmer ;

Equation Def_obj ;

Def_obj..  palmer=e= sum{i, sqr(Y[i] - (A0 + A2*power(X[i],2 ) +
                                             A4*power(X[i],4 ) +
                                             A6*power(X[i],6 ) +
                                             A8*power(X[i],8 ) +
                                            A10*power(X[i],10) +
                                                  L*exp(-K*X[i]*X[i])) )};
  K.lo = 0.00001 ;
 A0.l  = 1.0 ;
 A2.l  = 1.0 ;
 A4.l  = 1.0 ;
 A6.l  = 1.0 ;
 A8.l  = 1.0 ;
A10.l  = 1.0 ;
  K.l  = 1.0 ;
  L.l  = 1.0 ;

Model palmer6e  /all/;

Solve palmer6e  using nlp minimazing  palmer;

display palmer.l ;

display A0.l , A2.l , A4.l , A6.l , A8.l , A10.l , K.l , L.l ;
