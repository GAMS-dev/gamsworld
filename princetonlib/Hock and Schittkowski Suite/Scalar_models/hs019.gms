*  NLP written by GAMS Convert at 07/27/06 09:26:07
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        1        1        0        0        0
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

Positive Variables  x2;

Equations  e1,e2,e3;


e1.. sqr((-5) + x1) + sqr((-5) + x2) =G= 100;

e2.. sqr((-5) + x2) + sqr((-6) + x1) =L= 82.81;

e3..  - ((-10 + x1)*(-10 + x1)*(-10 + x1) + (-20 + x2)*(-20 + x2)*(-20 + x2))
      + objvar =E= 0;

* set non default bounds

x1.lo = 13; x1.up = 100; 
x2.up = 100; 

* set non default levels

x1.l = 20.1; 
x2.l = 5.84; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;