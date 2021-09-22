*  NLP written by GAMS Convert at 08/31/02 18:54:24
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         7       1       6       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        19      15       4       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..    x1 + x2 =G= 1;

e2..    2*x3 + 2*x4 =G= 4;

e3..    x1 + x3 =G= 3;

e4..    x2 + x4 =G= 4;

e5..  - x2 - 2*x3 - 3*x4 =G= -8;

e6..  - 3*x2 - x3 - 2*x4 =G= -10;

e7..  - (0.25*x1*x1 - x1 + 0.25*x2*x2 - x2 + 0.25*x3*x3 - x3 + 0.25*x4*x4 - x4)
      + objvar =E= 0;

* set non default bounds

x1.up = 10000; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
