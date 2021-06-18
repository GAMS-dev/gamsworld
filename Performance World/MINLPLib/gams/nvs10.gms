$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:13
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       1       2       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       1       0       2       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         7       1       6       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,objvar;

Integer Variables i1,i2;

Equations  e1,e2,e3;


e1.. (-9*sqr(i1)) - 10*i1*i2 - 8*sqr(i2) =G= -583;

e2.. (-6*sqr(i1)) - 8*i1*i2 - 6*sqr(i2) =G= -441;

e3..  - (7*sqr(i1) + 6*sqr(i2) - 35*i1 - 80.4*i2) + objvar =E= 0;

* set non default bounds

i1.up = 200; 
i2.up = 200; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 1; 
i2.l = 1; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
