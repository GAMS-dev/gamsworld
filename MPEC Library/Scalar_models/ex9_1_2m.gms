*  MPEC written by GAMS Convert at 11/06/01 17:02:04
*  
*  Equation counts
*     Total       E       G       L       N       X
*         6       2       4       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        14      14       0       0
*
*  Solve m using MPEC minimizing objvar;


Variables  x1,objvar,x3,x4,x5,x6,x7;

Positive Variables x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - 3*x1 - objvar - x3 =E= 0;

e2..  - x1 + x3 =G= -3;

e3..  - 2*x1 - x3 =G= -12;

e4..    x1 - 4*x3 =G= -12;

e5..    x1 =G= 0;

e6..    x4 + 2*x5 - x6 - x7 =E= -1;

* set non default bounds


* set non default levels


* set non default marginals


Model m / e1,e2.x4,e3.x5,e4.x6,e5.x7,e6.x1 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
