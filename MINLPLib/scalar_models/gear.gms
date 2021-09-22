$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:50
*  
*  Equation counts
*     Total       E       G       L       N       X
*         1       1       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       1       0       4       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         5       1       4       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,objvar;

Integer Variables i1,i2,i3,i4;

Equations  e1;


e1..  - sqr(0.14427932477276 - i1*i2/(i3*i4)) + objvar =E= 0;

* set non default bounds

i1.lo = 12; i1.up = 60; 
i2.lo = 12; i2.up = 60; 
i3.lo = 12; i3.up = 60; 
i4.lo = 12; i4.up = 60; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
