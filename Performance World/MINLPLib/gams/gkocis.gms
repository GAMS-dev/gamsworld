$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:38:55
*  
*  Equation counts
*     Total       E       G       L       N       X
*         9       6       0       3       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        12       9       3       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        28      26       2       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,b9,b10,b11,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8;

Binary Variables b9,b10,b11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - 1.8*x1 - 7*x5 - x6 - 1.2*x7 + 11*x8 - 3.5*b9 - b10 - 1.5*b11 + objvar
      =E= 0;

e2..  - log(1 + x2) + x6 =E= 0;

e3..  - 1.2*log(1 + x3) + x7 =E= 0;

e4..  - 0.9*x4 + x8 =E= 0;

e5..  - x4 + x5 + x6 + x7 =E= 0;

e6..    x1 - x2 - x3 =E= 0;

e7..    x4 - 5*b9 =L= 0;

e8..    x2 - 5*b10 =L= 0;

e9..    x3 - 5*b11 =L= 0;

* set non default bounds

x6.up = 5; 
x8.up = 1; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
