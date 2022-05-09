*  NLP written by GAMS Convert at 08/29/02 12:53:46
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         5       4       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        10      10       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        27      11      16       0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables x1,x4;

Equations  e1,e2,e3,e4,e5;


e1..    5*x4 - x5 + 7*x7 - x9 =G= 0;

e2..  - (0.0056858*x6*x9 + 0.0006262*x5*x8 - 0.0022053*x7*x9) + x1 + 2*x4
      =E= 85.334407;

e3..  - (0.0071317*x6*x9 + 0.0029955*x5*x6 + 0.0021813*sqr(x7)) + x2
      =E= 80.51249;

e4..  - (0.0047026*x7*x9 + 0.0012547*x5*x7 + 0.0019085*x7*x8) + x3 + 4*x4
      =E= 9.300961;

e5..  - (5.3578547*sqr(x7) + 0.8356891*x5*x9 + 37.293239*x5) - 5000*x4 + objvar
      =E= -40792.141;

* set non default bounds

x1.up = 92; 
x2.lo = 90; x2.up = 110; 
x3.lo = 20; x3.up = 25; 
x5.lo = 78; x5.up = 102; 
x6.lo = 33; x6.up = 45; 
x7.lo = 27; x7.up = 45; 
x8.lo = 27; x8.up = 45; 
x9.lo = 27; x9.up = 45; 

* set non default levels

x5.l = 78.62; 
x6.l = 33.44; 
x7.l = 31.07; 
x8.l = 44.18; 
x9.l = 35.22; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
