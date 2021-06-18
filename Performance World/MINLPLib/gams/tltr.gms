$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:41:46
*  
*  Equation counts
*     Total       E       G       L       N       X
*        55       1       3      51       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        49       1      12      36       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       228     174      54       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,b31,b32,b33,b34,b35,b36
          ,b37,b38,b39,i40,i41,i42,i43,i44,i45,i46,i47,i48,objvar;

Binary Variables b1,b2,b3,b31,b32,b33,b34,b35,b36,b37,b38,b39;

Integer Variables i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i40,i41,i42,i43,i44,i45
          ,i46,i47,i48;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55;


e1..  - 35*b2 - 35*b3 - 6.53333333333333*b31 - 6.53333333333333*b32
      - 6.7375*b33 - 6.53333333333333*b34 - 6.53333333333333*b35 - 6.7375*b36
      - 6.53333333333333*b37 - 6.53333333333333*b38 - 6.7375*b39 + objvar
      =E= 0;

e2.. i40*i4 + i43*i7 + i46*i10 + i41*i5 + i44*i8 + i47*i11 + i42*i6 + i45*i9 + 
     i48*i12 =G= 9;

e3.. i40*i13 + i43*i16 + i46*i19 + i41*i14 + i44*i17 + i47*i20 + i42*i15 + i45*
     i18 + i48*i21 =G= 15;

e4.. i40*i22 + i43*i25 + i46*i28 + i41*i23 + i44*i26 + i47*i29 + i42*i24 + i45*
     i27 + i48*i30 =G= 80;

e5..    12*i4 + 24*i13 + 36*i22 - 48*b31 =L= 0;

e6..    12*i5 + 24*i14 + 36*i23 - 48*b32 =L= 0;

e7..    12*i6 + 24*i15 + 36*i24 - 62*b33 =L= 0;

e8..    12*i7 + 24*i16 + 36*i25 - 48*b34 =L= 0;

e9..    12*i8 + 24*i17 + 36*i26 - 48*b35 =L= 0;

e10..    12*i9 + 24*i18 + 36*i27 - 62*b36 =L= 0;

e11..    12*i10 + 24*i19 + 36*i28 - 48*b37 =L= 0;

e12..    12*i11 + 24*i20 + 36*i29 - 48*b38 =L= 0;

e13..    12*i12 + 24*i21 + 36*i30 - 62*b39 =L= 0;

e14..  - i4 - i13 - i22 + b31 =L= 0;

e15..  - i5 - i14 - i23 + b32 =L= 0;

e16..  - i6 - i15 - i24 + b33 =L= 0;

e17..  - i7 - i16 - i25 + b34 =L= 0;

e18..  - i8 - i17 - i26 + b35 =L= 0;

e19..  - i9 - i18 - i27 + b36 =L= 0;

e20..  - i10 - i19 - i28 + b37 =L= 0;

e21..  - i11 - i20 - i29 + b38 =L= 0;

e22..  - i12 - i21 - i30 + b39 =L= 0;

e23..  - 72*b31 + i40 =L= 0;

e24..  - 182*b32 + i41 =L= 0;

e25..  - 182*b33 + i42 =L= 0;

e26..  - 72*b34 + i43 =L= 0;

e27..  - 182*b35 + i44 =L= 0;

e28..  - 182*b36 + i45 =L= 0;

e29..  - 72*b37 + i46 =L= 0;

e30..  - 182*b38 + i47 =L= 0;

e31..  - 182*b39 + i48 =L= 0;

e32..    i4 + i13 + i22 - 5*b31 =L= 0;

e33..    i5 + i14 + i23 - 5*b32 =L= 0;

e34..    i6 + i15 + i24 - 5*b33 =L= 0;

e35..    i7 + i16 + i25 - 5*b34 =L= 0;

e36..    i8 + i17 + i26 - 5*b35 =L= 0;

e37..    i9 + i18 + i27 - 5*b36 =L= 0;

e38..    i10 + i19 + i28 - 5*b37 =L= 0;

e39..    i11 + i20 + i29 - 5*b38 =L= 0;

e40..    i12 + i21 + i30 - 5*b39 =L= 0;

e41..  - 500*b1 + 7*i40 + 7*i43 + 7*i46 =L= 0;

e42..  - 1270*b2 + 7*i41 + 7*i44 + 7*i47 =L= 0;

e43..  - 1270*b3 + 7*i42 + 7*i45 + 7*i48 =L= 0;

e44..  - b31 + b34 =L= 0;

e45..  - b32 + b35 =L= 0;

e46..  - b33 + b36 =L= 0;

e47..  - b34 + b37 =L= 0;

e48..  - b35 + b38 =L= 0;

e49..  - b36 + b39 =L= 0;

e50..  - i40 + i43 =L= 0;

e51..  - i41 + i44 =L= 0;

e52..  - i42 + i45 =L= 0;

e53..  - i43 + i46 =L= 0;

e54..  - i44 + i47 =L= 0;

e55..  - i45 + i48 =L= 0;

* set non default bounds

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
i40.up = 100; 
i41.up = 100; 
i42.up = 100; 
i43.up = 100; 
i44.up = 100; 
i45.up = 100; 
i46.up = 100; 
i47.up = 100; 
i48.up = 100; 

$if set nostart $goto modeldef
* set non default levels

i4.l = 1; 
i13.l = 1; 
i23.l = 1; 
i40.l = 15; 
i41.l = 80; 
objvar.l = 48.0666666666667; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
