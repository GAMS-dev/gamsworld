*  NLP written by GAMS Convert at 04/20/04 14:50:37
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         2       1       0       1       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         2       2       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         3       1       2       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,objvar;

Equations  e1,e2;


e1..  - (sin(11*x1) + cos(13*x1) - sin(17*x1) - cos(19*x1)) + objvar =E= 0;

e2.. 5*sin(x1) - x1 =L= 0;

* set non default bounds

x1.lo = -2; x1.up = 5; 

* set non default levels

x1.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
