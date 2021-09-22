*  NLP written by GAMS Convert at 07/25/01 15:03:04
*  
*  Equation counts
*     Total       E       G       L       N       X
*         6       6       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       6       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        11       6       5       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6;

Positive Variables x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - (2*x2*x4 + 4*x2*x5 + 3*x2*x6 + 6*x3*x4 + 2*x3*x5 + 3*x3*x6 + 5*x4*x5 + 
     3*x4*x6 + 3*x5*x6) + objvar =E= 0;

e2..    x2 =E= 1;

e3..    x3 =E= 1;

e4..    x4 =E= 1;

e5..    x5 =E= 1;

e6..    x6 =E= 1;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
