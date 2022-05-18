*  MPEC written by GAMS Convert at 11/06/01 17:01:55
*  
*  Equation counts
*     Total       E       G       L       N       X
*         6       1       4       1       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        19      14       5       0
*
*  Solve m using MPEC minimizing objvar;


Variables  x1,x2,objvar,x4,x5,x6,x7;

Positive Variables x1,x2,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - (sqr(x5) - sqr(x1)) + 3*x2 + objvar + 4*x4 =E= 0;

e2.. sqr(x1) + 2*x2 =L= 4;

e3..    2*x4 + 2*x6 - 3*x7 =G= 0;

e4..  - x6 + 4*x7 =G= 5;

e5.. sqr(x1) - 2*x1 + sqr(x2) - 2*x4 + x5 =G= -3;

e6..    x2 + 3*x4 - 4*x5 =G= 4;

* set non default bounds


* set non default levels


* set non default marginals


Model m / e1,e2,e3.x4,e4.x5,e5.x6,e6.x7 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
