*  NLP written by GAMS Convert at 10/06/06 11:33:38
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          9        5        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1,e2;


e1..    x1 + x2 + x3 + x4 =E= 1;

e2..  - (0.08*exp(9.5*x1) + 3.95*exp(5.5*x2) + 1657834*exp((-13.32) - 5.92*x3)
      + 0.89*exp(7*x4)) + objvar =E= -3.58;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
x3.up = 1; 
x4.up = 1; 

* set non default levels

x1.l = 0.5; 
x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
