*  MIP written by GAMS Convert at 10/17/08 03:00:55
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         65       19       46        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         39        1        0       38        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        130      130        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34,i35,i36
          ,i37,i38,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,i33,i34
          ,i35,i36,i37,i38;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65;


e1..  - i1 + i20 =E= 2;

e2..  - i2 + i21 =E= 16;

e3..  - i3 + i22 =E= 9;

e4..  - i4 + i23 =E= 8;

e5..  - i5 + i24 =E= 10;

e6..  - i6 + i25 =E= 6;

e7..  - i7 + i26 =E= 2;

e8..  - i8 + i27 =E= 2;

e9..  - i9 + i28 =E= 9;

e10..  - i10 + i29 =E= 5;

e11..  - i11 + i30 =E= 3;

e12..  - i12 + i31 =E= 2;

e13..  - i13 + i32 =E= 1;

e14..  - i14 + i33 =E= 7;

e15..  - i15 + i34 =E= 4;

e16..  - i16 + i35 =E= 3;

e17..  - i17 + i36 =E= 9;

e18..  - i18 + i37 =E= 1;

e19..  - i19 + i38 =E= 0;

e20..    i2 - i20 =G= 0;

e21..    i3 - i21 =G= 0;

e22..    i4 - i21 =G= 0;

e23..    i14 - i21 =G= 0;

e24..    i5 - i22 =G= 0;

e25..    i6 - i23 =G= 0;

e26..    i7 - i23 =G= 0;

e27..    i9 - i23 =G= 0;

e28..    i10 - i23 =G= 0;

e29..    i15 - i23 =G= 0;

e30..    i6 - i24 =G= 0;

e31..    i8 - i25 =G= 0;

e32..    i9 - i25 =G= 0;

e33..    i11 - i25 =G= 0;

e34..    i13 - i26 =G= 0;

e35..    i16 - i27 =G= 0;

e36..    i12 - i28 =G= 0;

e37..    i19 - i29 =G= 0;

e38..    i16 - i30 =G= 0;

e39..    i17 - i31 =G= 0;

e40..    i19 - i32 =G= 0;

e41..    i15 - i33 =G= 0;

e42..    i16 - i33 =G= 0;

e43..    i19 - i34 =G= 0;

e44..    i19 - i35 =G= 0;

e45..    i18 - i36 =G= 0;

e46..    i19 - i37 =G= 0;

e47..  - i20 + objvar =G= 0;

e48..  - i21 + objvar =G= 0;

e49..  - i22 + objvar =G= 0;

e50..  - i23 + objvar =G= 0;

e51..  - i24 + objvar =G= 0;

e52..  - i25 + objvar =G= 0;

e53..  - i26 + objvar =G= 0;

e54..  - i27 + objvar =G= 0;

e55..  - i28 + objvar =G= 0;

e56..  - i29 + objvar =G= 0;

e57..  - i30 + objvar =G= 0;

e58..  - i31 + objvar =G= 0;

e59..  - i32 + objvar =G= 0;

e60..  - i33 + objvar =G= 0;

e61..  - i34 + objvar =G= 0;

e62..  - i35 + objvar =G= 0;

e63..  - i36 + objvar =G= 0;

e64..  - i37 + objvar =G= 0;

e65..  - i38 + objvar =G= 0;

* set non default bounds

i1.up = 100; 
i2.up = 100; 
i3.up = 100; 
i4.up = 100; 
i5.up = 100; 
i6.up = 100; 
i7.up = 100; 
i8.up = 100; 
i9.up = 100; 
i10.up = 100; 
i11.up = 100; 
i12.up = 100; 
i13.up = 100; 
i14.up = 100; 
i15.up = 100; 
i16.up = 100; 
i17.up = 100; 
i18.up = 100; 
i19.up = 100; 
i20.up = 100; 
i21.up = 100; 
i22.up = 100; 
i23.up = 100; 
i24.up = 100; 
i25.up = 100; 
i26.up = 100; 
i27.up = 100; 
i28.up = 100; 
i29.up = 100; 
i30.up = 100; 
i31.up = 100; 
i32.up = 100; 
i33.up = 100; 
i34.up = 100; 
i35.up = 100; 
i36.up = 100; 
i37.up = 100; 
i38.up = 100; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
