*  MIP written by GAMS Convert at 07/05/07 16:06:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         71        1       42       28        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         85       57        0       28        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        309      309        0        0
*
*  Solve m using MIP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,objvar;

Positive Variables  x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42
          ,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59
          ,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70,x71,x72,x73,x74,x75,x76
          ,x77,x78,x79,x80,x81,x82,x83,x84;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71;


e1..  - i1 + i7 + x57 =G= 0;

e2..    i1 - i2 + x58 =G= 0;

e3..    i2 - i3 + x59 =G= 0;

e4..    i3 - i4 + x60 =G= 0;

e5..    i4 - i5 + x61 =G= 0;

e6..    i5 - i6 + x62 =G= 0;

e7..    i6 - i7 + x63 =G= 0;

e8..  - i8 + i14 + x64 =G= 0;

e9..    i8 - i9 + x65 =G= 0;

e10..    i9 - i10 + x66 =G= 0;

e11..    i10 - i11 + x67 =G= 0;

e12..    i11 - i12 + x68 =G= 0;

e13..    i12 - i13 + x69 =G= 0;

e14..    i13 - i14 + x70 =G= 0;

e15..  - i15 + i21 + x71 =G= 0;

e16..    i15 - i16 + x72 =G= 0;

e17..    i16 - i17 + x73 =G= 0;

e18..    i17 - i18 + x74 =G= 0;

e19..    i18 - i19 + x75 =G= 0;

e20..    i19 - i20 + x76 =G= 0;

e21..    i20 - i21 + x77 =G= 0;

e22..  - i22 + i28 + x78 =G= 0;

e23..    i22 - i23 + x79 =G= 0;

e24..    i23 - i24 + x80 =G= 0;

e25..    i24 - i25 + x81 =G= 0;

e26..    i25 - i26 + x82 =G= 0;

e27..    i26 - i27 + x83 =G= 0;

e28..    i27 - i28 + x84 =G= 0;

e29..  - 1000*i1 + x29 =L= 0;

e30..  - 1000*i2 + x30 =L= 0;

e31..  - 1000*i3 + x31 =L= 0;

e32..  - 1000*i4 + x32 =L= 0;

e33..  - 1000*i5 + x33 =L= 0;

e34..  - 1000*i6 + x34 =L= 0;

e35..  - 1000*i7 + x35 =L= 0;

e36..  - 500*i8 + x36 =L= 0;

e37..  - 500*i9 + x37 =L= 0;

e38..  - 500*i10 + x38 =L= 0;

e39..  - 500*i11 + x39 =L= 0;

e40..  - 500*i12 + x40 =L= 0;

e41..  - 500*i13 + x41 =L= 0;

e42..  - 500*i14 + x42 =L= 0;

e43..  - 800*i15 + x43 =L= 0;

e44..  - 800*i16 + x44 =L= 0;

e45..  - 800*i17 + x45 =L= 0;

e46..  - 800*i18 + x46 =L= 0;

e47..  - 800*i19 + x47 =L= 0;

e48..  - 800*i20 + x48 =L= 0;

e49..  - 800*i21 + x49 =L= 0;

e50..  - 1700*i22 + x50 =L= 0;

e51..  - 1700*i23 + x51 =L= 0;

e52..  - 1700*i24 + x52 =L= 0;

e53..  - 1700*i25 + x53 =L= 0;

e54..  - 1700*i26 + x54 =L= 0;

e55..  - 1700*i27 + x55 =L= 0;

e56..  - 1700*i28 + x56 =L= 0;

e57..    750*i1 + 1000*i8 + 1200*i15 + 1800*i22 + x29 + x36 + x43 + x50
       =G= 12000;

e58..    750*i2 + 1000*i9 + 1200*i16 + 1800*i23 + x30 + x37 + x44 + x51
       =G= 32000;

e59..    750*i3 + 1000*i10 + 1200*i17 + 1800*i24 + x31 + x38 + x45 + x52
       =G= 25000;

e60..    750*i4 + 1000*i11 + 1200*i18 + 1800*i25 + x32 + x39 + x46 + x53
       =G= 36000;

e61..    750*i5 + 1000*i12 + 1200*i19 + 1800*i26 + x33 + x40 + x47 + x54
       =G= 25000;

e62..    750*i6 + 1000*i13 + 1200*i20 + 1800*i27 + x34 + x41 + x48 + x55
       =G= 30000;

e63..    750*i7 + 1000*i14 + 1200*i21 + 1800*i28 + x35 + x42 + x49 + x56
       =G= 18000;

e64..    1750*i1 + 1500*i8 + 2000*i15 + 3500*i22 =G= 14400;

e65..    1750*i2 + 1500*i9 + 2000*i16 + 3500*i23 =G= 38400;

e66..    1750*i3 + 1500*i10 + 2000*i17 + 3500*i24 =G= 30000;

e67..    1750*i4 + 1500*i11 + 2000*i18 + 3500*i25 =G= 43200;

e68..    1750*i5 + 1500*i12 + 2000*i19 + 3500*i26 =G= 30000;

e69..    1750*i6 + 1500*i13 + 2000*i20 + 3500*i27 =G= 36000;

e70..    1750*i7 + 1500*i14 + 2000*i21 + 3500*i28 =G= 21600;

e71..  - 13500*i1 - 6750*i2 - 6750*i3 - 4500*i4 - 9000*i5 - 9000*i6 - 4500*i7
       - 10800*i8 - 5400*i9 - 5400*i10 - 3600*i11 - 7200*i12 - 7200*i13
       - 3600*i14 - 22500*i15 - 11250*i16 - 11250*i17 - 7500*i18 - 15000*i19
       - 15000*i20 - 7500*i21 - 28800*i22 - 14400*i23 - 14400*i24 - 9600*i25
       - 19200*i26 - 19200*i27 - 9600*i28 - 16.2*x29 - 8.1*x30 - 8.1*x31
       - 5.4*x32 - 10.8*x33 - 10.8*x34 - 5.4*x35 - 13.2*x36 - 6.6*x37 - 6.6*x38
       - 4.4*x39 - 8.8*x40 - 8.8*x41 - 4.4*x42 - 10.8*x43 - 5.4*x44 - 5.4*x45
       - 3.6*x46 - 7.2*x47 - 7.2*x48 - 3.6*x49 - 22.8*x50 - 11.4*x51 - 11.4*x52
       - 7.6*x53 - 15.2*x54 - 15.2*x55 - 7.6*x56 - 5000*x57 - 5000*x58
       - 5000*x59 - 5000*x60 - 5000*x61 - 5000*x62 - 5000*x63 - 1600*x64
       - 1600*x65 - 1600*x66 - 1600*x67 - 1600*x68 - 1600*x69 - 1600*x70
       - 2400*x71 - 2400*x72 - 2400*x73 - 2400*x74 - 2400*x75 - 2400*x76
       - 2400*x77 - 1200*x78 - 1200*x79 - 1200*x80 - 1200*x81 - 1200*x82
       - 1200*x83 - 1200*x84 + objvar =E= 0;

* set non default bounds

i1.up = 10; 
i2.up = 10; 
i3.up = 10; 
i4.up = 10; 
i5.up = 10; 
i6.up = 10; 
i7.up = 10; 
i8.up = 4; 
i9.up = 4; 
i10.up = 4; 
i11.up = 4; 
i12.up = 4; 
i13.up = 4; 
i14.up = 4; 
i15.up = 8; 
i16.up = 8; 
i17.up = 8; 
i18.up = 8; 
i19.up = 8; 
i20.up = 8; 
i21.up = 8; 
i22.up = 3; 
i23.up = 3; 
i24.up = 3; 
i25.up = 3; 
i26.up = 3; 
i27.up = 3; 
i28.up = 3; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP minimizing objvar;
