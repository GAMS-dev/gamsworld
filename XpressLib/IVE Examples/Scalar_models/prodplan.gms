*  LP written by GAMS Convert at 01/17/08 23:45:25
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         65       41        0       24        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        107      107        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        337      337        0        0
*
*  Solve m using LP maximizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101
          ,x102,x103,x104,x105,x106;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65;


e1..  - x1 + x17 - x57 + x58 =E= 0;

e2..  - x2 + x18 - x58 + x59 =E= 0;

e3..  - x3 + x19 - x59 + x60 =E= 0;

e4..  - x4 + x20 - x60 + x61 =E= 0;

e5..  - x5 + x21 - x62 + x63 =E= 0;

e6..  - x6 + x22 - x63 + x64 =E= 0;

e7..  - x7 + x23 - x64 + x65 =E= 0;

e8..  - x8 + x24 - x65 + x66 =E= 0;

e9..  - x9 + x25 - x67 + x68 =E= 0;

e10..  - x10 + x26 - x68 + x69 =E= 0;

e11..  - x11 + x27 - x69 + x70 =E= 0;

e12..  - x12 + x28 - x70 + x71 =E= 0;

e13..  - x13 + x29 - x72 + x73 =E= 0;

e14..  - x14 + x30 - x73 + x74 =E= 0;

e15..  - x15 + x31 - x74 + x75 =E= 0;

e16..  - x16 + x32 - x75 + x76 =E= 0;

e17..    0.8*x1 + x9 - x33 - x77 + x78 =E= 0;

e18..    0.8*x2 + x10 - x34 - x78 + x79 =E= 0;

e19..    0.8*x3 + x11 - x35 - x79 + x80 =E= 0;

e20..    0.8*x4 + x12 - x36 - x80 + x81 =E= 0;

e21..    0.8*x5 + x13 - x37 - x82 + x83 =E= 0;

e22..    0.8*x6 + x14 - x38 - x83 + x84 =E= 0;

e23..    0.8*x7 + x15 - x39 - x84 + x85 =E= 0;

e24..    0.8*x8 + x16 - x40 - x85 + x86 =E= 0;

e25..    0.2*x1 + 0.3*x9 - x41 - x87 + x88 =E= 0;

e26..    0.2*x2 + 0.3*x10 - x42 - x88 + x89 =E= 0;

e27..    0.2*x3 + 0.3*x11 - x43 - x89 + x90 =E= 0;

e28..    0.2*x4 + 0.3*x12 - x44 - x90 + x91 =E= 0;

e29..    0.2*x5 + 0.3*x13 - x45 - x92 + x93 =E= 0;

e30..    0.2*x6 + 0.3*x14 - x46 - x93 + x94 =E= 0;

e31..    0.2*x7 + 0.3*x15 - x47 - x94 + x95 =E= 0;

e32..    0.2*x8 + 0.3*x16 - x48 - x95 + x96 =E= 0;

e33..    0.5*x1 + 0.4*x9 - x49 - x97 + x98 =E= 0;

e34..    0.5*x2 + 0.4*x10 - x50 - x98 + x99 =E= 0;

e35..    0.5*x3 + 0.4*x11 - x51 - x99 + x100 =E= 0;

e36..    0.5*x4 + 0.4*x12 - x52 - x100 + x101 =E= 0;

e37..    0.5*x5 + 0.4*x13 - x53 - x102 + x103 =E= 0;

e38..    0.5*x6 + 0.4*x14 - x54 - x103 + x104 =E= 0;

e39..    0.5*x7 + 0.4*x15 - x55 - x104 + x105 =E= 0;

e40..    0.5*x8 + 0.4*x16 - x56 - x105 + x106 =E= 0;

e41..    x1 + x9 =L= 400;

e42..    x2 + x10 =L= 400;

e43..    x3 + x11 =L= 400;

e44..    x4 + x12 =L= 400;

e45..    x5 + x13 =L= 500;

e46..    x6 + x14 =L= 500;

e47..    x7 + x15 =L= 500;

e48..    x8 + x16 =L= 500;

e49..    x17 + x21 =L= 650;

e50..    x18 + x22 =L= 600;

e51..    x19 + x23 =L= 500;

e52..    x20 + x24 =L= 400;

e53..    x25 + x29 =L= 600;

e54..    x26 + x30 =L= 500;

e55..    x27 + x31 =L= 300;

e56..    x28 + x32 =L= 250;

e57..    x78 + x88 + x98 =L= 300;

e58..    x79 + x89 + x99 =L= 300;

e59..    x80 + x90 + x100 =L= 300;

e60..    x81 + x91 + x101 =L= 300;

e61..    x83 + x93 + x103 =L= 300;

e62..    x84 + x94 + x104 =L= 300;

e63..    x85 + x95 + x105 =L= 300;

e64..    x86 + x96 + x106 =L= 300;

e65..    150*x1 + 150*x2 + 150*x3 + 150*x4 + 153*x5 + 153*x6 + 153*x7 + 153*x8
       + 75*x9 + 75*x10 + 75*x11 + 75*x12 + 68*x13 + 68*x14 + 68*x15 + 68*x16
       - 400*x17 - 380*x18 - 405*x19 - 350*x20 - 400*x21 - 380*x22 - 405*x23
       - 350*x24 - 410*x25 - 397*x26 - 412*x27 - 397*x28 - 410*x29 - 397*x30
       - 412*x31 - 397*x32 + 110*x33 + 108*x34 + 107*x35 + 111*x36 + 110*x37
       + 108*x38 + 107*x39 + 111*x40 + 60*x41 + 59*x42 + 58*x43 + 58*x44
       + 60*x45 + 59*x46 + 58*x47 + 58*x48 + 200*x49 + 195*x50 + 198*x51
       + 200*x52 + 200*x53 + 195*x54 + 198*x55 + 200*x56 + 2*x58 + 2*x59
       + 2*x60 + 2*x61 + 2*x63 + 2*x64 + 2*x65 + 2*x66 + 2*x68 + 2*x69 + 2*x70
       + 2*x71 + 2*x73 + 2*x74 + 2*x75 + 2*x76 + x78 + x79 + x80 + x81 + x83
       + x84 + x85 + x86 + x88 + x89 + x90 + x91 + x93 + x94 + x95 + x96 + x98
       + x99 + x100 + x101 + x103 + x104 + x105 + x106 + objvar =E= 0;

* set non default bounds

x57.up = 50; 
x62.up = 100; 
x67.up = 50; 
x72.up = 50; 
x77.up = 100; 
x82.up = 150; 
x87.up = 30; 
x92.up = 20; 
x97.up = 50; 
x102.up = 100; 

* set non default levels

x57.l = 50; 
x62.l = 100; 
x67.l = 50; 
x72.l = 50; 
x77.l = 100; 
x82.l = 150; 
x87.l = 30; 
x92.l = 20; 
x97.l = 50; 
x102.l = 100; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP maximizing objvar;
