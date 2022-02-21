$offlisting
*  MINLP written by GAMS Convert at 07/24/02 13:01:17
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         2       1       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         4       1       0       3       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         7       4       3       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,objvar;

Integer Variables i1,i2,i3;

Equations  e1,e2;


e1..  - i1 - i2 - 2*i3 =G= -3;

e2..  - (2*sqr(i1) - 8*i1 + 2*sqr(i2) - 6*i2 + sqr(i3) - 4*i3 + 2*i1*i2 + 2*i1*
     i3) + objvar =E= 9;

* set non default bounds

i1.up = 200; 
i2.up = 200; 
i3.up = 200; 

$if set nostart $goto modeldef
* set non default levels

i1.l = 100; 
i2.l = 100; 
i3.l = 100; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
