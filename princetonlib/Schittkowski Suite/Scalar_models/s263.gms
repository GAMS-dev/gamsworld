*  NLP written by GAMS Convert at 07/02/05 18:32:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        3        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         12        6        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5;


e1..  - POWER(x1,3) + x2 =G= 0;

e2.. sqr(x1) - x2 =G= 0;

e3.. (-POWER(x1,3)) - sqr(x3) + x2 =E= 0;

e4.. sqr(x1) - sqr(x4) - x2 =E= 0;

e5..    x1 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 10; 
x2.l = 10; 
x3.l = 10; 
x4.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
