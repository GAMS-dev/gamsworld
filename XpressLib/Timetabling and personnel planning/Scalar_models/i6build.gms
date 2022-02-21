*  MIP written by GAMS Convert at 10/04/07 19:41:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         26       14        0       12        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31        1        0       30        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         91       91        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


e1..    i1 - i19 + i25 =E= 4;

e2..    i2 - i20 + i26 =E= 6;

e3..    i3 - i21 + i27 =E= 7;

e4..    i4 - i22 + i28 =E= 4;

e5..    i5 - i23 + i29 =E= 6;

e6..    i6 - i24 + i30 =E= 2;

e7..    i1 - i7 =E= 3;

e8..  - i1 + i2 - i8 + i13 =E= 0;

e9..  - i2 + i3 - i9 + i14 =E= 0;

e10..  - i3 + i4 - i10 + i15 =E= 0;

e11..  - i4 + i5 - i11 + i16 =E= 0;

e12..  - i5 + i6 - i12 + i17 =E= 0;

e13..  - i6 + i18 =E= -3;

e14..  - 0.333333333333333*i1 + i13 =L= 0;

e15..  - 0.333333333333333*i2 + i14 =L= 0;

e16..  - 0.333333333333333*i3 + i15 =L= 0;

e17..  - 0.333333333333333*i4 + i16 =L= 0;

e18..  - 0.333333333333333*i5 + i17 =L= 0;

e19..  - 0.333333333333333*i6 + i18 =L= 0;

e20..  - 0.25*i1 + i25 =L= 0;

e21..  - 0.25*i2 + i26 =L= 0;

e22..  - 0.25*i3 + i27 =L= 0;

e23..  - 0.25*i4 + i28 =L= 0;

e24..  - 0.25*i5 + i29 =L= 0;

e25..  - 0.25*i6 + i30 =L= 0;

e26..  - 100*i7 - 100*i8 - 100*i9 - 100*i10 - 100*i11 - 100*i12 - 160*i13
       - 160*i14 - 160*i15 - 160*i16 - 160*i17 - 160*i18 - 200*i19 - 200*i20
       - 200*i21 - 200*i22 - 200*i23 - 200*i24 - 200*i25 - 200*i26 - 200*i27
       - 200*i28 - 200*i29 - 200*i30 + objvar =E= 0;

* set non default bounds

i1.up = 100; 
i2.up = 100; 
i3.up = 100; 
i4.up = 100; 
i5.up = 100; 
i6.up = 100; 
i7.up = 3; 
i8.up = 3; 
i9.up = 3; 
i10.up = 3; 
i11.up = 3; 
i12.up = 3; 
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

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
