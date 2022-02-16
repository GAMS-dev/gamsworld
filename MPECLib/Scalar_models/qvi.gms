*  MPEC written by GAMS Convert at 11/06/01 17:02:14
*  
*  Equation counts
*     Total       E       G       L       N       X
*         3       1       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         9       5       4       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4,x5;

Positive Variables x2,x3;

Equations  e1,e2,e3;


e1..  - (sqr(x2 - x4) + sqr(x3 - x5)) + objvar =E= 0;

e2..    2*x4 + 2.666666666*x5 =G= 34;

e3..    1.25*x4 + 2*x5 =G= 24.25;

* set non default bounds

x2.up = 10; 
x3.up = 10; 

* set non default levels

x3.l = 1; 

* set non default marginals


Model m / e1,e2.x4,e3.x5 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
