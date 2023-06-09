*  LP written by GAMS Convert at 02/22/08 02:59:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        7        0        0
*
*  Solve m using LP maximizing objvar;
*

Variables  x1,x2,objvar;

Negative Variables  x1,x2;

Equations  e1,e2,e3;


e1..  - 1.9*x1 + 2.3*x2 =G= 0;

e2..    2.9*x1 - 1.3*x2 =G= 0;

e3..  - 40*x1 - 32*x2 + objvar =E= 0;

* set non default bounds

x1.up = 60; 
x2.up = 45; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
