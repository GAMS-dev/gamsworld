*  NLP written by GAMS Convert at 07/19/01 13:40:26
*  
*  Equation counts
*     Total       E       G       L       N       X
*         3       1       0       2       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         6       4       2       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2,e3;


e1..  - x2 + objvar =E= 0;

e2.. 4510067.11409396*x1*exp(-7548.11926028431/x1) + 0.00335570469798658*x1 - 
     2020510067.11409*exp(-7548.11926028431/x1) - x2 =L= 1;

e3.. (-4510067.11409396*x1*exp(-7548.11926028431/x1)) - 0.00335570469798658*x1
      + 2020510067.11409*exp(-7548.11926028431/x1) - x2 =L= -1;

* set non default bounds

x1.lo = 100; x1.up = 1000; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
