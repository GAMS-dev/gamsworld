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
$Set M 23
Set I              /i%N%*i%M%/;

Parameter X[i] /i12   0.000000  ,
                i13   0.174533  ,
                i14   0.314159  ,
                i15   0.436332  ,
                i16   0.514504  ,
                i17   0.610865  ,
                i18   0.785398  ,
                i19   0.959931  ,
                i20   1.134464  ,
                i21   1.308997  ,
                i22   1.483530  ,
                i23   1.570796  / ;
Parameter Y[i] /i12   4.757534 ,
                i13   3.121416 ,
                i14   1.207606 ,
                i15   0.131916 ,
                i16   0.000000 ,
                i17   0.258514 ,
                i18   3.380161 ,
                i19  10.762813 ,
                i20  23.745996 ,
                i21  44.471864 ,
                i22  76.541947 ,
                i23  97.874528 / ;

Variable A0 , A2 , A4 , A6 , A8 , A10 , K , L , palmer ;
Equation Def_obj ;

Def_obj..  palmer =e= sum{i, sqr(Y[i] - (A0 +  A2*power(X[i],2 )+
                                            A4*power(X[i],4 )+
                                            A6*power(X[i],6 )+
                                            A8*power(X[i],8 )+
                                           A10*power(X[i],10) +
                                                L*exp(- K*X[i]*X[i])) )};


 A0.l = 0.0 ;
 A2.l = 0.0 ;
 A4.l = 0.0 ;
 A6.l = 0.0 ;
 A8.l = 0.0 ;
A10.l = 0.0 ;
  K.l = 0.0 ;
  L.l = 0.0 ;
  K.fx = 22.12 ;
 K.lo = 0.0000001 ;

Model palmer8e  /all/;

Solve palmer8e  using nlp minimazing  palmer;

display palmer.l ;

display A0.l , A2.l , A4.l , A6.l , A8.l , A10.l , K.l , L.l;
