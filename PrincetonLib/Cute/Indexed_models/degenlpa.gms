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
*   T.C.T. Kotiah and D.I. Steinberg,
*   "Occurences of cycling and other phenomena arising in a class of
*   linear programming models",
*   Communications of the ACM, vol. 20, pp. 107-112, 1977.

*   SIF input: Ph. Toint, Aug 1990.

*   classification LLR2-AN-20-15

$Set N 20
Set i /i1*i%N%/;

parameter M; M=15;

Positive Variable x[i] ;
         Variable f

Equation cons1 , cons2 , cons3  , cons4  , cons5  , cons6  , cons7  ,
         cons8 , cons9 , cons10 , cons11 , cons12 , cons13 , cons14 , Def_obj ;


cons1..
 -0.70785+x['i1']+2*x['i2']+2*x['i3']+2*x['i4']+x['i5']+2*x['i6']+2*x['i7']+x['i8']+2*x['i9']+x['i10'] =e=0;
cons2..
        0.326*x['i1']-101*x['i2']+200*x['i5']+0.06*x['i6']+0.02*x['i7'] =e= 0;
cons3..
        0.0066667*x['i1']-1.03*x['i3']+200*x['i6']+0.06*x['i8']+0.02*x['i9'] =e= 0;
cons4..
        0.00066667*x['i1']-1.01*x['i4']+200*x['i7']+0.06*x['i9']+0.02*x['i10'] =e= 0;
cons5..
        0.978*x['i2']-201*x['i5']+100*x['i11']+0.03*x['i12']+0.01*x['i13'] =e= 0;
cons6..
        0.01*x['i2']+0.489*x['i3']-101.03*x['i6']+100*x['i12']+0.03*x['i14']+0.01*x['i15'] =e= 0;
cons7..
        0.001*x['i2']+0.489*x['i4']-101.03*x['i7']+100*x['i13']+0.03*x['i15']+0.01*x['i16'] =e= 0;
cons8..
        0.001*x['i3']+0.01*x['i4']-1.04*x['i9']+100*x['i15']+0.03*x['i18']+0.01*x['i19'] =e= 0;
cons9..
        0.02*x['i3']-1.06*x['i8']+100*x['i14']+0.03*x['i17']+0.01*x['i19'] =e= 0;
cons10..
        0.002*x['i4']-1.02*x['i10']+100*x['i16']+0.03*x['i19']+0.01*x['i20'] =e= 0;
cons11..
        -2.5742e-6*x['i11']+0.00252*x['i13']-0.61975*x['i16']+1.03*x['i20'] =e= 0;
cons12..
        -0.00257*x['i11'] + 0.25221*x['i12'] - 6.2*x['i14'] + 1.09*x['i17'] =e= 0;
cons13..
        0.00629*x['i11']-0.20555*x['i12']-4.1106*x['i13']+101.04*x['i15']+505.1*x['i16']-256.72*x['i19'] =e= 0;
cons14..
        0.00841*x['i12']-0.08406*x['i13']-0.20667*x['i14']+20.658*x['i16']+1.07*x['i18']-10.5*x['i19'] =e= 0;

Def_obj.. f=e=    0.01*x['i2']+ 33.333*x['i3']+100.0 *x['i4']+  0.01*x['i5']+
 33.343*x['i6']+100.01*x['i7']+ 33.333*x['i8']+133.33*x['i9']+100.0*x['i10'] ;

x.up[i] = 1 ;
x.l[i]  = 1 ;

Model degenlpa /all/;

Solve degenlpa using nlp minimize f;


display x.l;
display f.l;
