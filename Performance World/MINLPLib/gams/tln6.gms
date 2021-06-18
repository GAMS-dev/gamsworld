$offlisting
*  MINLP written by GAMS Convert at 04/19/01 16:58:15
*  
*  Equation counts
*     Total       E       G       L       N       X
*        37       1       0      36       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        49       1       6      42       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       217     145      72       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36
          ,i37,i38,i39,i40,i41,i42,i43,i44,i45,i46,i47,i48,objvar;

Binary Variables b1,b2,b3,b4,b5,b6;

Integer Variables i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22
          ,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36,i37,i38,i39
          ,i40,i41,i42,i43,i44,i45,i46,i47,i48;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37;


e1..  - 0.1*b1 - 0.2*b2 - 0.3*b3 - 0.4*b4 - 0.5*b5 - 0.6*b6 - i7 - i8 - i9
      - i10 - i11 - i12 + objvar =E= 0;

e2..    330*i13 + 360*i19 + 380*i25 + 430*i31 + 490*i37 + 530*i43 =L= 2200;

e3..    330*i14 + 360*i20 + 380*i26 + 430*i32 + 490*i38 + 530*i44 =L= 2200;

e4..    330*i15 + 360*i21 + 380*i27 + 430*i33 + 490*i39 + 530*i45 =L= 2200;

e5..    330*i16 + 360*i22 + 380*i28 + 430*i34 + 490*i40 + 530*i46 =L= 2200;

e6..    330*i17 + 360*i23 + 380*i29 + 430*i35 + 490*i41 + 530*i47 =L= 2200;

e7..    330*i18 + 360*i24 + 380*i30 + 430*i36 + 490*i42 + 530*i48 =L= 2200;

e8..  - 330*i13 - 360*i19 - 380*i25 - 430*i31 - 490*i37 - 530*i43 =L= -2100;

e9..  - 330*i14 - 360*i20 - 380*i26 - 430*i32 - 490*i38 - 530*i44 =L= -2100;

e10..  - 330*i15 - 360*i21 - 380*i27 - 430*i33 - 490*i39 - 530*i45 =L= -2100;

e11..  - 330*i16 - 360*i22 - 380*i28 - 430*i34 - 490*i40 - 530*i46 =L= -2100;

e12..  - 330*i17 - 360*i23 - 380*i29 - 430*i35 - 490*i41 - 530*i47 =L= -2100;

e13..  - 330*i18 - 360*i24 - 380*i30 - 430*i36 - 490*i42 - 530*i48 =L= -2100;

e14..    i13 + i19 + i25 + i31 + i37 + i43 =L= 5;

e15..    i14 + i20 + i26 + i32 + i38 + i44 =L= 5;

e16..    i15 + i21 + i27 + i33 + i39 + i45 =L= 5;

e17..    i16 + i22 + i28 + i34 + i40 + i46 =L= 5;

e18..    i17 + i23 + i29 + i35 + i41 + i47 =L= 5;

e19..    i18 + i24 + i30 + i36 + i42 + i48 =L= 5;

e20..    b1 - i7 =L= 0;

e21..    b2 - i8 =L= 0;

e22..    b3 - i9 =L= 0;

e23..    b4 - i10 =L= 0;

e24..    b5 - i11 =L= 0;

e25..    b6 - i12 =L= 0;

e26..  - 16*b1 + i7 =L= 0;

e27..  - 16*b2 + i8 =L= 0;

e28..  - 16*b3 + i9 =L= 0;

e29..  - 16*b4 + i10 =L= 0;

e30..  - 16*b5 + i11 =L= 0;

e31..  - 16*b6 + i12 =L= 0;

e32..  - (i7*i13 + i8*i14 + i9*i15 + i10*i16 + i11*i17 + i12*i18) =L= -8;

e33..  - (i7*i19 + i8*i20 + i9*i21 + i10*i22 + i11*i23 + i12*i24) =L= -16;

e34..  - (i7*i25 + i8*i26 + i9*i27 + i10*i28 + i11*i29 + i12*i30) =L= -12;

e35..  - (i7*i31 + i8*i32 + i9*i33 + i10*i34 + i11*i35 + i12*i36) =L= -7;

e36..  - (i7*i37 + i8*i38 + i9*i39 + i10*i40 + i11*i41 + i12*i42) =L= -14;

e37..  - (i7*i43 + i8*i44 + i9*i45 + i10*i46 + i11*i47 + i12*i48) =L= -16;

* set non default bounds

i7.up = 16; 
i8.up = 16; 
i9.up = 16; 
i10.up = 16; 
i11.up = 16; 
i12.up = 16; 
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
i37.up = 5; 
i38.up = 5; 
i39.up = 5; 
i40.up = 5; 
i41.up = 5; 
i42.up = 5; 
i43.up = 5; 
i44.up = 5; 
i45.up = 5; 
i46.up = 5; 
i47.up = 5; 
i48.up = 5; 

$if set nostart $goto modeldef
* set non default levels

i7.l = 1; 
i8.l = 1; 
i9.l = 1; 
i10.l = 1; 
i11.l = 1; 
i12.l = 1; 
i13.l = 1; 
i14.l = 1; 
i15.l = 1; 
i16.l = 1; 
i17.l = 1; 
i18.l = 1; 
i19.l = 1; 
i20.l = 1; 
i21.l = 1; 
i22.l = 1; 
i23.l = 1; 
i24.l = 1; 
i25.l = 1; 
i26.l = 1; 
i27.l = 1; 
i28.l = 1; 
i29.l = 1; 
i30.l = 1; 
i31.l = 1; 
i32.l = 1; 
i33.l = 1; 
i34.l = 1; 
i35.l = 1; 
i36.l = 1; 
i37.l = 1; 
i38.l = 1; 
i39.l = 1; 
i40.l = 1; 
i41.l = 1; 
i42.l = 1; 
i43.l = 1; 
i44.l = 1; 
i45.l = 1; 
i46.l = 1; 
i47.l = 1; 
i48.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
