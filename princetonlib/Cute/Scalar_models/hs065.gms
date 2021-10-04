*  NLP written by GAMS Convert at 10/06/06 11:33:42
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        1        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2;


e1.. sqr(x1) + sqr(x2) + sqr(x3) =L= 48;

e2..  - (sqr(x1 - x2) + 0.111111111111111*sqr((-10) + x1 + x2) + sqr((-5) + x3)
     ) + objvar =E= 0;

* set non default bounds

x1.lo = -4.5; x1.up = 4.5; 
x2.lo = -4.5; x2.up = 4.5; 
x3.lo = -5; x3.up = 5; 

* set non default levels

x2.l = 4.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
