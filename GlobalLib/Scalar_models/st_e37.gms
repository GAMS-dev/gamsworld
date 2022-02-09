*  NLP written by GAMS Convert at 08/29/02 12:49:54
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         2       1       0       1       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     2       2       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         7       3       4       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar,x4,x5;

Positive Variables x1,x2;

Equations  e1,e2;


e1..    x1 - x2 =L= 0;

e2..  - (sqr(x4 + x5 - 1.9837) + sqr(x4*exp(-x1) + x5*exp(-x2) - 0.8393) + sqr(
     x4*exp(-2*x1) + x5*exp(-2*x2) - 0.4305) + sqr(x4*exp(-3*x1) + x5*exp(-3*x2
     ) - 0.2441) + sqr(x4*exp(-4*x1) + x5*exp(-4*x2) - 0.1248) + sqr(x4*exp(-5*
     x1) + x5*exp(-5*x2) - 0.0981) + sqr(x4*exp(-6*x1) + x5*exp(-6*x2) - 0.0549
     ) + sqr(x4*exp(-7*x1) + x5*exp(-7*x2) - 0.0174) + sqr(x4*exp(-8*x1) + x5*
     exp(-8*x2) - 0.0249) + sqr(x4*exp(-9*x1) + x5*exp(-9*x2) - 0.0154) + sqr(
     x4*exp(-10*x1) + x5*exp(-10*x2) - 0.0127)) + objvar =E= 0;

* set non default bounds

x1.up = 100; 
x2.up = 100; 
x4.fx = 1; 
x5.fx = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
