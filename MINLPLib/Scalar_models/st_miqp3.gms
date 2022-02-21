$offlisting
*  MINLP written by GAMS Convert at 08/31/02 19:45:03
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         2       1       0       1       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         3       1       0       2       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*         5       4       1       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,objvar;

Integer Variables i1,i2;

Equations  e1,e2;


e1..  - 4*i1 + i2 =L= 0;

e2..  - 6*i1*i1 + 3*i2 + objvar =E= 0;

* set non default bounds

i1.up = 3; 
i2.up = 1E15; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
