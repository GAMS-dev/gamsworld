*  NLP written by GAMS Convert at 07/19/01 13:40:25
*  
*  Equation counts
*     Total       E       G       L       N       X
*        16       2       0      14       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        10      10       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        62      30      32       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..  - x9 + objvar =E= 0;

e2.. 0.004731*x1*x3 - 0.1238*x1 - 0.3578*x2*x3 - 0.001637*x2 - 0.9338*x4 + x7
      - x9 =L= 0.3571;

e3.. 0.1238*x1 - 0.004731*x1*x3 + 0.3578*x2*x3 + 0.001637*x2 + 0.9338*x4 - x7
      - x9 =L= -0.3571;

e4.. 0.2238*x1*x3 + 0.2638*x1 + 0.7623*x2*x3 - 0.07745*x2 - 0.6734*x4 - x7 - x9
      =L= 0.6022;

e5.. (-0.2238*x1*x3) - 0.2638*x1 - 0.7623*x2*x3 + 0.07745*x2 + 0.6734*x4 + x7
      - x9 =L= -0.6022;

e6.. x6*x8 + 0.3578*x1 + 0.004731*x2 - x9 =L= 0;

e7..  - x6*x8 - 0.3578*x1 - 0.004731*x2 - x9 =L= 0;

e8..  - 0.7623*x1 + 0.2238*x2 =E= -0.3461;

e9.. sqr(x1) + sqr(x2) - x9 =L= 1;

e10.. (-sqr(x1)) - sqr(x2) - x9 =L= -1;

e11.. sqr(x3) + sqr(x4) - x9 =L= 1;

e12.. (-sqr(x3)) - sqr(x4) - x9 =L= -1;

e13.. sqr(x5) + sqr(x6) - x9 =L= 1;

e14.. (-sqr(x5)) - sqr(x6) - x9 =L= -1;

e15.. sqr(x7) + sqr(x8) - x9 =L= 1;

e16.. (-sqr(x7)) - sqr(x8) - x9 =L= -1;

* set non default bounds

x1.lo = -1; x1.up = 1; 
x2.lo = -1; x2.up = 1; 
x3.lo = -1; x3.up = 1; 
x4.lo = -1; x4.up = 1; 
x5.lo = -1; x5.up = 1; 
x6.lo = -1; x6.up = 1; 
x7.lo = -1; x7.up = 1; 
x8.lo = -1; x8.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
