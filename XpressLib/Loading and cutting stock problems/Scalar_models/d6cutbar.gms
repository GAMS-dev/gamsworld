*  MIP written by GAMS Convert at 08/20/07 23:19:39
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13        1        0       12        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         32       32        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12;

Equations  e1,e2,e3,e4;


e1..    2*i3 + 2*i5 + 3*i6 + i9 + 3*i10 + 5*i12 =G= 432;

e2..    i2 + 2*i4 + i5 + i7 + 2*i8 + 3*i11 =G= 500;

e3..    2*i1 + i2 + i3 + 2*i7 + i8 + 2*i9 + i10 =G= 400;

e4..  - 150*i1 - 150*i2 - 150*i3 - 150*i4 - 150*i5 - 150*i6 - 200*i7 - 200*i8
      - 200*i9 - 200*i10 - 200*i11 - 200*i12 + objvar =E= -75280;

* set non default bounds

i1.up = 200; 
i2.up = 200; 
i3.up = 200; 
i4.up = 200; 
i5.up = 200; 
i6.up = 200; 
i7.up = 200; 
i8.up = 200; 
i9.up = 200; 
i10.up = 200; 
i11.up = 200; 
i12.up = 200; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
