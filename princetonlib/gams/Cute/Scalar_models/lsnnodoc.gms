*  NLP written by GAMS Convert at 10/06/06 11:34:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          5        5        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         16       11        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x3;

Equations  e1,e2,e3,e4,e5;


e1..    x1 + x2 =E= 10;

e2..  - x1 - x3 + x4 =E= 0;

e3..  - x2 + x3 + x5 =E= 0;

e4..  - x4 - x5 =E= -10;

e5..  - (exp(x1 + x3)*x2 + sqr(x3)*sqr(x4) + sqr(x3 - x5)) + objvar =E= 0;

* set non default bounds

x1.lo = 2; x1.up = 4; 
x2.lo = 6; x2.up = 8; 
x3.up = 2; 
x4.lo = -10000; x4.up = 6; 
x5.lo = -10000; x5.up = 8; 

* set non default levels

x1.l = 4; 
x2.l = 8; 
x3.l = 2; 
x4.l = 6; 
x5.l = 8; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
