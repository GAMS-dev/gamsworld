*  MPEC written by GAMS Convert at 11/06/01 17:02:11
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       1       4       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       6       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        18       7      11       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6;

Positive Variables x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5;


e1..  - 0.5*(POWER(x2 - 3,2) + POWER(x3 - 4,2) + 10*POWER(x5,2)) + objvar
      =E= 0;

e2.. (1 + 0.2*x6)*x2 - 1.333*x6 + 2*x2*x5 - 0.333*x4 =G= 1;

e3.. (1 + 0.1*x6)*x3 - x6 + 2*x3*x5 + x4 =G= 0;

e4..    0.333*x2 - x3 - 0.1*x6 =G= -1;

e5.. (-POWER(x2,2)) - POWER(x3,2) + 0.1*x6 =G= -9;

* set non default bounds

x6.up = 10; 

* set non default levels


* set non default marginals


Model m / e1,e2.x2,e3.x3,e4.x4,e5.x5 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
