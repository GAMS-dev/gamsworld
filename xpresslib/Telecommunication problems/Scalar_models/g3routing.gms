*  MIP written by GAMS Convert at 09/21/07 20:31:08
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        1        0       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         18        1        0       17        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         73       73        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..    i1 + i6 + i7 + i9 + i11 + i12 + i16 =L= 120;

e2..    i2 + i3 + i4 + i5 + i8 + i10 + i12 + i16 =L= 300;

e3..    i3 + i5 + i6 + i10 + i11 + i14 + i16 + i17 =L= 80;

e4..    i2 + i5 + i7 + i9 + i10 + i13 + i17 =L= 300;

e5..    i3 + i4 + i7 + i8 + i9 + i12 + i13 + i15 =L= 200;

e6..    i1 + i2 + i3 =L= 100;

e7..    i4 + i5 + i6 + i7 =L= 80;

e8..    i8 + i9 + i10 + i11 =L= 75;

e9..    i12 + i13 + i14 =L= 100;

e10..    i15 + i16 + i17 =L= 70;

e11..  - i1 - i2 - i3 - i4 - i5 - i6 - i7 - i8 - i9 - i10 - i11 - i12 - i13
       - i14 - i15 - i16 - i17 + objvar =E= 0;

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

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
