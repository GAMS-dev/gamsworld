*  NLP written by GAMS Convert at 07/27/06 09:26:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        5        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables  x1,x2,x3;

Equations  e1,e2,e3;


e1..  - exp(x1) + x2 =G= 0;

e2..  - exp(x2) + x3 =G= 0;

e3..    0.8*x1 - 0.2*x3 + objvar =E= 0;

* set non default bounds

x1.up = 100; 
x2.up = 100; 
x3.up = 10; 

* set non default levels

x2.l = 1.05; 
x3.l = 2.9; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
