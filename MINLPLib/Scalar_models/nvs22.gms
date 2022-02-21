$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:19
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        10       5       5       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         9       5       0       4       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        31       7      24       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,x5,x6,x7,x8,objvar;

Integer Variables i1,i2,i3,i4;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..  - 4243.28147100424/(i3*i4) + x5 =E= 0;

e2..  - sqrt(0.25*sqr(i4) + sqr(0.5*i1 + 0.5*i3)) + x7 =E= 0;

e3..  - 0.707213578500707*(84000 + 3000*i4)*x7/(i3*i4*(0.0833333333333333*sqr(
     i4) + sqr(0.5*i1 + 0.5*i3))) + x6 =E= 0;

e4..  - 0.5*i4/x7 + x8 =E= 0;

e5..  - sqrt(sqr(x5) + 2*x5*x6*x8 + sqr(x6)) =G= -13600;

e6..  - 504000/(i2*sqr(i1)) =G= -30000;

e7..    i2 - i3 =G= 0;

e8.. 0.0204744897959184*sqrt(10000000000000*i1*POWER(i2,3)*i1*POWER(i2,3))*(1
      - 0.0282346219657891*i1) =G= 6000;

e9..  - 2.1952/(i2*POWER(i1,3)) =G= -0.25;

e10..  - (1.10471*i3**2*i4 + 0.04811*i1*i2*(14 + i4)) + objvar =E= 0;

* set non default bounds

i1.lo = 1; i1.up = 200; 
i2.lo = 1; i2.up = 200; 
i3.lo = 1; i3.up = 20; 
i4.lo = 1; i4.up = 20; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 2; 
i2.l = 2; 
i3.l = 2; 
i4.l = 2; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
