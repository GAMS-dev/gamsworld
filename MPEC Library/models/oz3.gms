*  MPEC written by GAMS Convert at 11/06/01 17:02:13
*  
*  Equation counts
*     Total       E       G       L       N       X
*         6       1       5       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        19      19       0       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7;

Positive Variables x2,x3,x6,x7;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - 2*x2 + 2*x4 + 2*x6 =G= -40;

e2..  - 2*x3 + 2*x5 + 2*x7 =G= -40;

e3..  - x2 - x3 - x4 + 2*x5 =G= -40;

e4..    x2 - 2*x4 =G= 10;

e5..    x3 - 2*x5 =G= 10;

e6..    objvar - 2*x2 - 2*x3 + 3*x4 + 3*x5 =E= -60;

* set non default bounds

x2.up = 50; 
x3.up = 50; 
x4.lo = -10; x4.up = 20; 
x5.lo = -10; x5.up = 20; 

* set non default levels

x2.l = 50; 
x3.l = 50; 

* set non default marginals


Model m / e1.x4,e2.x5,e3,e4.x6,e5.x7,e6 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
