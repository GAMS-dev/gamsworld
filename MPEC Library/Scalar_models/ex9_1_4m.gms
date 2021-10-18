*  MPEC written by GAMS Convert at 11/06/01 17:02:05
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
*        12      12       0       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6;

Positive Variables x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5;


e1..  - objvar - x2 - 3*x3 =E= 0;

e2..    2*x2 - x3 =G= 0;

e3..  - 2*x2 - 5*x3 =G= -108;

e4..  - 2*x2 + 3*x3 =G= 4;

e5..    x4 + 5*x5 - 3*x6 =G= -1;

* set non default bounds


* set non default levels


* set non default marginals


Model m / e1,e2.x4,e3.x5,e4.x6,e5.x3 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
