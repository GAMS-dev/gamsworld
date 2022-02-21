$offlisting
*  MINLP written by GAMS Convert at 09/01/02 10:53:46
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         6       1       0       5       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       1       0       6       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        37      35       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,i4,i5,i6,objvar;

Integer Variables i1,i2,i3,i4,i5,i6;

Equations  e1,e2,e3,e4,e5,e6;


e1..    i1 + 2*i2 + 8*i3 + i4 + 3*i5 + 5*i6 =L= 16;

e2..  - 8*i1 - 4*i2 - 2*i3 + 2*i4 + 4*i5 - i6 =L= -1;

e3..    2*i1 + 0.5*i2 + 0.2*i3 - 3*i4 - i5 - 4*i6 =L= 24;

e4..    0.2*i1 + 2*i2 + 0.1*i3 - 4*i4 + 2*i5 + 2*i6 =L= 12;

e5..  - 0.1*i1 - 0.5*i2 + 2*i3 + 5*i4 - 5*i5 + 3*i6 =L= 3;

e6..  - (0.5*i1*i1 + 6.5*i1 + 7*i6*i6 - i6) + i2 + 2*i3 - 3*i4 + 2*i5 + objvar
      =E= 0;

* set non default bounds

i1.up = 1E15; 
i2.up = 1E15; 
i3.up = 1E15; 
i4.up = 1; 
i5.up = 1; 
i6.up = 2; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
