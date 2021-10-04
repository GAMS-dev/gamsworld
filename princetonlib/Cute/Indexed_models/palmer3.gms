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

$Set M 23
Set I              /i1*i%M%/;

Parameter X[i]  / i1 -1.658063 ,  i2    -1.570796 ,  i3    -1.396263 ,
                  i4 -1.221730 ,  i5    -1.047198 ,  i6    -0.872665 ,
                  i7 -0.766531 ,  i8    -0.698132 ,  i9    -0.523599 ,
                 i10 -0.349066 , i11    -0.174533 , i12     0.0      ,
                 i13  0.174533 , i14     0.349066 , i15     0.523599 ,
                 i16  0.698132 , i17     0.766531 , i18     0.872665 ,
                 i19  1.047198 , i20     1.221730 , i21     1.396263 ,
                 i22  1.570796 , i23     1.658063 / ;

Parameter Y[i]  / i1 64.87939  ,  i2    50.46046  ,  i3     28.2034  ,
                  i4 13.4575   ,  i5     4.6547   ,  i6     0.59447  ,
                  i7  0.0000   ,  i8     0.2177   ,  i9     2.3029   ,
                 i10  5.5191   , i11     8.5519   , i12     9.8919   ,
                 i13  8.5519   , i14     5.5191   , i15     2.3029   ,
                 i16  0.2177   , i17     0.0000   , i18     0.59447  ,
                 i19  4.6547   , i20    13.4575   , i21     28.2034  ,
                 i22 50.46046  , i23    64.87939  / ;
Positive Variable  B , C , D
         Variable  A , palmer ;
Equation Def_obj ;
Def_obj.. palmer =e= sum{i,sqr(Y[i]-(A*sqr(X[i])+(B/(C+sqr(X[i])/D))))} ;


A.l = 1.0;
B.l = 1.0;
C.l = 1.0;
D.l = 1.0;

Model palmer3  /all/;

solve palmer3  using nlp minimazing  palmer;

display A.l , B.l , C.l , D.l;
display palmer.l ;
