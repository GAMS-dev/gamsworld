*  NLP written by GAMS Convert at 07/19/01 13:39:50
*  
*  Equation counts
*     Total       E       G       L       N       X
*         9       3       0       6       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       6       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        22      17       5       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables x4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - x5 + objvar =E= 0;

e2.. 9.625*x1*x4 - 4*x1 - 78*x4 + 16*x2*x4 - x2 + 16*sqr(x4) + x3 =E= -12;

e3.. 16*x1*x4 - 19*x1 - 24*x4 - 8*x2 - x3 =E= -44;

e4..    x1 - 0.25*x5 =L= 2.25;

e5..  - x1 - 0.25*x5 =L= -2.25;

e6..  - x2 - 0.5*x5 =L= -1.5;

e7..    x2 - 0.5*x5 =L= 1.5;

e8..  - x3 - 1.5*x5 =L= -1.5;

e9..    x3 - 1.5*x5 =L= 1.5;

* set non default bounds

x4.up = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
