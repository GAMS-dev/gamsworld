* Cute AMPL model  (translation to GAMS)
*
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
*   An error in specifying problem CHNROSNB.
*   SIF input: Ph. Toint, Sept 1990.

*   classification SUR2-AN-V-0

$Set N 50
Set i /i1*i%N%/;

Set right(i) /i2*i%N%/;

parameter alpha(i)  / i1 1.25 , i2 1.40 ,i3 2.40  , i4 1.40 , i5 1.75 ,
                      i6 1.20 , i7 2.25 ,i8 1.20  , i9 1.00 ,i10 1.10 ,
                     i11 1.50 ,i12 1.60 ,i13 1.25 ,i14 1.25 ,i15 1.20 ,
                     i16 1.20 ,i17 1.40 ,i18 0.50 ,i19 0.50 ,i20 1.25 ,
                     i21 1.80 ,i22 0.75 ,i23 1.25 ,i24 1.40 ,i25 1.60 ,
                     i26 2.00 ,i27 1.00 ,i28 1.60 ,i29 1.25 ,i30 2.75 ,
                     i31 1.25 ,i32 1.25 ,i33 1.25 ,i34 3.00 ,i35 1.50 ,
                     i36 2.00 ,i37 1.25 ,i38 1.40 ,i39 1.80 ,i40 1.50 ,
                     i41 2.20 ,i42 1.40 ,i43 1.50 ,i44 1.25 ,i45 2.00 ,
                     i46 1.50 ,i47 1.25 ,i48 1.40 ,i49 0.60 ,i50 1.50 /;
Variable x(i) , f ;
Equation Def_obj ;

Def_obj..  f=e=  sum{i$right(i),sqr(x[i-1]-16*sqr(alpha[i])*sqr(x[i]))} +
                 sum{i$right(i),sqr(x[i]-1.0)} ;

x.l[i]  =  -1 ;

Model errinros /all/;

Solve errinros using nlp minimize f;

display x.l;
display f.l;
