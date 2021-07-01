$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:20
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        10       5       5       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       7       0       2       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        31       7      24       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,x3,x4,x5,x6,x7,x8,objvar;

Integer Variables i1,i2;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - 4243.28147100424/(x3*x4) + x5 =E= 0;

e2..  - sqrt(0.25*sqr(x4) + sqr(0.5*i1 + 0.5*x3)) + x7 =E= 0;

e3..  - 0.707213578500707*(84000 + 3000*x4)*x7/(x3*x4*(0.0833333333333333*sqr(
     x4) + sqr(0.5*i1 + 0.5*x3))) + x6 =E= 0;

e4..  - 0.5*x4/x7 + x8 =E= 0;

e5..  - sqrt(sqr(x5) + 2*x5*x6*x8 + sqr(x6)) =G= -13600;

e6..  - 504000/(i2*sqr(i1)) =G= -30000;

e7..    i2 - x3 =G= 0;

e8.. 0.0204744897959184*sqrt(1e15*i1*POWER(i2,3)*i1*POWER(i2,3))*(1 - 
     0.0282346219657891*i1) =G= 6000;

e9..  - 0.21952/(i2*POWER(i1,3)) =G= -0.25;

e10..  - (1.10471*sqr(x3)*x4 + 0.04811*i1*i2*(14 + x4)) + objvar =E= 0;

* set non default bounds

i1.lo = 1; i1.up = 200; 
i2.lo = 1; i2.up = 200; 
x3.lo = 0.01; x3.up = 200; 
x4.lo = 0.01; x4.up = 200; 

$if set nostart $goto modeldef
* set non default levels

x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 2; 
x8.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
