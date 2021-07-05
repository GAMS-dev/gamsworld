*  MPEC written by GAMS Convert at 11/06/01 17:02:06
*  
*  Equation counts
*     Total       E       G       L       N       X
*         7       3       4       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         8       8       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        21      11      10       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8;

Positive Variables x2,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - (0.5*sqr(x3 - 3) + 0.5*sqr(x4 - 4)) + objvar =E= 0;

e2.. (1 + 0.2*x2)*x3 - 1.333*x2 + 2*x3*x6 - 0.333*x5 - x7 =E= 3;

e3.. (1 + 0.1*x2)*x4 - x2 + 2*x4*x6 + x5 - x8 =E= 0;

e4..  - 0.1*x2 + 0.333*x3 - x4 =G= -1;

e5.. (-sqr(x3)) - sqr(x4) + 0.1*x2 =G= -9;

e6..    x3 =G= 0;

e7..    x4 =G= 0;

* set non default bounds

x2.up = 10; 

* set non default levels

x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 

* set non default marginals


Model m / e1,e2.x3,e3.x4,e4.x5,e5.x6,e6.x7,e7.x8 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
