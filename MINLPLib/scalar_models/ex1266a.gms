$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:32
*  
*  Equation counts
*     Total       E       G       L       N       X
*        54       1       7      46       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        49       1       6      42       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       302     230      72       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36
          ,b37,b38,b39,b40,b41,b42,i43,i44,i45,i46,i47,i48,objvar;

Binary Variables b37,b38,b39,b40,b41,b42;

Integer Variables i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34
          ,i35,i36,i43,i44,i45,i46,i47,i48;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54;


e1..  - 0.1*b37 - 0.2*b38 - 0.3*b39 - 0.4*b40 - 0.5*b41 - i43 - i44 - i45 - i46
      - i47 - i48 + objvar =E= 0;

e2.. i43*i1 + i44*i2 + i45*i3 + i46*i4 + i47*i5 + i48*i6 =G= 8;

e3.. i43*i7 + i44*i8 + i45*i9 + i46*i10 + i47*i11 + i48*i12 =G= 16;

e4.. i43*i13 + i44*i14 + i45*i15 + i46*i16 + i47*i17 + i48*i18 =G= 12;

e5.. i43*i19 + i44*i20 + i45*i21 + i46*i22 + i47*i23 + i48*i24 =G= 7;

e6.. i43*i25 + i44*i26 + i45*i27 + i46*i28 + i47*i29 + i48*i30 =G= 14;

e7.. i43*i31 + i44*i32 + i45*i33 + i46*i34 + i47*i35 + i48*i36 =G= 16;

e8..  - 330*i1 - 360*i7 - 380*i13 - 430*i19 - 490*i25 - 530*i31 + 2100*b37
      =L= 0;

e9..  - 330*i2 - 360*i8 - 380*i14 - 430*i20 - 490*i26 - 530*i32 + 2100*b38
      =L= 0;

e10..  - 330*i3 - 360*i9 - 380*i15 - 430*i21 - 490*i27 - 530*i33 + 2100*b39
       =L= 0;

e11..  - 330*i4 - 360*i10 - 380*i16 - 430*i22 - 490*i28 - 530*i34 + 2100*b40
       =L= 0;

e12..  - 330*i5 - 360*i11 - 380*i17 - 430*i23 - 490*i29 - 530*i35 + 2100*b41
       =L= 0;

e13..  - 330*i6 - 360*i12 - 380*i18 - 430*i24 - 490*i30 - 530*i36 + 2100*b42
       =L= 0;

e14..    330*i1 + 360*i7 + 380*i13 + 430*i19 + 490*i25 + 530*i31 - 2200*b37
       =L= 0;

e15..    330*i2 + 360*i8 + 380*i14 + 430*i20 + 490*i26 + 530*i32 - 2200*b38
       =L= 0;

e16..    330*i3 + 360*i9 + 380*i15 + 430*i21 + 490*i27 + 530*i33 - 2200*b39
       =L= 0;

e17..    330*i4 + 360*i10 + 380*i16 + 430*i22 + 490*i28 + 530*i34 - 2200*b40
       =L= 0;

e18..    330*i5 + 360*i11 + 380*i17 + 430*i23 + 490*i29 + 530*i35 - 2200*b41
       =L= 0;

e19..    330*i6 + 360*i12 + 380*i18 + 430*i24 + 490*i30 + 530*i36 - 2200*b42
       =L= 0;

e20..  - i1 - i7 - i13 - i19 - i25 - i31 + b37 =L= 0;

e21..  - i2 - i8 - i14 - i20 - i26 - i32 + b38 =L= 0;

e22..  - i3 - i9 - i15 - i21 - i27 - i33 + b39 =L= 0;

e23..  - i4 - i10 - i16 - i22 - i28 - i34 + b40 =L= 0;

e24..  - i5 - i11 - i17 - i23 - i29 - i35 + b41 =L= 0;

e25..  - i6 - i12 - i18 - i24 - i30 - i36 + b42 =L= 0;

e26..    i1 + i7 + i13 + i19 + i25 + i31 - 5*b37 =L= 0;

e27..    i2 + i8 + i14 + i20 + i26 + i32 - 5*b38 =L= 0;

e28..    i3 + i9 + i15 + i21 + i27 + i33 - 5*b39 =L= 0;

e29..    i4 + i10 + i16 + i22 + i28 + i34 - 5*b40 =L= 0;

e30..    i5 + i11 + i17 + i23 + i29 + i35 - 5*b41 =L= 0;

e31..    i6 + i12 + i18 + i24 + i30 + i36 - 5*b42 =L= 0;

e32..    b37 - i43 =L= 0;

e33..    b38 - i44 =L= 0;

e34..    b39 - i45 =L= 0;

e35..    b40 - i46 =L= 0;

e36..    b41 - i47 =L= 0;

e37..    b42 - i48 =L= 0;

e38..  - 15*b37 + i43 =L= 0;

e39..  - 12*b38 + i44 =L= 0;

e40..  - 8*b39 + i45 =L= 0;

e41..  - 7*b40 + i46 =L= 0;

e42..  - 4*b41 + i47 =L= 0;

e43..  - 2*b42 + i48 =L= 0;

e44..    i43 + i44 + i45 + i46 + i47 + i48 =G= 16;

e45..  - b37 + b38 =L= 0;

e46..  - b38 + b39 =L= 0;

e47..  - b39 + b40 =L= 0;

e48..  - b40 + b41 =L= 0;

e49..  - b41 + b42 =L= 0;

e50..  - i43 + i44 =L= 0;

e51..  - i44 + i45 =L= 0;

e52..  - i45 + i46 =L= 0;

e53..  - i46 + i47 =L= 0;

e54..  - i47 + i48 =L= 0;

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
i26.up = 5; 
i27.up = 5; 
i28.up = 5; 
i29.up = 5; 
i30.up = 5; 
i31.up = 5; 
i32.up = 5; 
i33.up = 5; 
i34.up = 5; 
i35.up = 5; 
i36.up = 5; 
i43.up = 15; 
i44.up = 12; 
i45.up = 8; 
i46.up = 7; 
i47.up = 4; 
i48.up = 2; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 1; 
i7.l = 2; 
i14.l = 2; 
i20.l = 1; 
i26.l = 2; 
i31.l = 1; 
i43.l = 8; 
i44.l = 7; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
