*  NLP written by GAMS Convert at 07/27/06 09:26:08
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        2        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         10        6        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables  x1,x2,x3;

Equations  e1,e2,e3;


e1..  - POWER(x1,3) + 6*x2 + 4*x3 =G= 3;

e2..    x1 + x2 + x3 =E= 1;

e3..  - (sqr(x1 + 3*x2 + x3) + 4*sqr(x1 - x2)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.1; 
x2.l = 0.7; 
x3.l = 0.2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
