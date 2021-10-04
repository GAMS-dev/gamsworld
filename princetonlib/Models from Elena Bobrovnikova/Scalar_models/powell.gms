*  NLP written by GAMS Convert at 06/26/06 16:29:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1;


e1..  - (sqr(x1 + 10*x2) + 5*sqr(x3 - x4) + POWER(x2 - 2*x3,4) + 10*POWER(x1 - 
     x4,4)) + objvar =E= 0;

* set non default bounds

x1.lo = -4; x1.up = 5; 
x2.lo = -4; x2.up = 5; 
x3.lo = -4; x3.up = 5; 
x4.lo = -4; x4.up = 5; 

* set non default levels

x1.l = 3; 
x2.l = -1; 
x4.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
