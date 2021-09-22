*  NLP written by GAMS Convert at 07/30/01 10:16:32
*  
*  Equation counts
*     Total       E       G       L       N       X
*         1       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       4       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         4       1       3       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4;

Equations  e1;


e1..  - (sqr(127 + (-x3*exp(-5*x4)) - x2) + sqr(151 + (-x3*exp(-3*x4)) - x2) + 
     sqr(379 + (-x3*exp(-x4)) - x2) + sqr(421 + (-x3*exp(5*x4)) - x2) + sqr(460
      + (-x3*exp(3*x4)) - x2) + sqr(426 + (-x3*exp(x4)) - x2)) + objvar =E= 0;

* set non default bounds

x4.lo = -5; x4.up = 5; 

* set non default levels

x2.l = 500; 
x3.l = -150; 
x4.l = -0.2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
