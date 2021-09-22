*  MIP written by GAMS Convert at 10/17/08 03:01:05
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         26       13        0       13        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         33        1        0       32        0        0        0        0
*  FX      2        0        0        2        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         91       91        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31,i32;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


e1..    i1 + i2 + i3 + i4 =E= 1;

e2..    i5 + i6 + i7 + i8 =E= 1;

e3..    i9 + i10 + i11 + i12 =E= 1;

e4..    i13 + i14 + i15 + i16 =E= 1;

e5..    i17 + i18 + i19 + i20 =E= 1;

e6..    i21 + i22 + i23 + i24 =E= 1;

e7..    i25 + i26 + i27 + i28 =E= 1;

e8..    i29 + i30 + i31 + i32 =E= 1;

e9..    i1 + i21 =L= 1;

e10..    i2 + i22 =L= 1;

e11..    i3 + i23 =L= 1;

e12..    i4 + i24 =L= 1;

e13..    i1 + i13 =L= 1;

e14..    i2 + i14 =L= 1;

e15..    i3 + i15 =L= 1;

e16..    i4 + i16 =L= 1;

e17..    i13 + i21 =L= 1;

e18..    i14 + i22 =L= 1;

e19..    i15 + i23 =L= 1;

e20..    i16 + i24 =L= 1;

e21..    i1 + i5 + i9 + i13 + i17 + i21 + i25 + i29 =E= 3;

e22..    i2 + i6 + i10 + i14 + i18 + i22 + i26 + i30 =E= 2;

e23..    i3 + i7 + i11 + i15 + i19 + i23 + i27 + i31 =E= 2;

e24..    i4 + i8 + i12 + i16 + i20 + i24 + i28 + i32 =E= 1;

e25..    i17 - i29 =L= 0;

e26..    objvar =E= 1;

* set non default bounds

i1.up = 1; 
i2.up = 1; 
i3.up = 1; 
i4.up = 1; 
i5.up = 1; 
i6.up = 1; 
i7.up = 1; 
i8.up = 1; 
i9.up = 1; 
i10.up = 1; 
i11.fx = 1; 
i12.up = 1; 
i13.up = 1; 
i14.up = 1; 
i15.up = 1; 
i16.up = 1; 
i17.up = 1; 
i18.up = 1; 
i19.up = 1; 
i20.up = 1; 
i21.up = 1; 
i22.fx = 1; 
i23.up = 1; 
i24.up = 1; 
i25.up = 1; 
i26.up = 1; 
i27.up = 1; 
i28.up = 1; 
i29.up = 1; 
i30.up = 1; 
i31.up = 1; 
i32.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
