$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:35:07
*  
*  Equation counts
*     Total       E       G       L       N       X
*        20       7      12       1       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        20      11       9       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        53      43      10       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,objvar;

Positive Variables x17,x18,x19;

Binary Variables b1,b2,b3,b4,b5,b6,b7,b8,b9;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20;


e1..    x10 - x13 =G= 0.693147180559945;

e2..    x11 - x13 =G= 1.09861228866811;

e3..    x12 - x13 =G= 1.38629436111989;

e4..    x10 - x14 =G= 1.38629436111989;

e5..    x11 - x14 =G= 1.79175946922805;

e6..    x12 - x14 =G= 1.09861228866811;

e7..    x15 + x17 =G= 2.07944154167984;

e8..    x15 + x18 =G= 2.99573227355399;

e9..    x15 + x19 =G= 1.38629436111989;

e10..    x16 + x17 =G= 2.30258509299405;

e11..    x16 + x18 =G= 2.484906649788;

e12..    x16 + x19 =G= 1.09861228866811;

e13.. 200000*exp(x15 - x13) + 150000*exp(x16 - x14) =L= 6000;

e14..  - 0.693147180559945*b4 - 1.09861228866811*b7 + x17 =E= 0;

e15..  - 0.693147180559945*b5 - 1.09861228866811*b8 + x18 =E= 0;

e16..  - 0.693147180559945*b6 - 1.09861228866811*b9 + x19 =E= 0;

e17..    b1 + b4 + b7 =E= 1;

e18..    b2 + b5 + b8 =E= 1;

e19..    b3 + b6 + b9 =E= 1;

e20..  - (250*exp(0.6*x10 + x17) + 500*exp(0.6*x11 + x18) + 340*exp(0.6*x12 + 
      x19)) + objvar =E= 0;

* set non default bounds

x10.lo = 5.52146091786225; x10.up = 7.82404601085629; 
x11.lo = 5.52146091786225; x11.up = 7.82404601085629; 
x12.lo = 5.52146091786225; x12.up = 7.82404601085629; 
x13.lo = 5.40367788220586; x13.up = 6.4377516497364; 
x14.lo = 4.60517018598809; x14.up = 6.03228654162824; 
x15.lo = 1.89711998488588; x15.up = 2.99573227355399; 
x16.lo = 1.38629436111989; x16.up = 2.484906649788; 
x17.up = 1.09861228866811; 
x18.up = 1.09861228866811; 
x19.up = 1.09861228866811; 
objvar.lo = 0; 

$if set nostart $goto modeldef
* set non default levels

x10.l = 6.70502272492805; 
x11.l = 7.11048783303622; 
x12.l = 7.30700912709102; 
x13.l = 5.92071476597113; 
x14.l = 5.31872836380816; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
