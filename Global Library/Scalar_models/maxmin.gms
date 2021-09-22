*  DNLP written by GAMS Convert at 04/20/04 16:16:32
*  
*  Equation counts
*     Total       E       G       L       N       X       C
*        78       0       0      78       0       0       0
*  
*  Variable counts
*                 x       b       i     s1s     s2s      sc      si
*     Total    cont  binary integer    sos1    sos2   scont    sint
*        27      27       0       0       0       0       0       0
*  FX     2       2       0       0       0       0       0       0
*  
*  Nonzero counts
*     Total   const      NL     DLL
*       390      78     312       0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78;


e1..  - sqrt(sqr(x3 - x1) + sqr(x4 - x2)) - objvar =L= 0;

e2..  - sqrt(sqr(x5 - x1) + sqr(x6 - x2)) - objvar =L= 0;

e3..  - sqrt(sqr(x5 - x3) + sqr(x6 - x4)) - objvar =L= 0;

e4..  - sqrt(sqr(x7 - x1) + sqr(x8 - x2)) - objvar =L= 0;

e5..  - sqrt(sqr(x7 - x3) + sqr(x8 - x4)) - objvar =L= 0;

e6..  - sqrt(sqr(x7 - x5) + sqr(x8 - x6)) - objvar =L= 0;

e7..  - sqrt(sqr(x9 - x1) + sqr(x10 - x2)) - objvar =L= 0;

e8..  - sqrt(sqr(x9 - x3) + sqr(x10 - x4)) - objvar =L= 0;

e9..  - sqrt(sqr(x9 - x5) + sqr(x10 - x6)) - objvar =L= 0;

e10..  - sqrt(sqr(x9 - x7) + sqr(x10 - x8)) - objvar =L= 0;

e11..  - sqrt(sqr(x11 - x1) + sqr(x12 - x2)) - objvar =L= 0;

e12..  - sqrt(sqr(x11 - x3) + sqr(x12 - x4)) - objvar =L= 0;

e13..  - sqrt(sqr(x11 - x5) + sqr(x12 - x6)) - objvar =L= 0;

e14..  - sqrt(sqr(x11 - x7) + sqr(x12 - x8)) - objvar =L= 0;

e15..  - sqrt(sqr(x11 - x9) + sqr(x12 - x10)) - objvar =L= 0;

e16..  - sqrt(sqr(x13 - x1) + sqr(x14 - x2)) - objvar =L= 0;

e17..  - sqrt(sqr(x13 - x3) + sqr(x14 - x4)) - objvar =L= 0;

e18..  - sqrt(sqr(x13 - x5) + sqr(x14 - x6)) - objvar =L= 0;

e19..  - sqrt(sqr(x13 - x7) + sqr(x14 - x8)) - objvar =L= 0;

e20..  - sqrt(sqr(x13 - x9) + sqr(x14 - x10)) - objvar =L= 0;

e21..  - sqrt(sqr(x13 - x11) + sqr(x14 - x12)) - objvar =L= 0;

e22..  - sqrt(sqr(x15 - x1) + sqr(x16 - x2)) - objvar =L= 0;

e23..  - sqrt(sqr(x15 - x3) + sqr(x16 - x4)) - objvar =L= 0;

e24..  - sqrt(sqr(x15 - x5) + sqr(x16 - x6)) - objvar =L= 0;

e25..  - sqrt(sqr(x15 - x7) + sqr(x16 - x8)) - objvar =L= 0;

e26..  - sqrt(sqr(x15 - x9) + sqr(x16 - x10)) - objvar =L= 0;

e27..  - sqrt(sqr(x15 - x11) + sqr(x16 - x12)) - objvar =L= 0;

e28..  - sqrt(sqr(x15 - x13) + sqr(x16 - x14)) - objvar =L= 0;

e29..  - sqrt(sqr(x17 - x1) + sqr(x18 - x2)) - objvar =L= 0;

e30..  - sqrt(sqr(x17 - x3) + sqr(x18 - x4)) - objvar =L= 0;

e31..  - sqrt(sqr(x17 - x5) + sqr(x18 - x6)) - objvar =L= 0;

e32..  - sqrt(sqr(x17 - x7) + sqr(x18 - x8)) - objvar =L= 0;

e33..  - sqrt(sqr(x17 - x9) + sqr(x18 - x10)) - objvar =L= 0;

e34..  - sqrt(sqr(x17 - x11) + sqr(x18 - x12)) - objvar =L= 0;

e35..  - sqrt(sqr(x17 - x13) + sqr(x18 - x14)) - objvar =L= 0;

e36..  - sqrt(sqr(x17 - x15) + sqr(x18 - x16)) - objvar =L= 0;

e37..  - sqrt(sqr(x19 - x1) + sqr(x20 - x2)) - objvar =L= 0;

e38..  - sqrt(sqr(x19 - x3) + sqr(x20 - x4)) - objvar =L= 0;

e39..  - sqrt(sqr(x19 - x5) + sqr(x20 - x6)) - objvar =L= 0;

e40..  - sqrt(sqr(x19 - x7) + sqr(x20 - x8)) - objvar =L= 0;

e41..  - sqrt(sqr(x19 - x9) + sqr(x20 - x10)) - objvar =L= 0;

e42..  - sqrt(sqr(x19 - x11) + sqr(x20 - x12)) - objvar =L= 0;

e43..  - sqrt(sqr(x19 - x13) + sqr(x20 - x14)) - objvar =L= 0;

e44..  - sqrt(sqr(x19 - x15) + sqr(x20 - x16)) - objvar =L= 0;

e45..  - sqrt(sqr(x19 - x17) + sqr(x20 - x18)) - objvar =L= 0;

e46..  - sqrt(sqr(x21 - x1) + sqr(x22 - x2)) - objvar =L= 0;

e47..  - sqrt(sqr(x21 - x3) + sqr(x22 - x4)) - objvar =L= 0;

e48..  - sqrt(sqr(x21 - x5) + sqr(x22 - x6)) - objvar =L= 0;

e49..  - sqrt(sqr(x21 - x7) + sqr(x22 - x8)) - objvar =L= 0;

e50..  - sqrt(sqr(x21 - x9) + sqr(x22 - x10)) - objvar =L= 0;

e51..  - sqrt(sqr(x21 - x11) + sqr(x22 - x12)) - objvar =L= 0;

e52..  - sqrt(sqr(x21 - x13) + sqr(x22 - x14)) - objvar =L= 0;

e53..  - sqrt(sqr(x21 - x15) + sqr(x22 - x16)) - objvar =L= 0;

e54..  - sqrt(sqr(x21 - x17) + sqr(x22 - x18)) - objvar =L= 0;

e55..  - sqrt(sqr(x21 - x19) + sqr(x22 - x20)) - objvar =L= 0;

e56..  - sqrt(sqr(x23 - x1) + sqr(x24 - x2)) - objvar =L= 0;

e57..  - sqrt(sqr(x23 - x3) + sqr(x24 - x4)) - objvar =L= 0;

e58..  - sqrt(sqr(x23 - x5) + sqr(x24 - x6)) - objvar =L= 0;

e59..  - sqrt(sqr(x23 - x7) + sqr(x24 - x8)) - objvar =L= 0;

e60..  - sqrt(sqr(x23 - x9) + sqr(x24 - x10)) - objvar =L= 0;

e61..  - sqrt(sqr(x23 - x11) + sqr(x24 - x12)) - objvar =L= 0;

e62..  - sqrt(sqr(x23 - x13) + sqr(x24 - x14)) - objvar =L= 0;

e63..  - sqrt(sqr(x23 - x15) + sqr(x24 - x16)) - objvar =L= 0;

e64..  - sqrt(sqr(x23 - x17) + sqr(x24 - x18)) - objvar =L= 0;

e65..  - sqrt(sqr(x23 - x19) + sqr(x24 - x20)) - objvar =L= 0;

e66..  - sqrt(sqr(x23 - x21) + sqr(x24 - x22)) - objvar =L= 0;

e67..  - sqrt(sqr(x25 - x1) + sqr(x26 - x2)) - objvar =L= 0;

e68..  - sqrt(sqr(x25 - x3) + sqr(x26 - x4)) - objvar =L= 0;

e69..  - sqrt(sqr(x25 - x5) + sqr(x26 - x6)) - objvar =L= 0;

e70..  - sqrt(sqr(x25 - x7) + sqr(x26 - x8)) - objvar =L= 0;

e71..  - sqrt(sqr(x25 - x9) + sqr(x26 - x10)) - objvar =L= 0;

e72..  - sqrt(sqr(x25 - x11) + sqr(x26 - x12)) - objvar =L= 0;

e73..  - sqrt(sqr(x25 - x13) + sqr(x26 - x14)) - objvar =L= 0;

e74..  - sqrt(sqr(x25 - x15) + sqr(x26 - x16)) - objvar =L= 0;

e75..  - sqrt(sqr(x25 - x17) + sqr(x26 - x18)) - objvar =L= 0;

e76..  - sqrt(sqr(x25 - x19) + sqr(x26 - x20)) - objvar =L= 0;

e77..  - sqrt(sqr(x25 - x21) + sqr(x26 - x22)) - objvar =L= 0;

e78..  - sqrt(sqr(x25 - x23) + sqr(x26 - x24)) - objvar =L= 0;

* set non default bounds

x1.fx = 0; 
x2.fx = 0; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 
x7.up = 1; 
x8.up = 1; 
x9.up = 1; 
x10.up = 1; 
x11.up = 1; 
x12.up = 1; 
x13.up = 1; 
x14.up = 1; 
x15.up = 1; 
x16.up = 1; 
x17.up = 1; 
x18.up = 1; 
x19.up = 1; 
x20.up = 1; 
x21.up = 1; 
x22.up = 1; 
x23.up = 1; 
x24.up = 1; 
x25.up = 1; 
x26.up = 1; 

* set non default levels

x3.l = 0.550375356; 
x4.l = 0.301137904; 
x5.l = 0.292212117; 
x6.l = 0.224052867; 
x7.l = 0.349830504; 
x8.l = 0.856270347; 
x9.l = 0.067113723; 
x10.l = 0.500210669; 
x11.l = 0.998117627; 
x12.l = 0.578733378; 
x13.l = 0.991133039; 
x14.l = 0.762250467; 
x15.l = 0.130692483; 
x16.l = 0.639718759; 
x17.l = 0.159517864; 
x18.l = 0.250080533; 
x19.l = 0.668928609; 
x20.l = 0.435356381; 
x21.l = 0.359700266; 
x22.l = 0.351441368; 
x23.l = 0.13149159; 
x24.l = 0.150101788; 
x25.l = 0.58911365; 
x26.l = 0.830892812; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
