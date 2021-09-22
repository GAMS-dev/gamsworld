*  NLP written by GAMS Convert at 07/19/01 13:39:31
*  
*  Equation counts
*     Total       E       G       L       N       X
*         2       2       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        11      11       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        21      11      10       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2;


e1..  - (x1*x2 + x2*x3 + x3*x4 + x4*x5 + x5*x6 + x6*x7 + x7*x8 + x8*x9 + x9*x10
      + x1*x3 + x2*x4 + x3*x5 + x4*x6 + x5*x7 + x6*x8 + x7*x9 + x8*x10 + x1*x9
      + x1*x10 + x2*x10 + x1*x5 + x4*x7) - objvar =E= 0;

e2..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 =E= 1;

* set non default bounds


* set non default levels

x4.l = 0.25; 
x5.l = 0.25; 
x6.l = 0.25; 
x7.l = 0.25; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
