$offlisting
*  MINLP written by GAMS Convert at 08/29/02 11:38:03
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         4       1       1       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       3       0       2       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        11       5       6       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,x3,x4,objvar;

Integer Variables i1,i2;

Equations  e1,e2,e3,e4;


e1..  - 0.0625*i1 + 0.0193*x3 =L= 0;

e2..  - 0.0625*i2 + 0.00954*x3 =L= 0;

e3.. 3.1415927*(sqr(x3)*x4 + 1.33333333333333*POWER(x3,3)) =G= 1296000;

e4..  - (0.0389*i1*x3*x4 + 0.1111312*i2*sqr(x3) + 0.012348046875*sqr(i1)*x4 + 
     0.0775*sqr(i1)*x3) + objvar =E= 0;

* set non default bounds

i1.lo = 18; i1.up = 100; 
i2.lo = 10; i2.up = 100; 
x3.lo = 40; x3.up = 80; 
x4.lo = 20; x4.up = 60; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
