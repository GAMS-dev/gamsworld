$offlisting
*  MINLP written by GAMS Convert at 09/01/02 10:49:36
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         3       1       0       2       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       1       0       6       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        15      10       5       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,objvar;

Integer Variables i1,i2,i3,i4,i5,i6;

Equations  e1,e2,e3;


e1..    6*i1 + 3*i2 + 3*i3 + 2*i4 + i5 =L= 6.5;

e2..    10*i1 + 10*i3 + i6 =L= 20;

e3..  - (0.5*i1*i1 + 10.5*i1 + 0.25*i2*i2 - 7.5*i2 + 1.5*i3*i3 - 3.5*i3 + 0.5*
     i4*i4 + 2.5*i4 + 0.5*i5*i5 - 1.5*i5) - 10*i6 + objvar =E= 0;

* set non default bounds

i1.up = 1; 
i2.up = 1; 
i3.up = 1; 
i4.up = 1; 
i5.up = 1; 
i6.up = 1E15; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
