$offlisting
*  MINLP written by GAMS Convert at 04/17/01 16:41:11
*  
*  Equation counts
*     Total       E       G       L       N       X
*        32      23       5       4       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        30      28       2       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*        99      87      12       0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,b28,b29,objvar;

Positive Variables x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27;

Binary Variables b28,b29;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32;


e1..  - 0.55*x5 - 0.5*x6 + x7 =E= 0;

e2..  - 0.45*x5 - 0.5*x6 + x8 =E= 0;

e3..  - x25*x7 + x9 =E= 0;

e4..  - x25*x8 + x10 =E= 0;

e5..  - x26*x7 + x11 =E= 0;

e6..  - x26*x8 + x12 =E= 0;

e7..  - x27*x7 + x13 =E= 0;

e8..  - x27*x8 + x14 =E= 0;

e9..  - x7 + x9 + x11 + x13 + x15 =E= 0;

e10..  - x8 + x10 + x12 + x14 + x16 =E= 0;

e11..  - 0.85*x9 + x17 =E= 0;

e12..  - 0.2*x10 + x18 =E= 0;

e13..  - 0.15*x9 + x19 =E= 0;

e14..  - 0.8*x10 + x20 =E= 0;

e15..  - 0.975*x11 + x21 =E= 0;

e16..  - 0.05*x12 + x22 =E= 0;

e17..  - 0.025*x11 + x23 =E= 0;

e18..  - 0.95*x12 + x24 =E= 0;

e19..    x1 - x13 - x17 - x21 =E= 0;

e20..    x2 - x14 - x18 - x22 =E= 0;

e21..    x3 - x15 - x19 - x23 =E= 0;

e22..    x4 - x16 - x20 - x24 =E= 0;

e23..    x9 + x10 - 2.5*b29 =G= 0;

e24..    x9 + x10 - 25*b29 =L= 0;

e25..    x11 + x12 - 2.5*b28 =G= 0;

e26..    x11 + x12 - 25*b28 =L= 0;

e27..    x1 - 4*x2 =G= 0;

e28..  - 3*x3 + x4 =G= 0;

e29..    x1 + x2 =L= 15;

e30..    x3 + x4 =L= 18;

e31..    b28 + b29 =G= 1;

e32..    35*x1 + 30*x4 - 10*x5 - 8*x6 - x9 - x10 - 4*x11 - 4*x12 - 50*b28
       - 2*b29 + objvar =E= 0;

* set non default bounds

x1.up = 50; 
x2.up = 50; 
x3.up = 50; 
x4.up = 50; 
x5.up = 25; 
x6.up = 25; 
x7.up = 50; 
x8.up = 50; 
x9.up = 50; 
x10.up = 50; 
x11.up = 50; 
x12.up = 50; 
x13.up = 50; 
x14.up = 50; 
x15.up = 50; 
x16.up = 50; 
x17.up = 50; 
x18.up = 50; 
x19.up = 50; 
x20.up = 50; 
x21.up = 50; 
x22.up = 50; 
x23.up = 50; 
x24.up = 50; 
x25.up = 1; 
x26.up = 1; 
x27.up = 1; 

$if set nostart $goto modeldef
* set non default levels

x1.l = 10; 
x2.l = 2.5;
x3.l = 4;
x4.l = 14;
x5.l = 8;
x6.l = 25;
x25.l = 0.1; 
x26.l = 0.1; 
x27.l = 0.1; 
b28.l = 0.5;
b29.l = 0.5;
* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
