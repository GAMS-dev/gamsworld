*  NLP written by GAMS Convert at 07/02/05 18:32:30
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2;


e1..  - 8.62*POWER(x2,3)/x1 =G= -1;

e2..  - 0.1*(0.44*POWER(x1,3)/sqr(x2) + 10/x1 + 0.592*x1/POWER(x2,3)) + objvar
      =E= 0;

* set non default bounds

x1.lo = 1E-7; x1.up = 5; 
x2.lo = 1E-7; x2.up = 5; 

* set non default levels

x1.l = 2.5; 
x2.l = 2.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
