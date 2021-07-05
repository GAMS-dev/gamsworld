*  MPEC written by GAMS Convert at 11/06/01 17:02:03
*  
*  Equation counts
*     Total       E       G       L       N       X
*         8       3       5       0       0       0
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


Variables  x1,x2,objvar,x4,x5,x6,x7,x8,x9;

Positive Variables x4,x5,x6,x7,x8,x9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - 3*x1 + 2*x2 - objvar - x4 =E= 0;

e2..  - x1 - 4*x2 + 2*x4 =G= -16;

e3..  - 3*x1 + 2*x2 - 8*x4 =G= -48;

e4..  - x1 + 3*x2 + 2*x4 =G= 12;

e5..    x1 =G= 0;

e6..  - x1 =G= -4;

e7..    x5 + 3*x6 + x7 - x8 + x9 =E= 1;

e8..    4*x5 - 2*x6 - 3*x7 =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / e1,e2.x5,e3.x6,e4.x7,e5.x8,e6.x9,e7.x1,e8.x2 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
