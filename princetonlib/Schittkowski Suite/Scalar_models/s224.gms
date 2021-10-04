*  NLP written by GAMS Convert at 07/02/05 18:32:24
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        1        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        9        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3,e4,e5;


e1..    x1 + 3*x2 =G= 0;

e2..  - x1 - 3*x2 =G= -18;

e3..    x1 + x2 =G= 0;

e4..  - x1 - x2 =G= -8;

e5..  - (2*sqr(x1) + sqr(x2) - 48*x1 - 40*x2) + objvar =E= 0;

* set non default bounds

x1.up = 6; 
x2.up = 6; 

* set non default levels

x1.l = 0.1; 
x2.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
