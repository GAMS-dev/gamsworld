*  NLP written by GAMS Convert at 07/19/01 13:40:14
*  
*  Equation counts
*     Total       E       G       L       N       X
*         5       5       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         6       6       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        17       7      10       0
*
*  Solve m using NLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5;


e1..  - (x2*log(x2) + x3*log(x3) - log(x4 - x6) + x4 - 0.353553390593274*x5*
     log((x4 + 2.41421356237309*x6)/(x4 - 0.414213562373095*x6))/x6 + 
     2.5746329124341*x2 + 0.54639755131421*x3) + objvar =E= -1;

e2.. POWER(x4,3) - (1 - x6)*sqr(x4) + (-3*sqr(x6) - 2*x6 + x5)*x4 - x5*x6 + 
     POWER(x6,3) + sqr(x6) =E= 0;

e3..  - (0.884831*x2*x2 + 0.555442*x2*x3 + 0.555442*x3*x2 + 0.427888*x3*x3)
      + x5 =E= 0;

e4..  - 0.0885973*x2 - 0.0890893*x3 + x6 =E= 0;

e5..    x2 + x3 =E= 1;

* set non default bounds


* set non default levels

x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 2; 
x5.l = 1; 
x6.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
