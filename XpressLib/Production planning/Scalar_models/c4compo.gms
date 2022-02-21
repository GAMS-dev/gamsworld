*  LP written by GAMS Convert at 08/20/07 23:15:58
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         30       30        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         59       59        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        177      177        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x31,x32,x33,x34,x35
          ,x37,x38,x39,x40,x41,x43,x44,x45,x46,x47,x49,x50,x51,x52,x53,x54,x55
          ,x56,x57,x58;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30;


e1..  - x1 + x25 =E= -1490;

e2..  - x2 - x25 + x26 =E= -3000;

e3..  - x3 - x26 + x27 =E= -2000;

e4..  - x4 - x27 + x28 =E= -4000;

e5..  - x5 - x28 + x29 =E= -2000;

e6..  - x6 - x29 + x30 =E= -2500;

e7..  - x7 + x31 =E= -1300;

e8..  - x8 - x31 + x32 =E= -800;

e9..  - x9 - x32 + x33 =E= -800;

e10..  - x10 - x33 + x34 =E= -1000;

e11..  - x11 - x34 + x35 =E= -1100;

e12..  - x12 - x35 + x36 =E= -900;

e13..  - x13 + x37 =E= -2150;

e14..  - x14 - x37 + x38 =E= -1500;

e15..  - x15 - x38 + x39 =E= -2900;

e16..  - x16 - x39 + x40 =E= -1800;

e17..  - x17 - x40 + x41 =E= -1200;

e18..  - x18 - x41 + x42 =E= -2100;

e19..  - x19 + x43 =E= -1400;

e20..  - x20 - x43 + x44 =E= -1600;

e21..  - x21 - x44 + x45 =E= -1500;

e22..  - x22 - x45 + x46 =E= -1000;

e23..  - x23 - x46 + x47 =E= -1100;

e24..  - x24 - x47 + x48 =E= -1200;

e25..  - x1 + x2 - x7 + x8 - x13 + x14 - x19 + x20 + x49 - x54 =E= 0;

e26..  - x2 + x3 - x8 + x9 - x14 + x15 - x20 + x21 + x50 - x55 =E= 0;

e27..  - x3 + x4 - x9 + x10 - x15 + x16 - x21 + x22 + x51 - x56 =E= 0;

e28..  - x4 + x5 - x10 + x11 - x16 + x17 - x22 + x23 + x52 - x57 =E= 0;

e29..  - x5 + x6 - x11 + x12 - x17 + x18 - x23 + x24 + x53 - x58 =E= 0;

e30..  - 20*x1 - 20*x2 - 20*x3 - 20*x4 - 20*x5 - 20*x6 - 25*x7 - 25*x8 - 25*x9
       - 25*x10 - 25*x11 - 25*x12 - 10*x13 - 10*x14 - 10*x15 - 10*x16 - 10*x17
       - 10*x18 - 15*x19 - 15*x20 - 15*x21 - 15*x22 - 15*x23 - 15*x24 - 0.4*x25
       - 0.4*x26 - 0.4*x27 - 0.4*x28 - 0.4*x29 - 0.4*x30 - 0.5*x31 - 0.5*x32
       - 0.5*x33 - 0.5*x34 - 0.5*x35 - 0.5*x36 - 0.3*x37 - 0.3*x38 - 0.3*x39
       - 0.3*x40 - 0.3*x41 - 0.3*x42 - 0.3*x43 - 0.3*x44 - 0.3*x45 - 0.3*x46
       - 0.3*x47 - 0.3*x48 - 0.5*x49 - 0.5*x50 - 0.5*x51 - 0.5*x52 - 0.5*x53
       - x54 - x55 - x56 - x57 - x58 + objvar =E= 0;

* set non default bounds

x30.lo = 50; 
x36.lo = 10; 
x42.lo = 30; 
x48.lo = 10; 

* set non default levels

x30.l = 50; 
x36.l = 10; 
x42.l = 30; 
x48.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
