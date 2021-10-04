*  NLP written by GAMS Convert at 06/26/06 16:29:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          8        5        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3;


e1.. 10*sqr(x1) - 10*x2 + x3 =E= 0;

e2..    x1 + x4 =E= 1;

e3..  - (sqr(x3) + sqr(x4)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -1.2; 
x2.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
