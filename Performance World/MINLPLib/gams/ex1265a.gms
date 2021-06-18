$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:18
*  
*  Equation counts
*     Total       E       G       L       N       X
*        45       1       6      38       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        36       1       5      30       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       222     172      50       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,b26,b27,b28,b29,b30,i31,i32,i33,i34,i35
          ,objvar;

Binary Variables b26,b27,b28,b29,b30;

Integer Variables i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i31,i32,i33,i34,i35;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45;


e1..  - 0.1*b26 - 0.2*b27 - 0.3*b28 - 0.4*b29 - 0.5*b30 - i31 - i32 - i33 - i34
      - i35 + objvar =E= 0;

e2.. i31*i1 + i32*i2 + i33*i3 + i34*i4 + i35*i5 =G= 12;

e3.. i31*i6 + i32*i7 + i33*i8 + i34*i9 + i35*i10 =G= 6;

e4.. i31*i11 + i32*i12 + i33*i13 + i34*i14 + i35*i15 =G= 15;

e5.. i31*i16 + i32*i17 + i33*i18 + i34*i19 + i35*i20 =G= 6;

e6.. i31*i21 + i32*i22 + i33*i23 + i34*i24 + i35*i25 =G= 9;

e7..  - 330*i1 - 360*i6 - 370*i11 - 415*i16 - 435*i21 + 1800*b26 =L= 0;

e8..  - 330*i2 - 360*i7 - 370*i12 - 415*i17 - 435*i22 + 1800*b27 =L= 0;

e9..  - 330*i3 - 360*i8 - 370*i13 - 415*i18 - 435*i23 + 1800*b28 =L= 0;

e10..  - 330*i4 - 360*i9 - 370*i14 - 415*i19 - 435*i24 + 1800*b29 =L= 0;

e11..  - 330*i5 - 360*i10 - 370*i15 - 415*i20 - 435*i25 + 1800*b30 =L= 0;

e12..    330*i1 + 360*i6 + 370*i11 + 415*i16 + 435*i21 - 2000*b26 =L= 0;

e13..    330*i2 + 360*i7 + 370*i12 + 415*i17 + 435*i22 - 2000*b27 =L= 0;

e14..    330*i3 + 360*i8 + 370*i13 + 415*i18 + 435*i23 - 2000*b28 =L= 0;

e15..    330*i4 + 360*i9 + 370*i14 + 415*i19 + 435*i24 - 2000*b29 =L= 0;

e16..    330*i5 + 360*i10 + 370*i15 + 415*i20 + 435*i25 - 2000*b30 =L= 0;

e17..  - i1 - i6 - i11 - i16 - i21 + b26 =L= 0;

e18..  - i2 - i7 - i12 - i17 - i22 + b27 =L= 0;

e19..  - i3 - i8 - i13 - i18 - i23 + b28 =L= 0;

e20..  - i4 - i9 - i14 - i19 - i24 + b29 =L= 0;

e21..  - i5 - i10 - i15 - i20 - i25 + b30 =L= 0;

e22..    i1 + i6 + i11 + i16 + i21 - 5*b26 =L= 0;

e23..    i2 + i7 + i12 + i17 + i22 - 5*b27 =L= 0;

e24..    i3 + i8 + i13 + i18 + i23 - 5*b28 =L= 0;

e25..    i4 + i9 + i14 + i19 + i24 - 5*b29 =L= 0;

e26..    i5 + i10 + i15 + i20 + i25 - 5*b30 =L= 0;

e27..    b26 - i31 =L= 0;

e28..    b27 - i32 =L= 0;

e29..    b28 - i33 =L= 0;

e30..    b29 - i34 =L= 0;

e31..    b30 - i35 =L= 0;

e32..  - 15*b26 + i31 =L= 0;

e33..  - 12*b27 + i32 =L= 0;

e34..  - 9*b28 + i33 =L= 0;

e35..  - 6*b29 + i34 =L= 0;

e36..  - 6*b30 + i35 =L= 0;

e37..    i31 + i32 + i33 + i34 + i35 =G= 10;

e38..  - b26 + b27 =L= 0;

e39..  - b27 + b28 =L= 0;

e40..  - b28 + b29 =L= 0;

e41..  - b29 + b30 =L= 0;

e42..  - i31 + i32 =L= 0;

e43..  - i32 + i33 =L= 0;

e44..  - i33 + i34 =L= 0;

e45..  - i34 + i35 =L= 0;

* set non default bounds

i1.up = 5; 
i2.up = 5; 
i3.up = 5; 
i4.up = 5; 
i5.up = 5; 
i6.up = 5; 
i7.up = 5; 
i8.up = 5; 
i9.up = 5; 
i10.up = 5; 
i11.up = 5; 
i12.up = 5; 
i13.up = 5; 
i14.up = 5; 
i15.up = 5; 
i16.up = 5; 
i17.up = 5; 
i18.up = 5; 
i19.up = 5; 
i20.up = 5; 
i21.up = 5; 
i22.up = 5; 
i23.up = 5; 
i24.up = 5; 
i25.up = 5; 
i31.up = 15; 
i32.up = 12; 
i33.up = 9; 
i34.up = 6; 
i35.up = 6; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
