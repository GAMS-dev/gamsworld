*  NLP written by GAMS Convert at 06/26/06 16:29:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          6        1        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1;


e1..  - (POWER(x1,10) + POWER(x2,10) + POWER(x3,10) + POWER(x4,10) + POWER(x5,
     10)) + objvar =E= 0;

* set non default bounds

x1.lo = -0.5; x1.up = 0.4; 
x2.lo = -0.5; x2.up = 0.4; 
x3.lo = -0.5; x3.up = 0.4; 
x4.lo = -0.5; x4.up = 0.4; 
x5.lo = -0.5; x5.up = 0.4; 

* set non default levels

x1.l = 0.4; 
x2.l = 0.4; 
x3.l = 0.4; 
x4.l = 0.4; 
x5.l = 0.4; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
