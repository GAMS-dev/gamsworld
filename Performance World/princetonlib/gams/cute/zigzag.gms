*  NLP written by GAMS Convert at 10/06/06 11:53:56
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         61       41        0       20        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         65       65        0        0        0        0        0        0
*  FX      6        6        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        171      141       30        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,objvar;

Positive Variables  x1,x2,x3,x4,x5,x9,x13,x17,x21,x25,x29,x33,x37,x41,x43,x44;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61;


e1..  - 0.5*x3 + 0.5*x7 - x45 =E= 0;

e2..  - 0.5*x4 + 0.5*x8 - x46 =E= 0;

e3..  - x1 + x5 - x7 =E= 0;

e4..  - x2 + x6 - x8 =E= 0;

e5..  - 0.5*x7 + 0.5*x11 - x47 =E= 0;

e6..  - 0.5*x8 + 0.5*x12 - x48 =E= 0;

e7..  - x5 + x9 - x11 =E= 0;

e8..  - x6 + x10 - x12 =E= 0;

e9..  - 0.5*x11 + 0.5*x15 - x49 =E= 0;

e10..  - 0.5*x12 + 0.5*x16 - x50 =E= 0;

e11..  - x9 + x13 - x15 =E= 0;

e12..  - x10 + x14 - x16 =E= 0;

e13..  - 0.5*x15 + 0.5*x19 - x51 =E= 0;

e14..  - 0.5*x16 + 0.5*x20 - x52 =E= 0;

e15..  - x13 + x17 - x19 =E= 0;

e16..  - x14 + x18 - x20 =E= 0;

e17..  - 0.5*x19 + 0.5*x23 - x53 =E= 0;

e18..  - 0.5*x20 + 0.5*x24 - x54 =E= 0;

e19..  - x17 + x21 - x23 =E= 0;

e20..  - x18 + x22 - x24 =E= 0;

e21..  - 0.5*x23 + 0.5*x27 - x55 =E= 0;

e22..  - 0.5*x24 + 0.5*x28 - x56 =E= 0;

e23..  - x21 + x25 - x27 =E= 0;

e24..  - x22 + x26 - x28 =E= 0;

e25..  - 0.5*x27 + 0.5*x31 - x57 =E= 0;

e26..  - 0.5*x28 + 0.5*x32 - x58 =E= 0;

e27..  - x25 + x29 - x31 =E= 0;

e28..  - x26 + x30 - x32 =E= 0;

e29..  - 0.5*x31 + 0.5*x35 - x59 =E= 0;

e30..  - 0.5*x32 + 0.5*x36 - x60 =E= 0;

e31..  - x29 + x33 - x35 =E= 0;

e32..  - x30 + x34 - x36 =E= 0;

e33..  - 0.5*x35 + 0.5*x39 - x61 =E= 0;

e34..  - 0.5*x36 + 0.5*x40 - x62 =E= 0;

e35..  - x33 + x37 - x39 =E= 0;

e36..  - x34 + x38 - x40 =E= 0;

e37..  - 0.5*x39 + 0.5*x43 - x63 =E= 0;

e38..  - 0.5*x40 + 0.5*x44 - x64 =E= 0;

e39..  - x37 + x41 - x43 =E= 0;

e40..  - x38 + x42 - x44 =E= 0;

e41..  - sin(x5) + x6 =L= 0.1;

e42..  - sin(x9) + x10 =L= 0.1;

e43..  - sin(x13) + x14 =L= 0.1;

e44..  - sin(x17) + x18 =L= 0.1;

e45..  - sin(x21) + x22 =L= 0.1;

e46..  - sin(x25) + x26 =L= 0.1;

e47..  - sin(x29) + x30 =L= 0.1;

e48..  - sin(x33) + x34 =L= 0.1;

e49..  - sin(x37) + x38 =L= 0.1;

e50..  - sin(x41) + x42 =L= 0.1;

e51.. sin(x5) - x6 =L= 0.1;

e52.. sin(x9) - x10 =L= 0.1;

e53.. sin(x13) - x14 =L= 0.1;

e54.. sin(x17) - x18 =L= 0.1;

e55.. sin(x21) - x22 =L= 0.1;

e56.. sin(x25) - x26 =L= 0.1;

e57.. sin(x29) - x30 =L= 0.1;

e58.. sin(x33) - x34 =L= 0.1;

e59.. sin(x37) - x38 =L= 0.1;

e60.. sin(x41) - x42 =L= 0.1;

e61..  - (0.0181818181818182*(-10 + x5)*(-10 + x5) + 0.0363636363636364*(-10 + 
      x9)*(-10 + x9) + 0.0545454545454545*(-10 + x13)*(-10 + x13) + 
      0.0727272727272727*(-10 + x17)*(-10 + x17) + 0.0909090909090909*(-10 + 
      x21)*(-10 + x21) + 0.109090909090909*(-10 + x25)*(-10 + x25) + 
      0.127272727272727*(-10 + x29)*(-10 + x29) + 0.145454545454545*(-10 + x33)
      *(-10 + x33) + 0.163636363636364*(-10 + x37)*(-10 + x37) + 
      0.181818181818182*(-10 + x41)*(-10 + x41)) + objvar =E= 0;

* set non default bounds

x1.fx = 0; 
x2.fx = 0; 
x3.fx = 0; 
x4.fx = 0; 
x5.up = 10; 
x9.up = 10; 
x13.up = 10; 
x17.up = 10; 
x21.up = 10; 
x25.up = 10; 
x29.up = 10; 
x33.up = 10; 
x37.up = 10; 
x41.up = 10; 
x43.fx = 0; 
x44.fx = 0; 
x45.lo = -1; x45.up = 1; 
x46.lo = -1; x46.up = 1; 
x47.lo = -1; x47.up = 1; 
x48.lo = -1; x48.up = 1; 
x49.lo = -1; x49.up = 1; 
x50.lo = -1; x50.up = 1; 
x51.lo = -1; x51.up = 1; 
x52.lo = -1; x52.up = 1; 
x53.lo = -1; x53.up = 1; 
x54.lo = -1; x54.up = 1; 
x55.lo = -1; x55.up = 1; 
x56.lo = -1; x56.up = 1; 
x57.lo = -1; x57.up = 1; 
x58.lo = -1; x58.up = 1; 
x59.lo = -1; x59.up = 1; 
x60.lo = -1; x60.up = 1; 
x61.lo = -1; x61.up = 1; 
x62.lo = -1; x62.up = 1; 
x63.lo = -1; x63.up = 1; 
x64.lo = -1; x64.up = 1; 

* set non default levels

x5.l = 1; 
x7.l = 1; 
x9.l = 2; 
x11.l = 1; 
x13.l = 3; 
x15.l = 1; 
x17.l = 4; 
x19.l = 1; 
x21.l = 5; 
x23.l = 1; 
x25.l = 6; 
x27.l = 1; 
x29.l = 7; 
x31.l = 1; 
x33.l = 8; 
x35.l = 1; 
x37.l = 9; 
x39.l = 1; 
x41.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;