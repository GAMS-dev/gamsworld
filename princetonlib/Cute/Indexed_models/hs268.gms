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
*   K. Schittkowski
*   "More Test Examples for Nonlinear Programming Codes"
*   Springer Verlag, Berlin, Lecture notes in economics and
*   mathematical systems, volume 282, 1987

*   SIF input: Michel Bierlaire and Annick Sartenaer, October 1992.
*              minor correction by Ph. Shott, Jan 1995.

*   classification QLR2-AN-5-5

$Set N 5
Set i /i1*i%N%/;
Alias(i,j);

table D(i,j)
                         i1       i2       i3      i4      i5
              i1        10197   -12454   -1013    1948     329
              i2       -12454    20909   -1733   -4914    -186
              i3        -1013    -1733    1755    1089    -174
              i4         1948    -4914    1089    1515     -22
              i5          329     -186    -174     -22      27 ;
parameter B(i) / i1   -9170 ,i2   17099 ,i3   -2271 ,i4   -4336 ,i5     -43 /;

Variable x(i) , f ;
Equation cons1 , cons2 , cons3 , cons4 , cons5 , Def_obj ;

cons1.. -sum{i, x[i] } + 5 =g= 0;
cons2.. 10*x['i1'] + 10*x['i2'] - 3*x['i3'] + 5*x['i4'] + 4*x['i5'] - 20 =g= 0;
cons3.. -8*x['i1'] +    x['i2'] - 2*x['i3'] - 5*x['i4'] + 3*x['i5'] + 40 =g= 0;
cons4..  8*x['i1'] -    x['i2'] + 2*x['i3'] + 5*x['i4'] - 3*x['i5'] - 11 =g= 0;
cons5.. -4*x['i1'] -  2*x['i2'] + 3*x['i3'] - 5*x['i4'] +   x['i5'] + 30 =g= 0;

Def_obj.. f=e= 14463.0 + sum{(i,j), D[i,j]*x[i]*x[j]} - 2*sum{i, (B[i]*x[i])};

x.l(i) = 1 ;

Model hs268 /all/;

Solve hs268 using nlp minimize f;

display   x.l               ;

display   f.l               ;
