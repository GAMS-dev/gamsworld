$offlisting
*  MINLP written by GAMS Convert at 08/29/02 11:38:03
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        40      16       6      18       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        33      26       7       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       131     115      16       0
*
*  Solve m using MINLP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,objvar;

Positive Variables x17,x18,x19,x20,x21,x22,x23,x24,x25,x27,x28,x29,x30,x31,x32;

Binary Variables b1,b2,b3,b4,b5,b6,b7;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40;


e1..    x17 + x18 + x19 + x20 + x21 =E= 1980;

e2..    x17 + x18 + x22 =E= 1620;

e3..    x19 + x20 + x23 =E= 360;

e4..  - x17 - x19 + 22*x24 - 22*x25 =E= 0;

e5..  - x18 - x20 + 22*x25 - 22*x26 =E= 0;

e6..  - x17 + 20*x27 - 20*x28 =E= 0;

e7..  - x18 + 20*x28 - 20*x29 =E= 0;

e8..  - x19 + 7.5*x30 - 7.5*x31 =E= 0;

e9..  - x20 + 7.5*x31 - 7.5*x32 =E= 0;

e10..    x24 =E= 440;

e11..    x29 =E= 349;

e12..    x32 =E= 320;

e13..    x24 - x25 =G= 0;

e14..    x25 - x26 =G= 0;

e15..    x27 - x28 =G= 0;

e16..    x28 - x29 =G= 0;

e17..    x30 - x31 =G= 0;

e18..    x31 - x32 =G= 0;

e19..  - x21 + 22*x26 =E= 7700;

e20..  - x22 - 20*x27 =E= -8600;

e21..  - x23 - 7.5*x30 =E= -2760;

e22..  - 1620*b1 + x17 =L= 0;

e23..  - 1620*b2 + x18 =L= 0;

e24..  - 360*b3 + x19 =L= 0;

e25..  - 360*b4 + x20 =L= 0;

e26..  - 1980*b5 + x21 =L= 0;

e27..  - 1620*b6 + x22 =L= 0;

e28..  - 360*b7 + x23 =L= 0;

e29..    200*b1 + x8 - x24 + x27 =L= 200;

e30..    200*b2 + x9 - x25 + x28 =L= 200;

e31..    200*b3 + x11 - x24 + x30 =L= 200;

e32..    200*b4 + x12 - x25 + x31 =L= 200;

e33..    200*b1 + x9 - x25 + x28 =L= 200;

e34..    200*b2 + x10 - x26 + x29 =L= 200;

e35..    200*b3 + x12 - x25 + x31 =L= 200;

e36..    200*b4 + x13 - x26 + x32 =L= 200;

e37..    200*b5 + x14 - x26 =L= -120;

e38..    200*b6 + x15 + x27 =L= 700;

e39..    200*b7 + x16 + x30 =L= 700;

e40..  - (670*(x17/(0.5*(sqr(x8)*x9 + x8*sqr(x9)))**0.333333333333333)**0.83 + 
      670*(x18/(0.5*(sqr(x9)*x10 + x9*sqr(x10)))**0.333333333333333)**0.83 + 
      670*(0.5*x19/(0.5*(sqr(x11)*x12 + x11*sqr(x12)))**0.333333333333333)**
      0.83 + 670*(0.5*x20/(0.5*(sqr(x12)*x13 + x12*sqr(x13)))**
      0.333333333333333)**0.83 + 670*(0.666666666666667*x21/(1250*sqr(x14))**
      0.333333333333333)**0.83 + 20*x21 + 670*(0.666666666666667*x22/(2450*sqr(
      x15))**0.333333333333333)**0.83 + 120*x22 + 670*(0.4*x23/(8712*sqr(x16))
      **0.333333333333333)**0.83 + 120*x23) - 6600*b1 - 6600*b2 - 6600*b3
       - 6600*b4 - 6600*b5 - 6600*b6 - 6600*b7 + objvar =E= 0;

* set non default bounds

x8.lo = 0.01; x8.up = 1000; 
x9.lo = 0.01; x9.up = 1000; 
x10.lo = 0.01; x10.up = 1000; 
x11.lo = 0.01; x11.up = 1000; 
x12.lo = 0.01; x12.up = 1000; 
x13.lo = 0.01; x13.up = 1000; 
x14.lo = 0.01; x14.up = 1000; 
x15.lo = 0.01; x15.up = 1000; 
x16.lo = 0.01; x16.up = 1000; 
x17.up = 1620; 
x18.up = 1620; 
x19.up = 360; 
x20.up = 360; 
x21.up = 1980; 
x22.up = 1620; 
x23.up = 360; 
x24.up = 600; 
x25.up = 600; 
x26.lo = 350; x26.up = 600; 
x27.up = 430; 
x28.up = 600; 
x29.up = 600; 
x30.up = 368; 
x31.up = 600; 
x32.up = 600; 

$if set nostart $goto modeldef
* set non default levels


* set non default marginals


* set non default priorities

b1.prior = 0.01; 
b2.prior = 0.01; 
b3.prior = 0.01; 
b4.prior = 0.01; 
b5.prior = 0.01; 
b6.prior = 0.01; 
b7.prior = 0.01; 

$label modeldef
Model m / all /;

m.limrow=0; m.limcol=0;
m.prioropt = 1;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
