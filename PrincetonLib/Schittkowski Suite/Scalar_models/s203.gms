*  NLP written by GAMS Convert at 07/02/05 18:32:23
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        4        9        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4;


e1.. (1 - x5)*x4 + x1 =E= 1.5;

e2.. (1 - sqr(x5))*x4 + x2 =E= 2.25;

e3.. (1 - POWER(x5,3))*x4 + x3 =E= 2.625;

e4..  - (sqr(x1) + sqr(x2) + sqr(x3)) + objvar =E= 0;

* set non default bounds


* set non default levels

x4.l = 2; 
x5.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
