*  NLP written by GAMS Convert at 04/20/04 14:50:37
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         1       1       0       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       3       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         3       1       2       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3;

Equations  e1;


e1.. 100*sqr(x3 - sqr(x2)) + sqr(1 - x2) - objvar =E= 0;

* set non default bounds

objvar.lo = -100; objvar.up = 100; 
x2.lo = -2; x2.up = 2; 
x3.lo = -2; x3.up = 2; 

* set non default levels

objvar.l = 2.28067255148468E-6; 
x2.l = 0.999139149741104; 
x3.l = 0.998154959548312; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
