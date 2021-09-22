*  NLP written by GAMS Convert at 07/27/06 09:26:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        4        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         17        1       16        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4;


e1.. sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) =E= 10;

e2.. x2*x3 - 5*x4*x5 =E= 0;

e3.. POWER(x1,3) + POWER(x2,3) =E= -1;

e4..  - (exp(x1*x2*x3*x4*x5) - 0.5*sqr(1 + POWER(x1,3) + POWER(x2,3))) + objvar
      =E= 0;

* set non default bounds

x1.lo = -2.3; x1.up = 2.3; 
x2.lo = -2.3; x2.up = 2.3; 
x3.lo = -3.2; x3.up = 3.2; 
x4.lo = -3.2; x4.up = 3.2; 
x5.lo = -3.2; x5.up = 3.2; 

* set non default levels

x1.l = -2; 
x2.l = 2; 
x3.l = 2; 
x4.l = -1; 
x5.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
