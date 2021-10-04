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

*   Source: p. 144 in
*   J.C. Nash,
*   "Compact numerical methods for computers"
*   (2nd edition), Adam Hilger, 1990.

*   SIF input: J.C. Nash and Ph. Toint, June 1992.

*   classification SBR2-RN-3-0

$Set M  12
Set I  / i1*i%M% / ;


set M := 1..m;

Parameter    Y[i]  / i1  5.308 ,  i2  7.24  ,  i3  9.638 ,
                     i4 12.866 ,  i5 17.069 ,  i6 23.192 ,
                     i7 31.443 ,  i8 38.558 ,  i9 50.156 ,
                    i10 62.948 , i11 75.995 , i12 91.972 / ;
Parameter  Time[i] / i1  1     ,  i2  2     ,  i3  3     ,
                     i4  4     ,  i5  5     ,  i6  6     ,
                     i7  7     ,  i8  8     ,  i9  9     ,
                    i10 10     , i11 11     , i12 12     / ;
Variable B1 , B2 , B3 , expt[i] , L2_fit ;

Equation Eq[i] , Def_obj ;

Eq[i]..  expt[i] =e= exp(-1 * (B2 + ( B3 *  Time[i])));

Def_obj..  L2_fit =e=
         sum{i, (sqr(Y[i] - B1 / (1 + expt[i]) ) )};

B1.l  = 1 ;
B2.l  = 1 ;
B3.l  = 1 ;
B3.up = 3 ;

Model weeds /all/ ;

Solve weeds  using nlp minimazing L2_fit ;

Display L2_fit.l ;
