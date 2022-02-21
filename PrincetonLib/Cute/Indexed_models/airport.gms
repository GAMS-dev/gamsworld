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
*   Contribution from a LANCELOT user.

*   SIF input : Rodrigo de Barros Nabholz & Maria Aparecida Diniz Ehrhardt
*               November 1994, DMA - IMECC- UNICAMP
*   Adaptation for CUTE: Ph. Toint, November 1994.

*   classification SQR2-MN-84-42
$Set N 42
Set i /1*%N%/;
Alias(i,j);
Variable  x[i],y[i], f   ;

parameter r[i] / 1  0.090, 2  0.300, 3  0.090, 4  0.450, 5  0.500,
                 6  0.040, 7  0.100, 8  0.020, 9  0.020,10  0.070,
                11  0.400,12  0.045,13  0.050,14  0.056,15  0.360,
                16  0.080,17  0.070,18  0.360,19  0.670,20  0.380,
                21  0.370,22  0.050,23  0.400,24  0.660,25  0.050,
                26  0.070,27  0.080,28  0.300,29  0.310,30  0.490,
                31  0.090,32  0.460,33  0.120,34  0.070,35  0.070,
                36  0.090,37  0.050,38  0.130,39  0.160,40  0.460,
                41  0.250,42  0.100 /;

parameter cx[i] / 1  -6.3, 2  -7.8, 3  -9.0, 4  -7.2, 5  -5.7,
                  6  -1.9, 7  -3.5, 8  -0.5, 9   1.4,10   4.0,
                 11   2.1,12   5.5,13   5.7,14   5.7,15   3.8,
                 16   5.3,17   4.7,18   3.3,19   0.0,20  -1.0,
                 21  -0.4,22   4.2,23   3.2,24   1.7,25   3.3,
                 26   2.0,27   0.7,28   0.1,29  -0.1,30  -3.5,
                 31  -4.0,32  -2.7,33  -0.5,34  -2.9,35  -1.2,
                 36  -0.4,37  -0.1,38  -1.0,39  -1.7,40  -2.1,
                 41  -1.8,42   0.0 /;

parameter cy[i] / 1   8.0, 2   5.1, 3   2.0, 4   2.6, 5   5.5,
                  6   7.1, 7   5.9, 8   6.6, 9   6.1,10   5.6,
                 11   4.9,12   4.7,13   4.3,14   3.6,15   4.1,
                 16   3.0,17   2.4,18   3.0,19   4.7,20   3.4,
                 21   2.3,22   1.5,23   0.5,24  -1.7,25  -2.0,
                 26  -3.1,27  -3.5,28  -2.4,29  -1.3,30   0.0,
                 31  -1.7,32  -2.1,33  -0.4,34  -2.9,35  -3.4,
                 36  -4.3,37  -5.2,38  -6.5,39  -7.5,40  -6.4,
                 41  -5.1,42   0.0 /;;

Variable  x[i],y[i], f   ;

Equation Eq_1[i], Def_obj;
Eq_1[i].. sqr(x[i]-cx[i]) + sqr(y[i]-cy[i]) - r[i] =l= 0;

Def_obj.. f=e= sum{i$(ord(i) ne card(i)),
               sum{j$(ord(j) >   ord(i)),(sqr(x[i]-x[j])+sqr(y[i]-y[j]))}} ;

x.up[i] =    10.0    ;
x.lo[i] =   -10.0    ;
y.up[i] =    10.0    ;
y.lo[i] =   -10.0    ;
Model airport /all/;

Solve airport using nlp minimize f;

display x.l;
display f.l;
