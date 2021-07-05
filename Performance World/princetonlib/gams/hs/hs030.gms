*  NLP written by GAMS Convert at 07/27/06 09:26:08
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
*          6        1        5        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2;


e1.. sqr(x1) + sqr(x2) =L= 1;

e2..  - (sqr(x1) + sqr(x2) + sqr(x3)) + objvar =E= 0;

* set non default bounds

x1.lo = 1; x1.up = 10; 
x2.lo = -10; x2.up = 10; 
x3.lo = -10; x3.up = 10; 

* set non default levels

x2.l = 1; 
x3.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;