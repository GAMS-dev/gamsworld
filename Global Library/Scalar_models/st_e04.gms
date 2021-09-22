*  NLP written by GAMS Convert at 08/29/02 12:49:52
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       2       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         9       4       5       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables x1,x3;

Equations  e1,e2,e3;


e1.. x3*x1 + 144*x4 =G= 11520;

e2..  - exp(11.86 - 3950/(460 + x4)) + x2 =E= 0;

e3..  - (400*x1**0.9 + 22*(x2 - 14.7)**1.2) - x3 + objvar =E= 1000;

* set non default bounds

x1.up = 15.1; 
x2.lo = 14.7; x2.up = 94.2; 
x3.up = 5371; 
x4.lo = -459.67; x4.up = 80; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
