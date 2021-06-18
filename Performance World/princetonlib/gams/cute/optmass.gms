*  NLP written by GAMS Convert at 10/06/06 11:47:03
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         56       45        0       11        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         71       71        0        0        0        0        0        0
*  FX      4        4        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        181      155       26        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,objvar;

Positive Variables  x1,x13,x37;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56;


e1..  - x1 + x2 - 0.1*x25 - 0.005*x49 =E= 0;

e2..  - x2 + x3 - 0.1*x26 - 0.005*x50 =E= 0;

e3..  - x3 + x4 - 0.1*x27 - 0.005*x51 =E= 0;

e4..  - x4 + x5 - 0.1*x28 - 0.005*x52 =E= 0;

e5..  - x5 + x6 - 0.1*x29 - 0.005*x53 =E= 0;

e6..  - x6 + x7 - 0.1*x30 - 0.005*x54 =E= 0;

e7..  - x7 + x8 - 0.1*x31 - 0.005*x55 =E= 0;

e8..  - x8 + x9 - 0.1*x32 - 0.005*x56 =E= 0;

e9..  - x9 + x10 - 0.1*x33 - 0.005*x57 =E= 0;

e10..  - x10 + x11 - 0.1*x34 - 0.005*x58 =E= 0;

e11..  - x11 + x12 - 0.1*x35 - 0.005*x59 =E= 0;

e12..  - x13 + x14 - 0.1*x37 - 0.005*x60 =E= 0;

e13..  - x14 + x15 - 0.1*x38 - 0.005*x61 =E= 0;

e14..  - x15 + x16 - 0.1*x39 - 0.005*x62 =E= 0;

e15..  - x16 + x17 - 0.1*x40 - 0.005*x63 =E= 0;

e16..  - x17 + x18 - 0.1*x41 - 0.005*x64 =E= 0;

e17..  - x18 + x19 - 0.1*x42 - 0.005*x65 =E= 0;

e18..  - x19 + x20 - 0.1*x43 - 0.005*x66 =E= 0;

e19..  - x20 + x21 - 0.1*x44 - 0.005*x67 =E= 0;

e20..  - x21 + x22 - 0.1*x45 - 0.005*x68 =E= 0;

e21..  - x22 + x23 - 0.1*x46 - 0.005*x69 =E= 0;

e22..  - x23 + x24 - 0.1*x47 - 0.005*x70 =E= 0;

e23..  - x25 + x26 - 0.1*x49 =E= 0;

e24..  - x26 + x27 - 0.1*x50 =E= 0;

e25..  - x27 + x28 - 0.1*x51 =E= 0;

e26..  - x28 + x29 - 0.1*x52 =E= 0;

e27..  - x29 + x30 - 0.1*x53 =E= 0;

e28..  - x30 + x31 - 0.1*x54 =E= 0;

e29..  - x31 + x32 - 0.1*x55 =E= 0;

e30..  - x32 + x33 - 0.1*x56 =E= 0;

e31..  - x33 + x34 - 0.1*x57 =E= 0;

e32..  - x34 + x35 - 0.1*x58 =E= 0;

e33..  - x35 + x36 - 0.1*x59 =E= 0;

e34..  - x37 + x38 - 0.1*x60 =E= 0;

e35..  - x38 + x39 - 0.1*x61 =E= 0;

e36..  - x39 + x40 - 0.1*x62 =E= 0;

e37..  - x40 + x41 - 0.1*x63 =E= 0;

e38..  - x41 + x42 - 0.1*x64 =E= 0;

e39..  - x42 + x43 - 0.1*x65 =E= 0;

e40..  - x43 + x44 - 0.1*x66 =E= 0;

e41..  - x44 + x45 - 0.1*x67 =E= 0;

e42..  - x45 + x46 - 0.1*x68 =E= 0;

e43..  - x46 + x47 - 0.1*x69 =E= 0;

e44..  - x47 + x48 - 0.1*x70 =E= 0;

e45.. sqr(x49) + sqr(x60) =L= 1;

e46.. sqr(x50) + sqr(x61) =L= 1;

e47.. sqr(x51) + sqr(x62) =L= 1;

e48.. sqr(x52) + sqr(x63) =L= 1;

e49.. sqr(x53) + sqr(x64) =L= 1;

e50.. sqr(x54) + sqr(x65) =L= 1;

e51.. sqr(x55) + sqr(x66) =L= 1;

e52.. sqr(x56) + sqr(x67) =L= 1;

e53.. sqr(x57) + sqr(x68) =L= 1;

e54.. sqr(x58) + sqr(x69) =L= 1;

e55.. sqr(x59) + sqr(x70) =L= 1;

e56..  - (0.335*(sqr(x36) + sqr(x48)) - (sqr(x12) + sqr(x24))) + objvar =E= 0;

* set non default bounds

x1.fx = 0; 
x13.fx = 0; 
x25.fx = 0.01; 
x37.fx = 0; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
