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
$Set N1 14
$Set M 23
Set I              /i%N%*i%M%/;
Set J              /j0*j%N1%/;

Parameter X[i] / i12    0.000000  ,
                 i13    1.570796  ,
                 i14    1.396263  ,
                 i15    1.308997  ,
                 i16    1.221730  ,
                 i17    1.125835  ,
                 i18    1.047198  ,
                 i19    0.872665  ,
                 i20    0.698132  ,
                 i21    0.523599  ,
                 i22    0.349066  ,
                 i23    0.174533  /;
Parameter Y[i] / i12   83.57418   ,
                 i13   81.007654  ,
                 i14   18.983286  ,
                 i15    8.051067  ,
                 i16    2.044762  ,
                 i17    0.000000  ,
                 i18    1.170451  ,
                 i19   10.479881  ,
                 i20   25.785001  ,
                 i21   44.126844  ,
                 i22   62.822177  ,
                 i23   77.719674  /;


Parameter     b ;    b = X['i13'] ;
Parameter     a ;    a =    -b    ;
Parameter  diff ; diff =   2*b    ;

Parameter t[i,j] ;
  loop(i, t[i,'j0'] = 1.0               );
  loop(i, t[i,'j1'] = (2*X[i]-a-b)/diff );
  loop(i,loop(j$(ord(j)>2),
  t[i,j]    = 2*t[i,j-1]*(2*X[i]-a-b)/diff - t[i,j-2] ;
      ););

Variable A0 , A2 , A4 , A6 , A8 , A10 , K , L , palmer ;

Equation Def_obj ;


Def_obj..  palmer =e= sum{i, sqr(Y[i] - (A0*t[i,'j0'] +  A2*t[i,'j2']  +
                                         A4*t[i,'j4'] +  A6*t[i,'j6']  +
                                         A8*t[i,'j8'] + A10*t[i,'j10'] +
                                                  L*exp(-K*X[i]*X[i])) )};

  K.lo =  0.21    ;

 A0.l  =  1.9264e+01 ;
 A2.l  = -1.7302e+00 ;
 A4.l  =  4.0794e+01 ;
 A6.l  =  8.3021e-01 ;
 A8.l  =  3.7090e+00 ;
A10.l  = -1.7723e-01 ;
  K.l  =  1.0        ;
  L.l =   1.0        ;
Model palmer5e  /all/;

solve palmer5e  using nlp minimazing  palmer;

display A0.l , A2.l , A4.l , A6.l , A8.l , A10.l , K.l , L.l , palmer.l ;
