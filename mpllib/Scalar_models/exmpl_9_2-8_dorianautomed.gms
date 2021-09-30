*  MIP written by GAMS Convert at 06/27/07 15:16:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        1        0        6        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13       13        0        0
*
*  Solve m using MIP maximizing objvar;


Variables  i1,i2,i3,i4,i5,i6,objvar;

Integer Variables  i1,i2,i3,i4,i5,i6;

Equations  e1,e2;


e1..    1000*i1 + 1000*i2 + 1000*i3 + 1000*i4 + 1000*i5 + 1000*i6 =L= 20000;

e2..  - 10000*i1 - 3000*i2 - 2500*i3 - 8000*i4 - 6000*i5 - 2000*i6 + objvar
      =E= 0;

* set non default bounds

i1.up = 6; 
i2.up = 4; 
i3.up = 5; 
i4.up = 4; 
i5.up = 8; 
i6.up = 3; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;