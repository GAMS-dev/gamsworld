*  MPEC written by GAMS Convert at 11/06/01 17:02:01
*  
*  Equation counts
*     Total       E       G       L       N       X
*         3       2       1       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       4       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         7       2       5       0
*
*  Solve m using MPEC minimizing objvar;


Variables  objvar,x2,x3,x4;

Positive Variables x4;

Equations  e1,e2,e3;


e1..  - (POWER(x2 - 3.5,2) + POWER(4 + x3,2)) + objvar =E= 0;

e2.. 2*x3*x4 + 2*x3 =E= 6;

e3..  - x3*x3 + x2 =G= 0;

* set non default bounds


* set non default levels

x2.l = 1; 
x3.l = 1; 
x4.l = 1; 

* set non default marginals


Model m / e1,e2.x3,e3.x4 /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using MPEC minimizing objvar;
