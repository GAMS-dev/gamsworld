*  NLP written by GAMS Convert at 10/06/06 11:53:50
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        1        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3;


e1..  - 0.124*sqrt(1 + x2*x2)*(8/x1 + 1/(x1*x2)) =G= -1;

e2..  - 0.124*sqrt(1 + x2*x2)*(8/x1 - 1/(x1*x2)) =G= -1;

e3..  - sqrt(1 + x2*x2)*x1 + objvar =E= 0;

* set non default bounds

x1.lo = 0.2; x1.up = 4; 
x2.lo = 0.1; x2.up = 1.6; 

* set non default levels

x1.l = 1; 
x2.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
