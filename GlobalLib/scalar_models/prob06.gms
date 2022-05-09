*  NLP written by GAMS Convert at 04/20/04 14:50:37
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         2       0       0       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         2       2       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         4       0       4       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2;

Equations  e1,e2;


e1.. 0.25*objvar - 0.0625*sqr(objvar) - 0.0625*sqr(x2) + 0.5*x2 =L= 1;

e2.. 0.0714285714285714*sqr(objvar) + 0.0714285714285714*sqr(x2) - 
     0.428571428571429*objvar - 0.428571428571429*x2 =L= -1;

* set non default bounds

objvar.lo = 1; objvar.up = 5.5; 
x2.lo = 1; x2.up = 5.5; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
