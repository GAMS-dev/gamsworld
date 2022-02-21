*  MIP written by GAMS Convert at 08/20/07 23:15:58
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         18        1       17        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         23        1        0       22        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         61       61        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19
          ,i20,i21,i22,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17
          ,i18,i19,i20,i21,i22;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18;


e1..  - 2*i3 + i6 =G= 0;

e2..  - i3 + i7 =G= 0;

e3..  - 2*i1 + i8 =G= 0;

e4..  - i1 + i9 =G= 0;

e5..  - i2 + i10 =G= 0;

e6..  - 2*i2 + i11 =G= 0;

e7..  - i2 + i12 =G= 0;

e8..    i1 - i4 - i5 + i13 =G= 0;

e9..  - i5 + i14 =G= 0;

e10..  - i4 + i15 =G= 0;

e11..    i2 - i4 - i5 + i16 =G= 0;

e12..  - i5 + i17 =G= 0;

e13..  - i4 + i18 =G= 0;

e14..  - 2*i4 - 2*i5 + i19 =G= 0;

e15..  - 2*i1 + i3 + i20 =G= 0;

e16..    i4 + i21 =G= 0;

e17..    i5 + i22 =G= 0;

e18..  - 3.55*i1 - 3.2*i2 - 6.8*i3 - 2.6*i4 - 2.2*i5 - 0.3*i6 - i7 - 0.2*i8
       - 0.8*i9 - 2.75*i10 - 0.1*i11 - 0.29*i12 - 30*i13 - 2.6*i14 - 3*i15
       - 3*i16 - 1.65*i17 - 1.65*i18 - 0.15*i19 - 12.75*i20 + objvar =E= 0;

* set non default bounds

i1.up = 4000; 
i2.up = 3000; 
i3.up = 600; 
i4.lo = 3000; i4.up = 5000; 
i5.lo = 3000; i5.up = 4000; 
i6.up = 20000; 
i7.up = 20000; 
i8.up = 20000; 
i9.up = 20000; 
i10.up = 20000; 
i11.up = 20000; 
i12.up = 20000; 
i13.up = 20000; 
i14.up = 20000; 
i15.up = 20000; 
i16.up = 20000; 
i17.up = 20000; 
i18.up = 20000; 
i19.up = 20000; 
i20.up = 20000; 
i21.up = 20000; 
i22.up = 20000; 

* set non default levels

i4.l = 3000; 
i5.l = 3000; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
