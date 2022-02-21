$offlisting
*  MINLP written by GAMS Convert at 08/31/02 19:46:55
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         5       1       1       3       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         7       4       0       3       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        16      13       3       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,x4,x5,x6,objvar;

Positive Variables x4,x5,x6;

Integer Variables i1,i2,i3;

Equations  e1,e2,e3,e4,e5;


e1..    x4 + x5 - x6 =G= 0;

e2..  - 5*i1 + x4 =L= 0;

e3..  - 10*i2 + x5 =L= 0;

e4..  - 30*i3 + x6 =L= 0;

e5..  - (5*x4*x4 + 2*x4 + 5*x5*x5 + 3*x5 + 10*x6*x6 - 500*x6) - 10*i1 + 4*i2
      - 5*i3 + objvar =E= 0;

* set non default bounds

i1.up = 1; 
i2.up = 1; 
i3.up = 1; 
x4.up = 1E15; 
x5.up = 1E15; 
x6.up = 1E15; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
