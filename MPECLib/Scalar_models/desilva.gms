*  MPEC written by GAMS Convert at 11/06/01 17:02:02
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       3       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        13       3      10       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7;

Positive Variables x2,x3,x4,x5,x6,x7;

Equations  e1,e2,e3,e4,e5;


e1..  - (sqr(x2) + sqr(x3) - 2*x2 - 2*x3 + sqr(x4) + sqr(x5)) + objvar =E= 0;

e2.. (2*x4 - 2)*x6 + 2*x4 - 2*x2 =E= 0;

e3.. (2*x5 - 2)*x7 + 2*x5 - 2*x3 =E= 0;

e4..  - sqr(x4 - 1) =G= -0.25;

e5..  - sqr(x5 - 1) =G= -0.25;

* set non default bounds

x2.up = 2; 
x3.up = 2; 

* set non default levels

x2.l = 0.6; 
x3.l = 0.6; 
x4.l = 2; 
x5.l = 2; 

* set non default marginals


Model m / e1,e2.x4,e3.x5,e4.x6,e5.x7 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
