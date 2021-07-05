*  NLP written by GAMS Convert at 03/22/08 22:27:05
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13       10        3        0
*
*  Solve m using NLP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,objvar;

Negative Variables  x5;

Positive Variables  x1,x2,x3;

Equations  e1,e2,e3;


e1..  - sqr(x1) - x2 - x3 + x4 + 0.2*x5 =E= 0;

e2..  - sqrt(x4) - x1 - x3 + x5 =E= 0;

e3..  - sqr(x2) - x3 - x4 + objvar =E= 0;

* set non default bounds

x1.up = 10; 
x2.up = 10; 
x3.up = 10; 
x4.lo = 8; 
x5.up = 10; 

* set non default levels

x1.l = 10; 
x4.l = 8; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;