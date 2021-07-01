$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:41:30
*  
*  Equation counts
*     Total       E       G       L       N       X
*        15       2       0      13       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        12       7       5       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        49      41       8       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,b7,b8,b9,b10,b11,objvar;

Positive Variables x1,x2,x3,x4,x5,x6;

Binary Variables b7,b8,b9,b10,b11;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..  - log(1 + x4 + x5) =L= 0;

e2.. exp(x1) - 10*b7 =L= 1;

e3.. exp(0.833333*x2) - 10*b8 =L= 1;

e4..    1.25*x3 - 10*b9 =L= 0;

e5..    x4 + x5 - 10*b10 =L= 0;

e6..  - 2*x3 + 2*x6 - 10*b11 =L= 0;

e7..  - x1 - x2 - 2*x3 + x4 + 2*x6 =L= 0;

e8..  - x1 - x2 - 0.75*x3 + x4 + 2*x6 =L= 0;

e9..    x3 - x6 =L= 0;

e10..    2*x3 - x4 - 2*x6 =L= 0;

e11..  - 0.5*x4 + x5 =L= 0;

e12..  - 0.2*x4 - x5 =L= 0;

e13..    b7 + b8 =E= 1;

e14..    b10 + b11 =L= 1;

e15..  - (exp(x1) - 10*x1 + exp(0.833333*x2) - 15*x2 - 60*log(1 + x4 + x5) + 15
      *x4 + 5*x5) + 15*x3 + 20*x6 - 5*b7 - 8*b8 - 6*b9 - 10*b10 - 6*b11
       + objvar =E= 140;

* set non default bounds

x1.up = 2; 
x2.up = 2; 
x3.up = 2; 
x6.up = 3; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
