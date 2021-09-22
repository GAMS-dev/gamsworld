*  MIP written by GAMS Convert at 10/31/07 21:24:47
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         25       21        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31        6        0       25        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        109      109        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,i23,i24,i25,x26,x27,x28,x29,x30,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22,i23,i24,i25;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25;


e1..    i1 + i2 + i3 + i4 + i5 =E= 9;

e2..    i6 + i7 + i8 + i9 + i10 =E= 9;

e3..    i11 + i12 + i13 + i14 + i15 =E= 9;

e4..    i16 + i17 + i18 + i19 + i20 =E= 9;

e5..    i21 + i22 + i23 + i24 + i25 =E= 9;

e6..    i1 + i6 + i11 + i16 + i21 =E= 9;

e7..    i2 + i7 + i12 + i17 + i22 =E= 9;

e8..    i3 + i8 + i13 + i18 + i23 =E= 9;

e9..    i4 + i9 + i14 + i19 + i24 =E= 9;

e10..    i5 + i10 + i15 + i20 + i25 =E= 9;

e11..    i1 + 0.75*i2 + 0.5*i3 + 0.25*i4 =E= 4.5;

e12..    i6 + 0.75*i7 + 0.5*i8 + 0.25*i9 =E= 4.5;

e13..    i11 + 0.75*i12 + 0.5*i13 + 0.25*i14 =E= 4.5;

e14..    i16 + 0.75*i17 + 0.5*i18 + 0.25*i19 =E= 4.5;

e15..    i21 + 0.75*i22 + 0.5*i23 + 0.25*i24 =E= 4.5;

e16..    10000*i1 + 1000*i2 + 100*i3 + 10*i4 + i5 - x26 =E= 0;

e17..    10000*i6 + 1000*i7 + 100*i8 + 10*i9 + i10 - x27 =E= 0;

e18..    10000*i11 + 1000*i12 + 100*i13 + 10*i14 + i15 - x28 =E= 0;

e19..    10000*i16 + 1000*i17 + 100*i18 + 10*i19 + i20 - x29 =E= 0;

e20..    10000*i21 + 1000*i22 + 100*i23 + 10*i24 + i25 - x30 =E= 0;

e21..  - x26 + x27 =G= 1;

e22..  - x27 + x28 =G= 1;

e23..  - x28 + x29 =G= 1;

e24..  - x29 + x30 =G= 1;

e25..    objvar =E= 0;

* set non default bounds

i1.lo = 1; i1.up = 5; 
i2.lo = 1; i2.up = 5; 
i3.lo = 1; i3.up = 5; 
i4.lo = 1; i4.up = 5; 
i5.lo = 1; i5.up = 5; 
i6.lo = 1; i6.up = 5; 
i7.lo = 1; i7.up = 5; 
i8.lo = 1; i8.up = 5; 
i9.lo = 1; i9.up = 5; 
i10.lo = 1; i10.up = 5; 
i11.lo = 1; i11.up = 5; 
i12.lo = 1; i12.up = 5; 
i13.lo = 1; i13.up = 5; 
i14.lo = 1; i14.up = 5; 
i15.lo = 1; i15.up = 5; 
i16.lo = 1; i16.up = 5; 
i17.lo = 1; i17.up = 5; 
i18.lo = 1; i18.up = 5; 
i19.lo = 1; i19.up = 5; 
i20.lo = 1; i20.up = 5; 
i21.lo = 1; i21.up = 5; 
i22.lo = 1; i22.up = 5; 
i23.lo = 1; i23.up = 5; 
i24.lo = 1; i24.up = 5; 
i25.lo = 1; i25.up = 5; 

* set non default levels

i1.l = 1; 
i2.l = 1; 
i3.l = 1; 
i4.l = 1; 
i5.l = 1; 
i6.l = 1; 
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

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
