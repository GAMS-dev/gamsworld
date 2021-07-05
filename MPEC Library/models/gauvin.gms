*  MPEC written by GAMS Convert at 11/06/01 17:02:07
*  
*  Equation counts
*     Total       E       G       L       N       X
*         3       1       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       4       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         8       6       2       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4;

Positive Variables x2,x3,x4;

Equations  e1,e2,e3;


e1..  - (sqr(x2) + sqr(x3 - 10)) + objvar =E= 0;

e2..    4*x2 + 8*x3 + x4 =G= 120;

e3..  - x2 - x3 =G= -20;

* set non default bounds

x2.up = 15; 

* set non default levels

x2.l = 7.5; 
x4.l = 1; 

* set non default marginals


Model m / e1,e2.x3,e3.x4 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
