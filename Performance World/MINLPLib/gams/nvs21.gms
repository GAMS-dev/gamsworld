$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:19
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       1       2       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       2       0       2       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         8       1       7       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,x3,objvar;

Positive Variables x3;

Integer Variables i1,i2;

Equations  e1,e2,e3;


e1..  - sqr(i1)*i2 =G= -675;

e2..  - 0.1*sqr(i1)*sqr(x3) =G= -0.419;

e3.. 0.00201*POWER(i1,4)*i2*sqr(x3) + objvar =E= 0;

* set non default bounds

i1.up = 200; 
i2.up = 200; 
x3.up = 0.2; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 1; 
i2.l = 1; 
x3.l = 0.1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
