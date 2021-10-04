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

*   classification QUR2-RN-8-0

$Set N 23
Set m /m1*m%N%/;

Parameter X(m) / m1     -1.745329  ,  m2     -1.570796  ,  m3    -1.396263  ,
                 m4     -1.221730  ,  m5     -1.047198  ,  m6    -0.937187  ,
                 m7     -0.872665  ,  m8     -0.698132  ,  m9    -0.523599  ,
                m10     -0.349066  , m11     -0.174533  , m12     0.0       ,
                m13      0.174533  , m14      0.349066  , m15     0.523599  ,
                m16      0.698132  , m17      0.872665  , m18     0.937187  ,
                m19      1.047198  , m20      1.221730  , m21     1.396263  ,
                m22      1.570796  , m23      1.745329  /;

Parameter Y(m) / m1     72.676767  ,  m2     40.149455  ,  m3    18.8548    ,
                 m4      6.4762    ,  m5      0.8596    ,  m6     0.00000   ,
                 m7      0.2730    ,  m8      3.2043    ,  m9     8.1080    ,
                m10    13.4291     , m11    17.714      , m12    19.4529    ,
                m13    17.7149     , m14    13.4291     , m15     8.1080    ,
                m16     3.2053     , m17     0.2730     , m18     0.00000   ,
                m19     0.8596     , m20     6.4762     , m21    18.8548    ,
                m22    40.149455   , m23    72.676767   /;


Variable A0 , A2 , A4 , A6 , A8 , A10 , A12 , A14 , palmer ;
Equation Def_obj ;

Def_obj..  palmer =e= sum{m, sqr( Y[m] -(A0 + A2*power(X[m], 2) +
                                              A4*power(X[m], 4) +
                                              A6*power(X[m], 6) +
                                              A8*power(X[m], 8) +
                                             A10*power(X[m],10) +
                                             A12*power(X[m],12) +
                                             A14*power(X[m],14))) };


 A0.l = 1.0 ;
 A2.l = 1.0 ;
 A4.l = 1.0 ;
 A6.l = 1.0 ;
 A8.l = 1.0 ;
A10.l = 1.0 ;
A12.l = 1.0 ;
A14.l = 1.0 ;

Model palmer2c /all/ ;

Solve palmer2c using nlp minimazing palmer ;

display A0.l , A2.l , A4.l , A6.l , A8.l , A10.l , A12.l , A14.l , palmer.l ;
