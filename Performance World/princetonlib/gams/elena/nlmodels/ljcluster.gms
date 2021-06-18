*  NLP written by GAMS Convert at 06/26/06 16:29:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         46       46        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         66       66        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        271       46      225        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46;


e1..  - sqrt(sqr(x3 - x1) + sqr(x4 - x2)) + x21 =E= 0;

e2..  - sqrt(sqr(x5 - x1) + sqr(x6 - x2)) + x22 =E= 0;

e3..  - sqrt(sqr(x5 - x3) + sqr(x6 - x4)) + x23 =E= 0;

e4..  - sqrt(sqr(x7 - x1) + sqr(x8 - x2)) + x24 =E= 0;

e5..  - sqrt(sqr(x7 - x3) + sqr(x8 - x4)) + x25 =E= 0;

e6..  - sqrt(sqr(x7 - x5) + sqr(x8 - x6)) + x26 =E= 0;

e7..  - sqrt(sqr(x9 - x1) + sqr(x10 - x2)) + x27 =E= 0;

e8..  - sqrt(sqr(x9 - x3) + sqr(x10 - x4)) + x28 =E= 0;

e9..  - sqrt(sqr(x9 - x5) + sqr(x10 - x6)) + x29 =E= 0;

e10..  - sqrt(sqr(x9 - x7) + sqr(x10 - x8)) + x30 =E= 0;

e11..  - sqrt(sqr(x11 - x1) + sqr(x12 - x2)) + x31 =E= 0;

e12..  - sqrt(sqr(x11 - x3) + sqr(x12 - x4)) + x32 =E= 0;

e13..  - sqrt(sqr(x11 - x5) + sqr(x12 - x6)) + x33 =E= 0;

e14..  - sqrt(sqr(x11 - x7) + sqr(x12 - x8)) + x34 =E= 0;

e15..  - sqrt(sqr(x11 - x9) + sqr(x12 - x10)) + x35 =E= 0;

e16..  - sqrt(sqr(x13 - x1) + sqr(x14 - x2)) + x36 =E= 0;

e17..  - sqrt(sqr(x13 - x3) + sqr(x14 - x4)) + x37 =E= 0;

e18..  - sqrt(sqr(x13 - x5) + sqr(x14 - x6)) + x38 =E= 0;

e19..  - sqrt(sqr(x13 - x7) + sqr(x14 - x8)) + x39 =E= 0;

e20..  - sqrt(sqr(x13 - x9) + sqr(x14 - x10)) + x40 =E= 0;

e21..  - sqrt(sqr(x13 - x11) + sqr(x14 - x12)) + x41 =E= 0;

e22..  - sqrt(sqr(x15 - x1) + sqr(x16 - x2)) + x42 =E= 0;

e23..  - sqrt(sqr(x15 - x3) + sqr(x16 - x4)) + x43 =E= 0;

e24..  - sqrt(sqr(x15 - x5) + sqr(x16 - x6)) + x44 =E= 0;

e25..  - sqrt(sqr(x15 - x7) + sqr(x16 - x8)) + x45 =E= 0;

e26..  - sqrt(sqr(x15 - x9) + sqr(x16 - x10)) + x46 =E= 0;

e27..  - sqrt(sqr(x15 - x11) + sqr(x16 - x12)) + x47 =E= 0;

e28..  - sqrt(sqr(x15 - x13) + sqr(x16 - x14)) + x48 =E= 0;

e29..  - sqrt(sqr(x17 - x1) + sqr(x18 - x2)) + x49 =E= 0;

e30..  - sqrt(sqr(x17 - x3) + sqr(x18 - x4)) + x50 =E= 0;

e31..  - sqrt(sqr(x17 - x5) + sqr(x18 - x6)) + x51 =E= 0;

e32..  - sqrt(sqr(x17 - x7) + sqr(x18 - x8)) + x52 =E= 0;

e33..  - sqrt(sqr(x17 - x9) + sqr(x18 - x10)) + x53 =E= 0;

e34..  - sqrt(sqr(x17 - x11) + sqr(x18 - x12)) + x54 =E= 0;

e35..  - sqrt(sqr(x17 - x13) + sqr(x18 - x14)) + x55 =E= 0;

e36..  - sqrt(sqr(x17 - x15) + sqr(x18 - x16)) + x56 =E= 0;

e37..  - sqrt(sqr(x19 - x1) + sqr(x20 - x2)) + x57 =E= 0;

e38..  - sqrt(sqr(x19 - x3) + sqr(x20 - x4)) + x58 =E= 0;

e39..  - sqrt(sqr(x19 - x5) + sqr(x20 - x6)) + x59 =E= 0;

e40..  - sqrt(sqr(x19 - x7) + sqr(x20 - x8)) + x60 =E= 0;

e41..  - sqrt(sqr(x19 - x9) + sqr(x20 - x10)) + x61 =E= 0;

e42..  - sqrt(sqr(x19 - x11) + sqr(x20 - x12)) + x62 =E= 0;

e43..  - sqrt(sqr(x19 - x13) + sqr(x20 - x14)) + x63 =E= 0;

e44..  - sqrt(sqr(x19 - x15) + sqr(x20 - x16)) + x64 =E= 0;

e45..  - sqrt(sqr(x19 - x17) + sqr(x20 - x18)) + x65 =E= 0;

e46..  - (1/POWER(x21,12) - 2/POWER(x21,6) + 1/POWER(x22,12) - 2/POWER(x22,6)
       + 1/POWER(x23,12) - 2/POWER(x23,6) + 1/POWER(x24,12) - 2/POWER(x24,6) + 
      1/POWER(x25,12) - 2/POWER(x25,6) + 1/POWER(x26,12) - 2/POWER(x26,6) + 1/
      POWER(x27,12) - 2/POWER(x27,6) + 1/POWER(x28,12) - 2/POWER(x28,6) + 1/
      POWER(x29,12) - 2/POWER(x29,6) + 1/POWER(x30,12) - 2/POWER(x30,6) + 1/
      POWER(x31,12) - 2/POWER(x31,6) + 1/POWER(x32,12) - 2/POWER(x32,6) + 1/
      POWER(x33,12) - 2/POWER(x33,6) + 1/POWER(x34,12) - 2/POWER(x34,6) + 1/
      POWER(x35,12) - 2/POWER(x35,6) + 1/POWER(x36,12) - 2/POWER(x36,6) + 1/
      POWER(x37,12) - 2/POWER(x37,6) + 1/POWER(x38,12) - 2/POWER(x38,6) + 1/
      POWER(x39,12) - 2/POWER(x39,6) + 1/POWER(x40,12) - 2/POWER(x40,6) + 1/
      POWER(x41,12) - 2/POWER(x41,6) + 1/POWER(x42,12) - 2/POWER(x42,6) + 1/
      POWER(x43,12) - 2/POWER(x43,6) + 1/POWER(x44,12) - 2/POWER(x44,6) + 1/
      POWER(x45,12) - 2/POWER(x45,6) + 1/POWER(x46,12) - 2/POWER(x46,6) + 1/
      POWER(x47,12) - 2/POWER(x47,6) + 1/POWER(x48,12) - 2/POWER(x48,6) + 1/
      POWER(x49,12) - 2/POWER(x49,6) + 1/POWER(x50,12) - 2/POWER(x50,6) + 1/
      POWER(x51,12) - 2/POWER(x51,6) + 1/POWER(x52,12) - 2/POWER(x52,6) + 1/
      POWER(x53,12) - 2/POWER(x53,6) + 1/POWER(x54,12) - 2/POWER(x54,6) + 1/
      POWER(x55,12) - 2/POWER(x55,6) + 1/POWER(x56,12) - 2/POWER(x56,6) + 1/
      POWER(x57,12) - 2/POWER(x57,6) + 1/POWER(x58,12) - 2/POWER(x58,6) + 1/
      POWER(x59,12) - 2/POWER(x59,6) + 1/POWER(x60,12) - 2/POWER(x60,6) + 1/
      POWER(x61,12) - 2/POWER(x61,6) + 1/POWER(x62,12) - 2/POWER(x62,6) + 1/
      POWER(x63,12) - 2/POWER(x63,6) + 1/POWER(x64,12) - 2/POWER(x64,6) + 1/
      POWER(x65,12) - 2/POWER(x65,6)) + objvar =E= 0;

* set non default bounds

x1.lo = 1; 
x2.lo = 1; 
x3.lo = 1; 
x4.lo = 1; 
x5.lo = 1; 
x6.lo = 1; 
x7.lo = 1; 
x8.lo = 1; 
x9.lo = 1; 
x10.lo = 1; 
x11.lo = 1; 
x12.lo = 1; 
x13.lo = 1; 
x14.lo = 1; 
x15.lo = 1; 
x16.lo = 1; 
x17.lo = 1; 
x18.lo = 1; 
x19.lo = 1; 
x20.lo = 1; 
x21.lo = 0.8; 
x22.lo = 0.8; 
x23.lo = 0.8; 
x24.lo = 0.8; 
x25.lo = 0.8; 
x26.lo = 0.8; 
x27.lo = 0.8; 
x28.lo = 0.8; 
x29.lo = 0.8; 
x30.lo = 0.8; 
x31.lo = 0.8; 
x32.lo = 0.8; 
x33.lo = 0.8; 
x34.lo = 0.8; 
x35.lo = 0.8; 
x36.lo = 0.8; 
x37.lo = 0.8; 
x38.lo = 0.8; 
x39.lo = 0.8; 
x40.lo = 0.8; 
x41.lo = 0.8; 
x42.lo = 0.8; 
x43.lo = 0.8; 
x44.lo = 0.8; 
x45.lo = 0.8; 
x46.lo = 0.8; 
x47.lo = 0.8; 
x48.lo = 0.8; 
x49.lo = 0.8; 
x50.lo = 0.8; 
x51.lo = 0.8; 
x52.lo = 0.8; 
x53.lo = 0.8; 
x54.lo = 0.8; 
x55.lo = 0.8; 
x56.lo = 0.8; 
x57.lo = 0.8; 
x58.lo = 0.8; 
x59.lo = 0.8; 
x60.lo = 0.8; 
x61.lo = 0.8; 
x62.lo = 0.8; 
x63.lo = 0.8; 
x64.lo = 0.8; 
x65.lo = 0.8; 

* set non default levels

x3.l = 2; 
x4.l = 2; 
x5.l = 3; 
x6.l = 3; 
x7.l = 4; 
x8.l = 4; 
x9.l = 5; 
x10.l = 5; 
x11.l = 6; 
x12.l = 6; 
x13.l = 7; 
x14.l = 7; 
x15.l = 8; 
x16.l = 8; 
x17.l = 9; 
x18.l = 9; 
x19.l = 10; 
x20.l = 10; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
