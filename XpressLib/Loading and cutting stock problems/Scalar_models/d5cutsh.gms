*  MIP written by GAMS Convert at 08/20/07 23:19:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        1        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         17        1        0       16        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         51       51        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16;

Equations  e1,e2,e3,e4,e5;


e1..    i1 + i2 + i3 =G= 8;

e2..    2*i1 + i2 + 2*i4 + i5 + 3*i7 + 2*i8 + i9 + 5*i11 + 4*i12 + 3*i13
      + 2*i14 + i15 =G= 13;

e3..    2*i4 + 2*i5 + 2*i6 + i7 + i8 + i9 + i10 =G= 5;

e4..    i2 + 3*i3 + i5 + 3*i6 + 2*i8 + 3*i9 + 5*i10 + i12 + 3*i13 + 5*i14
      + 6*i15 + 8*i16 =G= 15;

e5..  - i1 - i2 - i3 - i4 - i5 - i6 - i7 - i8 - i9 - i10 - i11 - i12 - i13
      - i14 - i15 - i16 + objvar =E= 0;

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

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
