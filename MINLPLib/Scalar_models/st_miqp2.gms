$offlisting
*  MINLP written by GAMS Convert at 08/31/02 19:43:32
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         4       1       1       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       1       0       4       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        11       9       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,objvar;

Integer Variables i1,i2,i3,i4;

Equations  e1,e2,e3,e4;


e1..  - 10*i1 + i3 =L= 0;

e2..  - 20*i2 + i4 =L= 0;

e3..    i3 + i4 =G= 5;

e4..  - (4*i3*i3 - 3*i3 + 2*i4*i4 - 10*i4) - 4*i1 - 5*i2 + objvar =E= 0;

* set non default bounds

i1.up = 1; 
i2.up = 1; 
i3.up = 10000000000; 
i4.up = 10000000000; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
