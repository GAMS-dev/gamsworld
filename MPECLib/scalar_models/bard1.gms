*  MPEC written by GAMS Convert at 11/06/01 17:01:53
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
*        14      12       2       0
*
*  Solve m using MPEC minimizing objvar;


Variables  x1,objvar,x3,x4,x5,x6;

Positive Variables x1,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5;


e1..  - (sqr(x1 - 5) + sqr(1 + 2*x3)) + objvar =E= 0;

e2..  - 1.5*x1 + 2*x3 + x4 - 0.5*x5 + x6 =G= 2;

e3..    3*x1 - x3 =G= 3;

e4..  - x1 + 0.5*x3 =G= -4;

e5..  - x1 - x3 =G= -7;

* set non default bounds


* set non default levels


* set non default marginals


Model m / e1,e2.x3,e3.x4,e4.x5,e5.x6 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
