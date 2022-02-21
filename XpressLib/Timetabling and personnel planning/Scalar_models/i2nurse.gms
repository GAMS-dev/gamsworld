*  MIP written by GAMS Convert at 10/04/07 19:41:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13        1       12        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13        1        0       12        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         57       57        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    i8 + i9 + i11 =G= 15;

e2..    i1 + i9 + i10 =G= 15;

e3..    i1 + i2 + i10 + i11 =G= 15;

e4..    i2 + i3 + i11 =G= 35;

e5..    i1 + i3 + i4 =G= 40;

e6..    i1 + i2 + i4 + i5 =G= 40;

e7..    i2 + i3 + i5 + i6 =G= 35;

e8..    i3 + i4 + i6 + i7 =G= 30;

e9..    i4 + i5 + i7 + i8 =G= 30;

e10..    i5 + i6 + i8 + i9 =G= 35;

e11..    i6 + i7 + i9 + i10 =G= 30;

e12..    i7 + i8 + i10 + i11 =G= 20;

e13..  - i1 - i2 - i3 - i4 - i5 - i6 - i7 - i8 - i9 - i10 - i11 - i12 + objvar
       =E= 0;

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

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
