*  NLP written by GAMS Convert at 08/29/02 12:49:54
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         6       1       0       5       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        13      11       2       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables x1,x2;

Equations  e1,e2,e3,e4,e5,e6;


e1..    x1 + x2 =L= 10;

e2..    x1 + 5*x2 =L= 22;

e3..  - 3*x1 + 2*x2 =L= 2;

e4..  - x1 - 4*x2 =L= -4;

e5..    x1 - 2*x2 =L= 4;

e6..  - (-sqr(x1) - 4*sqr(x2)) + objvar =E= 0;

* set non default bounds

x1.up = 8; 
x2.up = 4; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
