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
*   an exercize for L. Watson course on LANCELOT in the Spring 1993.

*   SIF input: T. Kuan, Virginia Tech., Spring 1993.

*   classification QLR2-AN-12-7

$Set N 6
Set i /i1*i%N%/;
$Set M 7
Set j /j1*j%M%/;


Parameter x(i) /i1 1.502, i2 1.126, i3  0.815, i4  1.268, i5 1.502, i6  0.740 / ;
Parameter a(i) /i1 1.8  , i2 3.2  , i3  6.1  , i4  3.2  , i5 1.8  , i6  7.4   / ;
Parameter c(j) /j1 11.0 , j2 3.0  , j3 20.0  , j4 17.0  , j5 9.0  , j6 20.0  , j7 126.1 / ;

Positive Variable t(i) , u(i) ;

         Variable    f ;

Equation cons1 ,cons2 ,cons3 ,cons4 ,cons5 ,cons6 ,cons7 , Def_obj ;

  cons1.. a['i1']*t['i1'] - u['i1'] - c['j1']                                         =e= 0;
  cons2.. a['i2']*t['i2'] - u['i2'] - t['i2'] - u['i2'] - t['i3'] - u['i3'] - c['j2'] =e= 0;
  cons3.. a['i3']*t['i3'] - u['i3'] - t['i3'] - u['i3'] - t['i1'] - u['i1'] - t['i6'] -
          u['i6']-t['i4'] - u['i4'] - t['i5'] - u['i5'] - t['i2'] - u['i2'] - c['j3'] =e= 0;
  cons4.. a['i4']*t['i4'] - u['i4'] - t['i4'] - u['i4'] - t['i1'] - u['i1'] - t['i5'] -
                                                u['i5'] - t['i6'] - u['i6'] - c['j4'] =e= 0;
  cons5.. a['i5']*t['i5'] - u['i5'] - t['i1'] - u['i1'] - c['j5']                     =e= 0;
  cons6.. a['i6']*t['i6'] - u['i6'] + sum{i$(ord(i) ne card(i)),(-t[i]-u[i])} -c['j6']=e= 0;
  cons7.. sum {i,(t[i]+u[i])} - c['j7']                                               =e= 0;
Def_obj.. f =e= sum{i,sqr(x[i]*t[i])} ;

Model lotschd /all/;

Solve lotschd using nlp minimize f;

display   t.l               ;
display   u.l               ;

display   f.l               ;
