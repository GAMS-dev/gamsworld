*  DNLP written by GAMS Convert at 07/30/01 10:17:47
*  
*  Equation counts
*     Total       E       G       L       N       X
*        21      21       0       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        25      25       0       0       0       0       0       0
*  FX     0       0       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       121     101      20       0
*
*  Solve m using DNLP minimizing objvar;


Variables  objvar,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1..    x2 + x22 + 85*x23 + 76*x24 + 44*x25 =E= 99;

e2..    x3 + x22 + 82*x23 + 78*x24 + 42*x25 =E= 93;

e3..    x4 + x22 + 75*x23 + 73*x24 + 42*x25 =E= 99;

e4..    x5 + x22 + 74*x23 + 72*x24 + 44*x25 =E= 97;

e5..    x6 + x22 + 76*x23 + 73*x24 + 43*x25 =E= 90;

e6..    x7 + x22 + 74*x23 + 69*x24 + 46*x25 =E= 96;

e7..    x8 + x22 + 73*x23 + 69*x24 + 46*x25 =E= 93;

e8..    x9 + x22 + 96*x23 + 80*x24 + 36*x25 =E= 130;

e9..    x10 + x22 + 93*x23 + 78*x24 + 36*x25 =E= 118;

e10..    x11 + x22 + 70*x23 + 73*x24 + 37*x25 =E= 88;

e11..    x12 + x22 + 82*x23 + 71*x24 + 46*x25 =E= 89;

e12..    x13 + x22 + 80*x23 + 72*x24 + 45*x25 =E= 93;

e13..    x14 + x22 + 77*x23 + 76*x24 + 42*x25 =E= 94;

e14..    x15 + x22 + 67*x23 + 76*x24 + 50*x25 =E= 75;

e15..    x16 + x22 + 82*x23 + 70*x24 + 48*x25 =E= 84;

e16..    x17 + x22 + 76*x23 + 76*x24 + 41*x25 =E= 91;

e17..    x18 + x22 + 74*x23 + 78*x24 + 31*x25 =E= 100;

e18..    x19 + x22 + 71*x23 + 80*x24 + 29*x25 =E= 98;

e19..    x20 + x22 + 70*x23 + 83*x24 + 39*x25 =E= 101;

e20..    x21 + x22 + 64*x23 + 79*x24 + 38*x25 =E= 80;

e21..  - (abs(x2) + abs(x3) + abs(x4) + abs(x5) + abs(x6) + abs(x7) + abs(x8)
       + abs(x9) + abs(x10) + abs(x11) + abs(x12) + abs(x13) + abs(x14) + abs(
      x15) + abs(x16) + abs(x17) + abs(x18) + abs(x19) + abs(x20) + abs(x21))
       + objvar =E= 0;

* set non default bounds

x2.lo = -100; x2.up = 100; 
x3.lo = -100; x3.up = 100; 
x4.lo = -100; x4.up = 100; 
x5.lo = -100; x5.up = 100; 
x6.lo = -100; x6.up = 100; 
x7.lo = -100; x7.up = 100; 
x8.lo = -100; x8.up = 100; 
x9.lo = -100; x9.up = 100; 
x10.lo = -100; x10.up = 100; 
x11.lo = -100; x11.up = 100; 
x12.lo = -100; x12.up = 100; 
x13.lo = -100; x13.up = 100; 
x14.lo = -100; x14.up = 100; 
x15.lo = -100; x15.up = 100; 
x16.lo = -100; x16.up = 100; 
x17.lo = -100; x17.up = 100; 
x18.lo = -100; x18.up = 100; 
x19.lo = -100; x19.up = 100; 
x20.lo = -100; x20.up = 100; 
x21.lo = -100; x21.up = 100; 

* set non default levels

x4.l = -92; 
x5.l = -94; 
x7.l = -94; 
x8.l = -96; 
x9.l = -83; 
x10.l = -90; 
x11.l = -93; 
x18.l = -84; 
x19.l = -83; 
x20.l = -92; 
x22.l = 1; 
x23.l = 1; 
x24.l = 1; 
x25.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
