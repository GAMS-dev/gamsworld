*  MIP written by GAMS Convert at 01/17/08 23:45:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16        1       15        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16        1        0       15        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31       31        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..    16*i1 =G= 9;

e2..    9*i2 =G= 6;

e3..    5*i3 =G= 20;

e4..    4*i4 =G= 30;

e5..    4*i5 =G= 17;

e6..    3*i6 =G= 19;

e7..    3*i7 =G= 25;

e8..    3*i8 =G= 12;

e9..    2*i9 =G= 8;

e10..    2*i10 =G= 20;

e11..    i11 =G= 5;

e12..    i12 =G= 14;

e13..    i13 =G= 15;

e14..    i14 =G= 18;

e15..    i15 =G= 10;

e16..  - i1 - i2 - i3 - i4 - i5 - i6 - i7 - i8 - i9 - i10 - i11 - i12 - i13
       - i14 - i15 + objvar =E= 0;

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

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
