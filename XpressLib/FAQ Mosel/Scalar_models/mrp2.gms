*  LP written by GAMS Convert at 02/22/08 02:33:47
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         55        1       38       16        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         41       41        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        291      291        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55;


e1..    x1 =G= -30;

e2..    x1 + x2 =G= -10;

e3..    x1 + x2 + x3 =G= 20;

e4..    x1 + x2 + x3 + x4 =G= 40;

e5..    x1 + x2 + x3 + x4 + x5 =G= 70;

e6..    x1 + x2 + x3 + x4 + x5 + x6 =G= 110;

e7..  - 2*x1 =G= -300;

e8..  - 2*x1 - 2*x2 =G= -300;

e9..  - 2*x1 - 2*x2 - 2*x3 =G= -300;

e10..  - 2*x1 - 2*x2 - 2*x3 - 2*x4 + x9 =G= -300;

e11..  - 2*x1 - 2*x2 - 2*x3 - 2*x4 - 2*x5 + x9 + x10 =G= -300;

e12..  - 2*x1 - 2*x2 - 2*x3 - 2*x4 - 2*x5 - 2*x6 + x9 + x10 + x11 =G= -300;

e13..  - 2*x1 - 2*x2 - 2*x3 - 2*x4 - 2*x5 - 2*x6 - 2*x7 + x9 + x10 + x11 + x12
       =G= -300;

e14..  - 2*x1 - 2*x2 - 2*x3 - 2*x4 - 2*x5 - 2*x6 - 2*x7 - 2*x8 + x9 + x10 + x11
       + x12 + x13 =G= -300;

e15..  - x1 =G= -100;

e16..  - x1 - x2 =G= -100;

e17..  - x1 - x2 - x3 =G= -100;

e18..  - x1 - x2 - x3 - x4 =G= -100;

e19..  - x1 - x2 - x3 - x4 - x5 + x17 =G= -100;

e20..  - x1 - x2 - x3 - x4 - x5 - x6 + x17 + x18 =G= -100;

e21..  - x1 - x2 - x3 - x4 - x5 - x6 - x7 + x17 + x18 + x19 =G= -100;

e22..  - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 + x17 + x18 + x19 + x20
       =G= -100;

e23..  - x9 =G= 0;

e24..  - x9 - x10 + x25 =G= 0;

e25..  - x9 - x10 - x11 + x25 + x26 =G= 0;

e26..  - x9 - x10 - x11 - x12 + x25 + x26 + x27 =G= 0;

e27..  - x9 - x10 - x11 - x12 - x13 + x25 + x26 + x27 + x28 =G= 0;

e28..  - x9 - x10 - x11 - x12 - x13 - x14 + x25 + x26 + x27 + x28 + x29 =G= 0;

e29..  - x9 - x10 - x11 - x12 - x13 - x14 - x15 + x25 + x26 + x27 + x28 + x29
       + x30 =G= 0;

e30..  - x9 - x10 - x11 - x12 - x13 - x14 - x15 - x16 + x25 + x26 + x27 + x28
       + x29 + x30 + x31 =G= 0;

e31..  - x9 =G= -900;

e32..  - x9 - x10 =G= -900;

e33..  - x9 - x10 - x11 =G= -900;

e34..  - x9 - x10 - x11 - x12 =G= -900;

e35..  - x9 - x10 - x11 - x12 - x13 =G= -900;

e36..  - x9 - x10 - x11 - x12 - x13 - x14 =G= -900;

e37..  - x9 - x10 - x11 - x12 - x13 - x14 - x15 =G= -900;

e38..  - x9 - x10 - x11 - x12 - x13 - x14 - x15 - x16 =G= -900;

e39..    0.00208333*x1 =L= 1;

e40..    0.00104166*x1 + 0.00333333*x9 + 1E-6*x25 =L= 1;

e41..    0.00208333*x2 =L= 1;

e42..    0.00104166*x2 + 0.00333333*x10 + 1E-6*x26 =L= 1;

e43..    0.00208333*x3 =L= 1;

e44..    0.00104166*x3 + 0.00333333*x11 + 1E-6*x27 =L= 1;

e45..    0.00208333*x4 =L= 1;

e46..    0.00104166*x4 + 0.00333333*x12 + 1E-6*x28 =L= 1;

e47..    0.00208333*x5 =L= 1;

e48..    0.00104166*x5 + 0.00333333*x13 + 1E-6*x29 =L= 1;

e49..    0.00208333*x6 =L= 1;

e50..    0.00104166*x6 + 0.00333333*x14 + 1E-6*x30 =L= 1;

e51..    0.00208333*x7 =L= 1;

e52..    0.00104166*x7 + 0.00333333*x15 + 1E-6*x31 =L= 1;

e53..    0.00208333*x8 =L= 1;

e54..    0.00104166*x8 + 0.00333333*x16 + 1E-6*x32 =L= 1;

e55..  - 8*x1 - 7*x2 - 6*x3 - 5*x4 - 4*x5 - 3*x6 - 2*x7 - x8 - 8*x9 - 7*x10
       - 6*x11 - 5*x12 - 4*x13 - 3*x14 - 2*x15 - x16 - 8*x17 - 7*x18 - 6*x19
       - 5*x20 - 4*x21 - 3*x22 - 2*x23 - x24 - 8*x25 - 7*x26 - 6*x27 - 5*x28
       - 4*x29 - 3*x30 - 2*x31 - x32 - 8*x33 - 7*x34 - 6*x35 - 5*x36 - 4*x37
       - 3*x38 - 2*x39 - x40 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
