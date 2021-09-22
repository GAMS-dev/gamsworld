*  MPEC written by GAMS Convert at 11/06/01 17:02:08
*  
*  Equation counts
*     Total       E       G       L       N       X
*         2       1       1       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         5       3       2       0
*
*  Solve m using MPEC minimizing objvar;


Variables  x1,x2,objvar;

Positive Variables x1,x2;

Equations  e1,e2;


e1..  - (0.5*sqr(x1) + 0.5*x1*x2 - 95*x1) + objvar =E= 0;

e2..    0.5*x1 + 2*x2 =G= 100;

* set non default bounds

x1.up = 200; 

* set non default levels


* set non default marginals


Model m / e1,e2.x2 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
