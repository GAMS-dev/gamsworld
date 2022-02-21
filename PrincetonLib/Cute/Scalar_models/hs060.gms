*  NLP written by GAMS Convert at 10/06/06 11:33:41
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
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


e1.. (1 + sqr(x2))*x1 + POWER(x3,4) =E= 8.24264068711929;

e2..  - (sqr((-1) + x1) + sqr(x1 - x2) + POWER(x2 - x3,4)) + objvar =E= 0;

* set non default bounds

x1.lo = -10; x1.up = 10; 
x2.lo = -10; x2.up = 10; 
x3.lo = -10; x3.up = 10; 

* set non default levels

x1.l = 2; 
x2.l = 2; 
x3.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
