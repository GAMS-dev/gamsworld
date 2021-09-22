*  NLP written by GAMS Convert at 10/06/06 11:33:42
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        4        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         15        7        8        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3,e4,e5,e6;


e1..    x3 - x4 =L= 0.48;

e2..  - x3 + x4 =L= 0.48;

e3..  - (1000*sin((-0.25) - x3) + 1000*sin((-0.25) - x4)) + x1 =E= 894.8;

e4..  - (1000*sin((-0.25) + x3) + 1000*sin((-0.25) + x3 - x4)) + x2 =E= 894.8;

e5..  - (1000*sin((-0.25) + x4) + 1000*sin((-0.25) - x3 + x4)) =E= 1294.8;

e6..  - (1e-6*POWER(x1,3) + 3*x1 + 6.66666666666667e-7*POWER(x2,3) + 2*x2)
      + objvar =E= 0;

* set non default bounds

x1.lo = 0.01; x1.up = 1200; 
x2.lo = 0.01; x2.up = 1200; 
x3.lo = -0.48; x3.up = 0.48; 
x4.lo = -0.48; x4.up = 0.48; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
