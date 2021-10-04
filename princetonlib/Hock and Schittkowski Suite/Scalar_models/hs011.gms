*  NLP written by GAMS Convert at 07/27/06 09:26:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        2        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2;


e1.. sqr(x1) - x2 =L= 0;

e2..  - (sqr((-5) + x1) + sqr(x2)) + objvar =E= -25;

* set non default bounds


* set non default levels

x1.l = 4.9; 
x2.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
