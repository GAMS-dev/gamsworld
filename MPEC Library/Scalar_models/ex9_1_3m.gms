*  MPEC written by GAMS Convert at 11/06/01 17:02:05
*  
*  Equation counts
*     Total       E       G       L       N       X
*         7       1       6       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       9       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        23      23       0       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9;

Positive Variables x2,x3,x4,x5,x6,x7,x8,x9;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - objvar - 8*x2 - 4*x3 =E= 40;

e2..    x4 - x5 - x6 =G= -1;

e3..  - 2*x2 + x4 - 2*x5 + 0.5*x6 =G= -1;

e4..  - 2*x3 - 2*x4 + x5 + 0.5*x6 =G= -1;

e5..  - x7 - x8 + 2*x9 =G= -1;

e6..    x7 + 2*x8 - x9 =G= -1;

e7..    x7 - 0.5*x8 - 0.5*x9 =G= -2;

* set non default bounds


* set non default levels


* set non default marginals


Model m / e1,e2.x7,e3.x8,e4.x9,e5.x4,e6.x5,e7.x6 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
