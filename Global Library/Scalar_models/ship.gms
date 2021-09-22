*  NLP written by GAMS Convert at 07/30/01 10:19:08
*  
*  Equation counts
*     Total       E       G       L       N       X
*        17       5      12       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        11      11       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        53      22      31       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17;


e1..  - 0.5*x9*x4*(0.8*x7 + 0.333333333333333*x8) + x1 =E= 0;

e2..  - 0.5*x9*x5*(0.8*x7 + 0.333333333333333*x8) + x2 =E= 0;

e3..  - 0.5*x9*x6*(0.8*x7 + 0.333333333333333*x8) + x3 =E= 0;

e4.. sqr(x10 - x7) - (sqr(x8) - sqr(x9)) =E= 0;

e5..    x1 - 8.4652734375*x10 =G= 0;

e6..    x2 - 9.65006510416667*x10 =G= 0;

e7..    x3 - 8.8716796875*x10 =G= 0;

e8.. 0.5*x1*x9 - 2.2*(8.4652734375*x10)**1.33333333333333 =G= 0;

e9.. 0.5*x2*x9 - 2.2*(9.65006510416667*x10)**1.33333333333333 =G= 0;

e10.. 0.5*x3*x9 - 2.2*(8.8716796875*x10)**1.33333333333333 =G= 0;

e11..    x4 - 0.0111771747883801*x7 =G= 0.2;

e12..    x5 - 0.0137655360411427*x7 =G= 0.2;

e13..    x6 - 0.0155663872253648*x7 =G= 0.2;

e14..    x4 - 0.0111771747883801*x8 =G= 0.2;

e15..    x5 - 0.0137655360411427*x8 =G= 0.2;

e16..    x6 - 0.0155663872253648*x8 =G= 0.2;

e17..  - (0.0039*x7 + 0.0039*x8)*(495*x4 + 385*x5 + 315*x6)/x10 + objvar =E= 0;

* set non default bounds

x4.lo = 1.05; 
x5.lo = 1.05; 
x6.lo = 1.05; 

* set non default levels

x1.l = 934.032; 
x2.l = 934.032; 
x3.l = 1011.868; 
x4.l = 1.2; 
x5.l = 1.2; 
x6.l = 1.3; 
x7.l = 45.8; 
x8.l = 43.2; 
x9.l = 30.5; 
x10.l = 76.3939536510076; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
