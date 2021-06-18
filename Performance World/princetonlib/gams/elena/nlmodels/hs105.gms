*  NLP written by GAMS Convert at 06/26/06 16:29:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          3        1        2        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1;


e1..  - (0.005*(sqr(x1) + sqr(x2)) - cos(x1)*cos(0.707106781186547*x2))
      + objvar =E= 1;

* set non default bounds

x1.lo = -100; x1.up = 100; 
x2.lo = -100; x2.up = 100; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
