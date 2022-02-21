*  MIP written by GAMS Convert at 09/21/07 20:34:18
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        7        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10        7        0        3        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31       31        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,i3,x4,x5,x6,x7,x8,x9,objvar;

Integer Variables  i1,i2,i3;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    0.07*i1 + 0.056*i2 + 0.0325*i3 + 1.032*x4 - x5 =E= 600;

e2..    0.07*i1 + 0.056*i2 + 0.0325*i3 + 1.032*x5 - x6 =E= 640;

e3..    0.07*i1 + 0.056*i2 + 0.0325*i3 + 1.032*x6 - x7 =E= 480;

e4..    0.07*i1 + 0.856*i2 + 0.0325*i3 + 1.032*x7 - x8 =E= 760;

e5..    1.07*i1 + 0.0325*i3 + 1.032*x8 - x9 =E= 1020;

e6..    0.5325*i3 + 1.032*x9 =E= 950;

e7..  - i1 - 0.8*i2 - 0.5*i3 - x4 + objvar =E= 1000;

* set non default bounds

i1.up = 100; 
i2.up = 100; 
i3.up = 100; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
