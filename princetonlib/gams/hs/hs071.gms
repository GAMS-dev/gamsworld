*  NLP written by GAMS Convert at 07/27/06 09:26:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        2        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        1       12        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3;


e1.. x1*x2*x3*x4 =G= 25;

e2.. sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) =E= 40;

e3..  - (x1*x4*(x1 + x2 + x3) + x3) + objvar =E= 0;

* set non default bounds

x1.lo = 1; x1.up = 5; 
x2.lo = 1; x2.up = 5; 
x3.lo = 1; x3.up = 5; 
x4.lo = 1; x4.up = 5; 

* set non default levels

x2.l = 5; 
x3.l = 5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
