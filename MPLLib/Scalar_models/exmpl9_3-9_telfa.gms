*  MIP written by GAMS Convert at 06/27/07 15:16:33
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        0        2        0        0        0
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
*  Solve m using MIP maximizing objvar;


Variables  i1,i2,objvar;

Integer Variables  i1,i2;

Equations  e1,e2,e3;


e1..    i1 + i2 =L= 6;

e2..    9*i1 + 5*i2 =L= 45;

e3..  - 8*i1 - 5*i2 + objvar =E= 0;

* set non default bounds

i1.up = 100; 
i2.up = 100; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP maximizing objvar;
