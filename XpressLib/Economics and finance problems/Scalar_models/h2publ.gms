*  MIP written by GAMS Convert at 09/21/07 20:34:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        1        0        6        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         19       19        0        0
*
*  Solve m using MIP maximizing objvar;
*

Variables  i1,i2,i3,i4,i5,i6,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6;

Equations  e1,e2,e3;


e1..    1500*i1 + 8000*i2 + 12000*i3 + 9000*i4 + 24000*i5 + 51000*i6
      =L= 250000;

e2..    12000*i1 + 1500*i2 + 2000*i3 + 6000*i4 + 3000*i5 + 9000*i6 =G= 100000;

e3..  - 3*i1 - 7*i2 - 8*i3 - 2*i4 - 6*i5 - 9*i6 + objvar =E= 0;

* set non default bounds

i1.up = 4; 
i2.up = 2; 
i3.up = 8; 
i4.up = 60; 
i5.up = 4; 
i6.up = 8; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP maximizing objvar;
