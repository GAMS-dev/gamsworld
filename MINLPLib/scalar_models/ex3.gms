$offlisting
*  MINLP written by GAMS Convert at 04/18/01 12:06:38
*  
*  Equation counts
*     Total       E       G       L       N       X
*        32      18       2      12       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        33      25       8       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       100      95       5       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,objvar;

Positive Variables x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23
          ,x24,x25,x26,x27,x28,x29,x30,x31,x32;

Binary Variables b1,b2,b3,b4,b5,b6,b7,b8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32;


e1.. exp(x10) - x9 =E= 1;

e2.. exp(0.833333333333333*x12) - x11 =E= 1;

e3..  - x15 + 1.5*x16 + x17 =E= 0;

e4..    1.25*x19 - x20 + 1.25*x21 =E= 0;

e5..    x22 - 2*x23 =E= 0;

e6.. exp(0.666666666666667*x27) - x26 =E= 1;

e7.. exp(x29) - x28 =E= 1;

e8.. exp(x25) - x17 - x24 =E= 1;

e9..    x20 - x26 - x28 =E= 0;

e10..  - x16 - x23 + x24 - x32 =E= 0;

e11..    x18 - x19 - x22 =E= 0;

e12..    x10 + x12 - x13 - x18 =E= 0;

e13..    x13 - x14 - x15 =E= 0;

e14..  - x27 - x29 + x30 =E= 0;

e15..  - x21 + x30 - x31 =E= 0;

e16..    x17 - 0.8*x24 =L= 0;

e17..    x17 - 0.4*x24 =G= 0;

e18..    x19 - 5*x21 =L= 0;

e19..    x19 - 2*x21 =G= 0;

e20..  - 10*b8 + x9 =L= 0;

e21..  - 10*b1 + x11 =L= 0;

e22..  - 10*b2 + x16 =L= 0;

e23..  - 10*b3 + x19 + x21 =L= 0;

e24..  - 10*b4 + x22 =L= 0;

e25..  - 10*b5 + x26 =L= 0;

e26..  - 10*b6 + x28 =L= 0;

e27..  - 10*b7 + x17 + x24 =L= 0;

e28..    b1 + b8 =E= 1;

e29..    b3 + b4 =L= 1;

e30..  - b3 + b5 + b6 =E= 0;

e31..    b2 - b7 =L= 0;

e32..  - 8*b1 - 6*b2 - 10*b3 - 6*b4 - 7*b5 - 4*b6 - 5*b7 - 5*b8 - x9 + 10*x10
       - x11 + 15*x12 + 40*x16 - 15*x17 - 15*x21 - 80*x24 + 65*x25 - 25*x26
       + 60*x27 - 35*x28 + 80*x29 + 35*x32 + objvar =E= 122;

* set non default bounds

x10.up = 2; 
x12.up = 2; 
x16.up = 2; 
x17.up = 1; 
x21.up = 1; 
x24.up = 2; 
x26.up = 2; 
x28.up = 2; 
x32.up = 3; 

$if set nostart $goto modeldef
* set non default levels

x9.l = 2; 
x10.l = 1.5; 
x13.l = 0.75; 
x14.l = 0.5; 
x15.l = 0.5; 
x16.l = 0.75; 
x18.l = 1.5; 
x19.l = 1.34; 
x20.l = 2; 
x25.l = 0.75; 
x27.l = 1.5; 
x30.l = 1.7; 
x31.l = 1.5; 
x32.l = 0.5; 

* set non default marginals


$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
