$offlisting
*  MINLP written by GAMS Convert at 08/29/02 11:38:03
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*         9       5       0       4       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*         5       2       0       3       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        23      17       6       0
*
*  Solve m using MINLP minimizing objvar;


Variables  i1,i2,i3,x4,objvar;

Integer Variables i1,i2,i3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1.. (-0.15*i1*i2) - 0.14142135*i2*i3 - 0.1319*i1*i3 + x4 =E= 0;

e2..    1.7317*i2 + 1.03366*i3 - x4 =L= 0;

e3..    0.634*i1 + 2.828*i3 - x4 =L= 0;

e4..    0.5*i1 - 2*i2 - x4 =L= 0;

e5..  - 0.5*i1 + 2*i2 - x4 =L= 0;

e6.. (i1 - 1)*(i1 - 2)*(i1 - 3)*(i1 - 5)*(i1 - 8)*(i1 - 10)*(i1 - 12) =E= 0;

e7.. (i2 - 1)*(i2 - 2)*(i2 - 3)*(i2 - 5)*(i2 - 8)*(i2 - 10)*(i2 - 12) =E= 0;

e8.. (i3 - 1)*(i3 - 2)*(i3 - 3)*(i3 - 5)*(i3 - 8)*(i3 - 10)*(i3 - 12) =E= 0;

e9..  - 2*i1 - i2 - 1.4142135*i3 + objvar =E= 0;

* set non default bounds

i1.lo = 1; i1.up = 12; 
i2.lo = 1; i2.up = 12; 
i3.lo = 1; i3.up = 12; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


* set non default priorities

i1.prior = 0.1; 
i2.prior = 0.1; 
i3.prior = 0.1; 

$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;
m.prioropt = 1;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
