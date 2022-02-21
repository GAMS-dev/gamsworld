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
                 i13    0.139626  ,
                 i14    0.261799  ,
                 i15    0.436332  ,
                 i16    0.565245  ,
                 i17    0.512942  ,
                 i18    0.610865  ,
                 i19    0.785398  ,
                 i20    0.959931  ,
                 i21    1.134464  ,
                 i22    1.308997  ,
                 i23    1.483530  ,
                 i24    1.658063  /;

Parameter Y[i] / i12    4.419446  ,
                 i13    3.564931  ,
                 i14    2.139067  ,
                 i15    0.404686  ,
                 i16    0.000000  ,
                 i17    0.035152  ,
                 i18    0.146813  ,
                 i19    2.718058  ,
                 i20    9.474417  ,
                 i21   26.132221  ,
                 i22   41.451561  ,
                 i23   72.283164  ,
                 i24  117.630959  /;

Variable A0 , A2 , A4 , A6 , A8 , A10 , K , L , palmer ;

Equation Def_obj ;

Def_obj..  palmer =e= sum{i, sqr(Y[i] - (A0 + A2*power(X[i],2 )+
                                              A4*power(X[i],4 )+
                                              A6*power(X[i],6 )+
                                              A8*power(X[i],8 )+
                                             A10*power(X[i],10) +
                                          L*exp(- K*X[i]*X[i])) )};
  K.lo= 0.03;
 A0.l = 1.0;
 A2.l = 1.0;
 A4.l = 1.0;
 A6.l = 1.0;
 A8.l = 1.0;
A10.l = 1.0;
  K.l = 0.03;
  L.l = 1.0;

Model palmer7e  /all/;

Solve palmer7e  using nlp minimazing  palmer;

display palmer.l ;

display A0.l ,A2.l ,A4.l ,A6.l ,A8.l ,A10.l ,K.l , L.l;
