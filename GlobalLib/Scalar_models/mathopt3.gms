*  NLP written by GAMS Convert at 04/20/04 14:50:36
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         8       5       0       3       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       7       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        43      19      24       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - (sqr(x1 + x2) + sqr(x3 - x5) + sqr(x6 - x4) + 2*sqr(x1 + x3 - x4) + 
     sqr(x2 - x1 + x3 - x4) + 10*sqr(sin(x1 + x5 - x6))) + objvar =E= 0;

e2.. sqr(x1) - sin(x2) - x4 + x5 + x6 =E= 0;

e3.. x1*x3 - x2*x4*x1 - sin((-x1) - x3 + x6) - x5 =E= 0;

e4.. x2*x6*cos(x5) - sin(x3*x4) + x2 - x5 =E= 0;

e5.. x1*x2 - sqr(x3) - x4*x5 - sqr(x6) =E= 0;

e6..    2*x1 + 5*x2 + x3 + x4 =L= 1;

e7..    3*x1 - 2*x2 + x3 - 4*x4 =L= 0;

e8..    x1 + x2 + x3 + x4 + x5 + x6 =L= 2;

* set non default bounds


* set non default levels

x1.l = 10; 
x2.l = -10; 
x3.l = 10; 
x4.l = 10; 
x5.l = 10; 
x6.l = -10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
