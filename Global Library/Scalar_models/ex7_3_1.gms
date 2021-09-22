*  NLP written by GAMS Convert at 07/19/01 13:39:49
*  
*  Equation counts
*     Total       E       G       L       N       X
*         8       1       0       7       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       5       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        17      14       3       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables x1,x2,x3,x4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8;


e1..  - x4 + objvar =E= 0;

e2.. 10*sqr(x2)*POWER(x3,3) + 10*POWER(x2,3)*sqr(x3) + 200*sqr(x2)*sqr(x3) + 
     100*POWER(x2,3)*x3 + 100*x2*POWER(x3,3) + x1*x2*sqr(x3) + x1*sqr(x2)*x3 + 
     1000*x2*sqr(x3) + 8*x1*sqr(x3) + 1000*sqr(x2)*x3 + 8*x1*sqr(x2) + 6*x1*x2*
     x3 - sqr(x1) + 60*x1*x3 + 60*x1*x2 - 200*x1 =L= 0;

e3..  - x1 - 800*x4 =L= -800;

e4..    x1 - 800*x4 =L= 800;

e5..  - x2 - 2*x4 =L= -4;

e6..    x2 - 2*x4 =L= 4;

e7..  - x3 - 3*x4 =L= -6;

e8..    x3 - 3*x4 =L= 6;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
