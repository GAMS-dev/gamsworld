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
*   J.P. Rasson, Private communication, 1996.

*   SIF input: Ph. Toint, Nov 1996.

*   classification SBR2-MN-61-0

$Set LGSG 11
Set i /i1*i%LGSG%/;
$Set LGTR 40
Set j /j1*j%LGTR%/;
Alias(j,k);

parameter
    TR[j] /j1 0.0000000000, j2 0.0000000000, j3 1.600000E-03, j4 5.400000E-03,
           j5 7.020000E-02, j6 0.1876000000, j7 0.3320000000, j8 0.7640000000,
           j9 0.9320000000,j10 0.8120000000,j11 0.3464000000,j12 0.2064000000,
          j13 8.300000E-02,j14 3.400000E-02,j15 6.179999E-02,j16 1.2000000000,
          j17 1.8000000000,j18 2.4000000000,j19 9.0000000000,j20 2.4000000000,
          j21 1.8010000000,j22 1.3250000000,j23 7.620000E-02,j24 0.2104000000,
          j25 0.2680000000,j26 0.5520000000,j27 0.9960000000,j28 0.3600000000,
          j29 0.2400000000,j30 0.1510000000,j31 2.480000E-02,j32 0.2432000000,
          j33 0.3602000000,j34 0.4800000000,j35 1.8000000000,j36 0.4800000000,
          j37 0.3600000000,j38 0.2640000000,j39 6.000000E-03,j40 6.000000E-03 /;

parameter
  SSG[i] /i1 1.000000E-02 , i2 2.000000E-02, i3 0.4000000000, i4 0.6000000000,
          i5 0.8000000000 , i6 3.0000000000, i7 0.8000000000, i8 0.6000000000,
          i9 0.4400000000 ,i10 1.000000E-02,i11 1.000000E-02 /;

parameter CC[j] ;CC[j] = 0.0 ;

Positive Variable c[j]   , sg[i] ;
         Variable x[j,i] ,  f    ;

Equation Eq_1[j,i] , Eq_2[j,i] , Def_obj ;


Eq_1[j,i]$(ord(j)-ord(i)+2 le 0 )..  x[j,i] =l= 0                            ;
Eq_2[j,i]$(ord(j)-ord(i)+2 ge 1 )..  x[j,i] =e= sg[i]*
                                     sum(k$(ord(j)-ord(i)+1 eq ord(k)),c[k]) ;

Def_obj..  f=e= sum{j, sqr(sum{i,x[j,i]} - TR[j]) };

  c.l[j]  = cc[j] ;

 sg.l[i]  = SSG[i];

*c.fx['j14']=3;
*sg.fx['i1']  = 0.01;
*sg.fx['i2']  = 0.02;
*sg.fx['i3']  = 0.4;
*sg.fx['i4']  = 0.6;
*sg.fx['i5']  = 0.8;
*sg.fx['i6']  = 3.0;
*sg.fx['i7']  = 0.08;
*sg.fx['i8']  = 0.06;
*sg.fx['i9']  = 0.44;
*sg.fx['i10'] = 0.01;
*sg.fx['i11'] = 0.01;

*c.fx['j1']  =0 ;
*c.fx['j2']  =0 ;
*c.fx['j3']  =0.16 ;
*c.fx['j4']  =0.22 ;
*c.fx['j5']  =0.18 ;
*c.fx['j6']  =0 ;
*c.fx['j7']  =0 ;
*c.fx['j8']  =0 ;
*c.fx['j9']  =0 ;
*c.fx['j10']  =0 ;
*c.fx['j11']  =0 ;
*c.fx['j12']  =0 ;
*c.fx['j13']  =0 ;
*c.fx['j14']  =3 ;
*c.fx['j15']  =0 ;
*c.fx['j16']  =0 ;
*c.fx['j17']  =0 ;
*c.fx['j18']  =0 ;
*c.fx['j19']  =0 ;
*c.fx['j20']  =0 ;
*c.fx['j21']  =0.1 ;
*c.fx['j22']  =0.299999 ;
*c.fx['j23']  =0.02 ;
*c.fx['j24']  =0 ;
*c.fx['j25']  =0 ;
*c.fx['j26']  =0 ;
*c.fx['j27']  =0 ;
*c.fx['j28']  =0 ;
*c.fx['j29']  =0 ;
*c.fx['j30']  =0.6 ;
*c.fx['j31']  =0 ;
*c.fx['j32']  =0 ;
*c.fx['j33']  =0 ;
*c.fx['j34']  =0 ;
*c.fx['j35']  =0 ;
*c.fx['j36']  =0 ;
*c.fx['j37']  =0 ;
*c.fx['j38']  =0 ;
*c.fx['j39']  =0 ;
*c.fx['j40']  =0 ;

Model deconvb /all/;

Solve deconvb  using nlp minimize f;

display x.l,c.l,sg.l ;
display f.l;
