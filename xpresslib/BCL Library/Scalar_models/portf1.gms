*  MIP written by GAMS Convert at 02/22/08 02:22:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        2        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        1        0        2        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        7        0        0
*
*  Solve m using MIP minimizing objvar;
*

Variables  i1,i2,objvar;

Integer Variables  i1,i2;

Equations  e1,e2,e3;


e1..    2*i1 + 3*i2 =G= 41;

e2..    i1 + 2*i2 =E= 13;

e3..  - i1 - i2 + objvar =E= 0;

* set non default bounds

i1.up = 100; 
i2.up = 100; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MIP minimizing objvar;
