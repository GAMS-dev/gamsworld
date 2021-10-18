*  MPEC written by GAMS Convert at 11/06/01 17:02:14
*  
*  Equation counts
*     Total       E       G       L       N       X
*         4       1       1       2       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         8       2       6       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3;

Equations  e1,e2,e3,e4;


e1..  - sqr(x2 - x3 - 1) + objvar =E= 0;

e2.. sqr(x2) =L= 2;

e3.. sqr(x2 - 1) + sqr(x3 - 1) =L= 3;

e4..  - sqr(x2) + x3 =G= -1;

* set non default bounds

x2.lo = -1; x2.up = 2; 

* set non default levels


* set non default marginals


Model m / e1,e2,e3,e4.x3 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
