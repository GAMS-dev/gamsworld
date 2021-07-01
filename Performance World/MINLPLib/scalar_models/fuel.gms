$offlisting
*  MINLP written by GAMS Convert at 04/18/01 12:07:24
*  
*  Equation counts
*     Total       E       G       L       N       X
*        16       7       6       3       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        16      13       3       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        39      33       6       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Positive Variables x10,x11,x12,x13,x14;

Binary Variables b1,b2,b3;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..  - (0.0025*sqr(x7) + 6*x7 + 0.0025*sqr(x8) + 6*x8 + 0.0025*sqr(x9) + 6*x9)
      + objvar =E= 900;

e2..  - 100*b1 + x4 =G= 0;

e3..  - 100*b2 + x5 =G= 0;

e4..  - 100*b3 + x6 =G= 0;

e5..  - 500*b1 + x4 =L= 0;

e6..  - 500*b2 + x5 =L= 0;

e7..  - 500*b3 + x6 =L= 0;

e8..    x10 + x13 =E= 3500;

e9..    x11 - x13 + x14 =E= 500;

e10..    x12 - x14 + x15 =E= 500;

e11..    x4 + x7 =G= 400;

e12..    x5 + x8 =G= 900;

e13..    x6 + x9 =G= 700;

e14..  - (0.005*sqr(x4) + x4) - 50*b1 + x10 =E= 0;

e15..  - (0.005*sqr(x5) + x5) - 50*b2 + x11 =E= 0;

e16..  - (0.005*sqr(x6) + x6) - 50*b3 + x12 =E= 0;

* set non default bounds

x7.lo = 50; x7.up = 700; 
x8.lo = 50; x8.up = 700; 
x9.lo = 50; x9.up = 700; 
x13.up = 4000; 
x14.up = 4000; 
x15.lo = 2000; x15.up = 4000; 

$if set nostart $goto modeldef
* set non default levels

x4.l = 100; 
x5.l = 100; 
x6.l = 100; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
