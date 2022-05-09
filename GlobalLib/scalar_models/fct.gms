*  DNLP written by GAMS Convert at 04/20/04 14:50:30
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        10      10       0       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        12      12       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        43      17      26       0
*
*  Solve m using DNLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    objvar - 2*x6 - x7 =E= 0;

e2..  - (sqr(x8) + sqr(x9) + sqr(x10) + sqr(x11) + sqr(x12)) + x7 =E= 0;

e3..  - x3 - x5 + x6 =E= 0;

e4..  - (sqr(sqr(x8) - x9) + sqr(x10) + 2*sqr(x11) + sqr(x12 - x9)) + x2 =E= 0;

e5..  - abs(sin(4*mod(x2,3.14159265358979))) + x3 =E= 0;

e6..  - (sqr(x8 + x9 - x10 + x11 - x12) + 2*sqr(x9 - x8 + x10 - x11 + x12))
      + x4 =E= 0;

e7..  - abs(sin(3*mod(x4,3.14159265358979))) + x5 =E= 0;

e8.. 3*sqr(x9) + sqr(x10) - 2*sqr(x11) + sqr(x12) + x8 =E= 0;

e9..    x8 + 4*x9 - x10 + x11 - 3*x12 =E= 0;

e10.. sqr(x8) - sqr(x10) + 2*sqr(x9) - sqr(x11) - sqr(x12) =E= 0;

* set non default bounds

x8.lo = -10; x8.up = 5; 
x9.lo = -10; x9.up = 5; 
x10.lo = -10; x10.up = 5; 
x11.lo = -10; x11.up = 5; 
x12.lo = -10; x12.up = 5; 

* set non default levels

x8.l = 2; 
x9.l = 2; 
x10.l = 2; 
x11.l = 2; 
x12.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
