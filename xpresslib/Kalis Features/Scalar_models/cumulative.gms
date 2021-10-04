*  DNLP written by GAMS Convert at 01/14/09 03:34:43
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*        105       80        5       20        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         86       86        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        395      245      150        0
*
*  Solve m using DNLP minimizing objvar;
*


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105;


e1..  - x76 + x81 =E= 1;

e2..  - x77 + x82 =E= 2;

e3..  - x78 + x83 =E= 3;

e4..  - x79 + x84 =E= 4;

e5..  - x80 + x85 =E= 5;

e6..  - sign(1 + sign(2 - sqr(sign((-1) + x76) + sign((-2) + x81)))) + x1
      =E= 0;

e7..  - sign(1 + sign(2 - sqr(sign((-2) + x76) + sign((-3) + x81)))) + x2
      =E= 0;

e8..  - sign(1 + sign(2 - sqr(sign((-3) + x76) + sign((-4) + x81)))) + x3
      =E= 0;

e9..  - sign(1 + sign(2 - sqr(sign((-4) + x76) + sign((-5) + x81)))) + x4
      =E= 0;

e10..  - sign(1 + sign(2 - sqr(sign((-5) + x76) + sign((-6) + x81)))) + x5
       =E= 0;

e11..  - sign(1 + sign(2 - sqr(sign((-6) + x76) + sign((-7) + x81)))) + x6
       =E= 0;

e12..  - sign(1 + sign(2 - sqr(sign((-7) + x76) + sign((-8) + x81)))) + x7
       =E= 0;

e13..  - sign(1 + sign(2 - sqr(sign((-8) + x76) + sign((-9) + x81)))) + x8
       =E= 0;

e14..  - sign(1 + sign(2 - sqr(sign((-9) + x76) + sign((-10) + x81)))) + x9
       =E= 0;

e15..  - sign(1 + sign(2 - sqr(sign((-10) + x76) + sign((-11) + x81)))) + x10
       =E= 0;

e16..  - sign(1 + sign(2 - sqr(sign((-11) + x76) + sign((-12) + x81)))) + x11
       =E= 0;

e17..  - sign(1 + sign(2 - sqr(sign((-12) + x76) + sign((-13) + x81)))) + x12
       =E= 0;

e18..  - sign(1 + sign(2 - sqr(sign((-13) + x76) + sign((-14) + x81)))) + x13
       =E= 0;

e19..  - sign(1 + sign(2 - sqr(sign((-14) + x76) + sign((-15) + x81)))) + x14
       =E= 0;

e20..  - sign(1 + sign(2 - sqr(sign((-15) + x76) + sign((-16) + x81)))) + x15
       =E= 0;

e21..  - sign(1 + sign(2 - sqr(sign((-1) + x77) + sign((-2) + x82)))) + x16
       =E= 0;

e22..  - sign(1 + sign(2 - sqr(sign((-2) + x77) + sign((-3) + x82)))) + x17
       =E= 0;

e23..  - sign(1 + sign(2 - sqr(sign((-3) + x77) + sign((-4) + x82)))) + x18
       =E= 0;

e24..  - sign(1 + sign(2 - sqr(sign((-4) + x77) + sign((-5) + x82)))) + x19
       =E= 0;

e25..  - sign(1 + sign(2 - sqr(sign((-5) + x77) + sign((-6) + x82)))) + x20
       =E= 0;

e26..  - sign(1 + sign(2 - sqr(sign((-6) + x77) + sign((-7) + x82)))) + x21
       =E= 0;

e27..  - sign(1 + sign(2 - sqr(sign((-7) + x77) + sign((-8) + x82)))) + x22
       =E= 0;

e28..  - sign(1 + sign(2 - sqr(sign((-8) + x77) + sign((-9) + x82)))) + x23
       =E= 0;

e29..  - sign(1 + sign(2 - sqr(sign((-9) + x77) + sign((-10) + x82)))) + x24
       =E= 0;

e30..  - sign(1 + sign(2 - sqr(sign((-10) + x77) + sign((-11) + x82)))) + x25
       =E= 0;

e31..  - sign(1 + sign(2 - sqr(sign((-11) + x77) + sign((-12) + x82)))) + x26
       =E= 0;

e32..  - sign(1 + sign(2 - sqr(sign((-12) + x77) + sign((-13) + x82)))) + x27
       =E= 0;

e33..  - sign(1 + sign(2 - sqr(sign((-13) + x77) + sign((-14) + x82)))) + x28
       =E= 0;

e34..  - sign(1 + sign(2 - sqr(sign((-14) + x77) + sign((-15) + x82)))) + x29
       =E= 0;

e35..  - sign(1 + sign(2 - sqr(sign((-15) + x77) + sign((-16) + x82)))) + x30
       =E= 0;

e36..  - sign(1 + sign(2 - sqr(sign((-1) + x78) + sign((-2) + x83)))) + x31
       =E= 0;

e37..  - sign(1 + sign(2 - sqr(sign((-2) + x78) + sign((-3) + x83)))) + x32
       =E= 0;

e38..  - sign(1 + sign(2 - sqr(sign((-3) + x78) + sign((-4) + x83)))) + x33
       =E= 0;

e39..  - sign(1 + sign(2 - sqr(sign((-4) + x78) + sign((-5) + x83)))) + x34
       =E= 0;

e40..  - sign(1 + sign(2 - sqr(sign((-5) + x78) + sign((-6) + x83)))) + x35
       =E= 0;

e41..  - sign(1 + sign(2 - sqr(sign((-6) + x78) + sign((-7) + x83)))) + x36
       =E= 0;

e42..  - sign(1 + sign(2 - sqr(sign((-7) + x78) + sign((-8) + x83)))) + x37
       =E= 0;

e43..  - sign(1 + sign(2 - sqr(sign((-8) + x78) + sign((-9) + x83)))) + x38
       =E= 0;

e44..  - sign(1 + sign(2 - sqr(sign((-9) + x78) + sign((-10) + x83)))) + x39
       =E= 0;

e45..  - sign(1 + sign(2 - sqr(sign((-10) + x78) + sign((-11) + x83)))) + x40
       =E= 0;

e46..  - sign(1 + sign(2 - sqr(sign((-11) + x78) + sign((-12) + x83)))) + x41
       =E= 0;

e47..  - sign(1 + sign(2 - sqr(sign((-12) + x78) + sign((-13) + x83)))) + x42
       =E= 0;

e48..  - sign(1 + sign(2 - sqr(sign((-13) + x78) + sign((-14) + x83)))) + x43
       =E= 0;

e49..  - sign(1 + sign(2 - sqr(sign((-14) + x78) + sign((-15) + x83)))) + x44
       =E= 0;

e50..  - sign(1 + sign(2 - sqr(sign((-15) + x78) + sign((-16) + x83)))) + x45
       =E= 0;

e51..  - sign(1 + sign(2 - sqr(sign((-1) + x79) + sign((-2) + x84)))) + x46
       =E= 0;

e52..  - sign(1 + sign(2 - sqr(sign((-2) + x79) + sign((-3) + x84)))) + x47
       =E= 0;

e53..  - sign(1 + sign(2 - sqr(sign((-3) + x79) + sign((-4) + x84)))) + x48
       =E= 0;

e54..  - sign(1 + sign(2 - sqr(sign((-4) + x79) + sign((-5) + x84)))) + x49
       =E= 0;

e55..  - sign(1 + sign(2 - sqr(sign((-5) + x79) + sign((-6) + x84)))) + x50
       =E= 0;

e56..  - sign(1 + sign(2 - sqr(sign((-6) + x79) + sign((-7) + x84)))) + x51
       =E= 0;

e57..  - sign(1 + sign(2 - sqr(sign((-7) + x79) + sign((-8) + x84)))) + x52
       =E= 0;

e58..  - sign(1 + sign(2 - sqr(sign((-8) + x79) + sign((-9) + x84)))) + x53
       =E= 0;

e59..  - sign(1 + sign(2 - sqr(sign((-9) + x79) + sign((-10) + x84)))) + x54
       =E= 0;

e60..  - sign(1 + sign(2 - sqr(sign((-10) + x79) + sign((-11) + x84)))) + x55
       =E= 0;

e61..  - sign(1 + sign(2 - sqr(sign((-11) + x79) + sign((-12) + x84)))) + x56
       =E= 0;

e62..  - sign(1 + sign(2 - sqr(sign((-12) + x79) + sign((-13) + x84)))) + x57
       =E= 0;

e63..  - sign(1 + sign(2 - sqr(sign((-13) + x79) + sign((-14) + x84)))) + x58
       =E= 0;

e64..  - sign(1 + sign(2 - sqr(sign((-14) + x79) + sign((-15) + x84)))) + x59
       =E= 0;

e65..  - sign(1 + sign(2 - sqr(sign((-15) + x79) + sign((-16) + x84)))) + x60
       =E= 0;

e66..  - sign(1 + sign(2 - sqr(sign((-1) + x80) + sign((-2) + x85)))) + x61
       =E= 0;

e67..  - sign(1 + sign(2 - sqr(sign((-2) + x80) + sign((-3) + x85)))) + x62
       =E= 0;

e68..  - sign(1 + sign(2 - sqr(sign((-3) + x80) + sign((-4) + x85)))) + x63
       =E= 0;

e69..  - sign(1 + sign(2 - sqr(sign((-4) + x80) + sign((-5) + x85)))) + x64
       =E= 0;

e70..  - sign(1 + sign(2 - sqr(sign((-5) + x80) + sign((-6) + x85)))) + x65
       =E= 0;

e71..  - sign(1 + sign(2 - sqr(sign((-6) + x80) + sign((-7) + x85)))) + x66
       =E= 0;

e72..  - sign(1 + sign(2 - sqr(sign((-7) + x80) + sign((-8) + x85)))) + x67
       =E= 0;

e73..  - sign(1 + sign(2 - sqr(sign((-8) + x80) + sign((-9) + x85)))) + x68
       =E= 0;

e74..  - sign(1 + sign(2 - sqr(sign((-9) + x80) + sign((-10) + x85)))) + x69
       =E= 0;

e75..  - sign(1 + sign(2 - sqr(sign((-10) + x80) + sign((-11) + x85)))) + x70
       =E= 0;

e76..  - sign(1 + sign(2 - sqr(sign((-11) + x80) + sign((-12) + x85)))) + x71
       =E= 0;

e77..  - sign(1 + sign(2 - sqr(sign((-12) + x80) + sign((-13) + x85)))) + x72
       =E= 0;

e78..  - sign(1 + sign(2 - sqr(sign((-13) + x80) + sign((-14) + x85)))) + x73
       =E= 0;

e79..  - sign(1 + sign(2 - sqr(sign((-14) + x80) + sign((-15) + x85)))) + x74
       =E= 0;

e80..  - sign(1 + sign(2 - sqr(sign((-15) + x80) + sign((-16) + x85)))) + x75
       =E= 0;

e81..    x1 + x16 + x31 + x46 + x61 =L= 2;

e82..    x2 + x17 + x32 + x47 + x62 =L= 2;

e83..    x3 + x18 + x33 + x48 + x63 =L= 2;

e84..    x4 + x19 + x34 + x49 + x64 =L= 2;

e85..    x5 + x20 + x35 + x50 + x65 =L= 2;

e86..    x6 + x21 + x36 + x51 + x66 =L= 2;

e87..    x7 + x22 + x37 + x52 + x67 =L= 2;

e88..    x8 + x23 + x38 + x53 + x68 =L= 2;

e89..    x9 + x24 + x39 + x54 + x69 =L= 2;

e90..    x10 + x25 + x40 + x55 + x70 =L= 2;

e91..    x11 + x26 + x41 + x56 + x71 =L= 2;

e92..    x12 + x27 + x42 + x57 + x72 =L= 2;

e93..    x13 + x28 + x43 + x58 + x73 =L= 2;

e94..    x14 + x29 + x44 + x59 + x74 =L= 2;

e95..    x15 + x30 + x45 + x60 + x75 =L= 2;

e96..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13
       + x14 + x15 =L= 1;

e97..    x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24 + x25 + x26 + x27
       + x28 + x29 + x30 =L= 2;

e98..    x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x40 + x41 + x42
       + x43 + x44 + x45 =L= 3;

e99..    x46 + x47 + x48 + x49 + x50 + x51 + x52 + x53 + x54 + x55 + x56 + x57
       + x58 + x59 + x60 =L= 4;

e100..    x61 + x62 + x63 + x64 + x65 + x66 + x67 + x68 + x69 + x70 + x71 + x72
        + x73 + x74 + x75 =L= 5;

e101..  - x81 + objvar =G= 0;

e102..  - x82 + objvar =G= 0;

e103..  - x83 + objvar =G= 0;

e104..  - x84 + objvar =G= 0;

e105..  - x85 + objvar =G= 0;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
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
x27.up = 1; 
x28.up = 1; 
x29.up = 1; 
x30.up = 1; 
x31.up = 1; 
x32.up = 1; 
x33.up = 1; 
x34.up = 1; 
x35.up = 1; 
x36.up = 1; 
x37.up = 1; 
x38.up = 1; 
x39.up = 1; 
x40.up = 1; 
x41.up = 1; 
x42.up = 1; 
x43.up = 1; 
x44.up = 1; 
x45.up = 1; 
x46.up = 1; 
x47.up = 1; 
x48.up = 1; 
x49.up = 1; 
x50.up = 1; 
x51.up = 1; 
x52.up = 1; 
x53.up = 1; 
x54.up = 1; 
x55.up = 1; 
x56.up = 1; 
x57.up = 1; 
x58.up = 1; 
x59.up = 1; 
x60.up = 1; 
x61.up = 1; 
x62.up = 1; 
x63.up = 1; 
x64.up = 1; 
x65.up = 1; 
x66.up = 1; 
x67.up = 1; 
x68.up = 1; 
x69.up = 1; 
x70.up = 1; 
x71.up = 1; 
x72.up = 1; 
x73.up = 1; 
x74.up = 1; 
x75.up = 1; 
x76.lo = 1; x76.up = 15; 
x77.lo = 1; x77.up = 15; 
x78.lo = 5; x78.up = 15; 
x79.lo = 1; x79.up = 15; 
x80.lo = 4; x80.up = 15; 
x81.lo = 1; x81.up = 15; 
x82.lo = 1; x82.up = 15; 
x83.lo = 1; x83.up = 15; 
x84.lo = 1; x84.up = 15; 
x85.lo = 1; x85.up = 15; 

* set non default levels

x76.l = 1; 
x77.l = 1; 
x78.l = 5; 
x79.l = 1; 
x80.l = 4; 
x81.l = 1; 
x82.l = 1; 
x83.l = 1; 
x84.l = 1; 
x85.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
