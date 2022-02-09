*  NLP written by GAMS Convert at 08/29/02 12:49:53
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         4       2       0       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        12      10       2       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables x1,x2,x3,x4;

Equations  e1,e2,e3,e4;


e1..  - 3*x1 + x2 - 3*x3 =E= 0;

e2..    x1 + 2*x3 =L= 4;

e3..    x2 + 2*x4 =L= 4;

e4..  - (x1**0.6 + x2**0.6 - 6*x1) + 4*x3 - 3*x4 + objvar =E= 0;

* set non default bounds

x1.up = 3; 
x2.up = 4; 
x3.up = 2; 
x4.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
