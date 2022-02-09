*  NLP written by GAMS Convert at 07/30/01 10:08:37
*  
*  Equation counts
*     Total       E       G       L       N       X
*         3       1       0       2       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        13       5       8       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Equations  e1,e2,e3;


e1.. 4/x1 + 2.25/x2 + 1/x3 + 0.25/x4 =L= 0.0401;

e2.. 0.16/x1 + 0.36/x2 + 0.64/x3 + 0.64/x4 =L= 0.010085;

e3..  - x1 - x2 - x3 - x4 + objvar =E= 0;

* set non default bounds

x1.lo = 100; x1.up = 400000; 
x2.lo = 100; x2.up = 300000; 
x3.lo = 100; x3.up = 200000; 
x4.lo = 100; x4.up = 100000; 

* set non default levels

x1.l = 200; 
x2.l = 200; 
x3.l = 200; 
x4.l = 200; 
objvar.l = 800; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
