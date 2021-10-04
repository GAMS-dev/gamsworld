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

*   classification SBR2-RN-4-0
$Set N 31
Set m /m1*m%N%/;

Parameter X(m)
 / m1 -1.788963  ,  m2 -1.745329  ,  m3 -1.658063  ,  m4 -1.570796   ,
   m5 -1.483530  ,  m6 -1.396263  ,  m7 -1.308997  ,  m8 -1.218612   ,
   m9 -1.134464  , m10 -1.047198  , m11 -0.872665  , m12 -0.698132   ,
  m13 -0.523599  , m14 -0.349066  , m15 -0.174533  , m16 0.0000000   ,
  m17 1.788963   , m18 1.745329   , m19 1.658063   , m20 1.570796    ,
  m21 1.483530   , m22 1.396263   , m23 1.308997   , m24 1.218612    ,
  m25 1.134464   , m26 1.047198   , m27 0.872665   , m28 0.698132    ,
  m29 0.523599   , m30 0.349066   , m31 0.174533 /;

Parameter Y(m)
/ m1 78.596218 ,  m2 65.77963 ,  m3 43.96947 ,  m4 27.038816 ,
  m5 14.6126   ,  m6 6.2614   ,  m7 1.538330 ,  m8 0.000000  ,
  m9 1.188045  , m10 4.6841   , m11 16.9321  , m12 33.6988   ,
 m13 52.3664   , m14 70.1630  , m15 83.4221  , m16 88.3995   ,
 m17 78.596218 , m18 65.77963 , m19 43.96947 , m20 27.038816 ,
 m21 14.6126   , m22 6.2614   , m23 1.538330 , m24 0.000000  ,
 m25 1.188045  , m26 4.6841   , m27 16.9321  , m28 33.6988   ,
 m29 52.3664   , m30 70.1630  , m31 83.4221  /;

Variable A , B , C , D , palmer ;
Equation Def_obj ;

Def_obj.. palmer =e= sum{ m,(sqr(Y[m]-(A*(sqr(X[m]))+B/(C+(sqr(X[m])) /D)))) };

                A.l = 1;
B.lo = 0.00001; B.l = 1;
C.lo = 0.00001; C.l = 1;
D.lo = 0.00001; D.l = 1;

Model palmer1 /all/ ;

Solve Palmer1 using nlp minimazing palmer ;

display A.l,B.l,C.l,D.l,palmer.l;
