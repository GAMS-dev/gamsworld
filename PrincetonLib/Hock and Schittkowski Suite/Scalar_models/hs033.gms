*  NLP written by GAMS Convert at 07/27/06 09:26:08
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        2        7        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Positive Variables  x1,x3;

Equations  e1,e2,e3;


e1.. sqr(x1) + sqr(x2) - sqr(x3) =L= 0;

e2.. sqr(x1) + sqr(x2) + sqr(x3) =G= 4;

e3..  - (-1 + x1)*(-2 + x1)*(-3 + x1) - x3 + objvar =E= 0;

* set non default bounds

x2.lo = 1E-7; 
x3.up = 5; 

* set non default levels

x3.l = 3; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
