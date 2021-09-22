$ontext
GAMS - General Algebraic Modeling System AMPL Book Model Library

Copyright (c) 2019 GAMS Software GmbH <support@gams.com>
Copyright (c) 2019 GAMS Development Corp. <support@gams.com>
Copyright (c) 2019 Andre Savitsky <andresavit@yandex.ru>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
$offtext

*  MIP written by GAMS Convert at 03/28/07 20:22:52
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         76       31       21       24        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         85       64       21        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        400      400        0        0
*
*  Solve m using MIP minimizing objvar;


Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19
          ,b20,b21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,objvar;

Positive Variables  x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35
          ,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52
          ,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69
          ,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84;

Binary Variables  b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17
          ,b18,b19,b20,b21;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76;


e1..    x22 + x25 + x28 + x31 + x34 + x37 + x40 =E= 400;

e2..    x23 + x26 + x29 + x32 + x35 + x38 + x41 =E= 800;

e3..    x24 + x27 + x30 + x33 + x36 + x39 + x42 =E= 200;

e4..    x43 + x46 + x49 + x52 + x55 + x58 + x61 =E= 700;

e5..    x44 + x47 + x50 + x53 + x56 + x59 + x62 =E= 1600;

e6..    x45 + x48 + x51 + x54 + x57 + x60 + x63 =E= 300;

e7..    x64 + x67 + x70 + x73 + x76 + x79 + x82 =E= 800;

e8..    x65 + x68 + x71 + x74 + x77 + x80 + x83 =E= 1800;

e9..    x66 + x69 + x72 + x75 + x78 + x81 + x84 =E= 300;

e10..    x22 + x43 + x64 =E= 300;

e11..    x23 + x44 + x65 =E= 500;

e12..    x24 + x45 + x66 =E= 100;

e13..    x25 + x46 + x67 =E= 300;

e14..    x26 + x47 + x68 =E= 750;

e15..    x27 + x48 + x69 =E= 100;

e16..    x28 + x49 + x70 =E= 100;

e17..    x29 + x50 + x71 =E= 400;

e18..    x30 + x51 + x72 =E= 0;

e19..    x31 + x52 + x73 =E= 75;

e20..    x32 + x53 + x74 =E= 250;

e21..    x33 + x54 + x75 =E= 50;

e22..    x34 + x55 + x76 =E= 650;

e23..    x35 + x56 + x77 =E= 950;

e24..    x36 + x57 + x78 =E= 200;

e25..    x37 + x58 + x79 =E= 225;

e26..    x38 + x59 + x80 =E= 850;

e27..    x39 + x60 + x81 =E= 100;

e28..    x40 + x61 + x82 =E= 250;

e29..    x41 + x62 + x83 =E= 500;

e30..    x42 + x63 + x84 =E= 250;

e31..  - 625*b1 + x22 + x23 + x24 =L= 0;

e32..  - 625*b2 + x25 + x26 + x27 =L= 0;

e33..  - 625*b3 + x28 + x29 + x30 =L= 0;

e34..  - 625*b4 + x31 + x32 + x33 =L= 0;

e35..  - 625*b5 + x34 + x35 + x36 =L= 0;

e36..  - 625*b6 + x37 + x38 + x39 =L= 0;

e37..  - 625*b7 + x40 + x41 + x42 =L= 0;

e38..  - 625*b8 + x43 + x44 + x45 =L= 0;

e39..  - 625*b9 + x46 + x47 + x48 =L= 0;

e40..  - 625*b10 + x49 + x50 + x51 =L= 0;

e41..  - 625*b11 + x52 + x53 + x54 =L= 0;

e42..  - 625*b12 + x55 + x56 + x57 =L= 0;

e43..  - 625*b13 + x58 + x59 + x60 =L= 0;

e44..  - 625*b14 + x61 + x62 + x63 =L= 0;

e45..  - 625*b15 + x64 + x65 + x66 =L= 0;

e46..  - 625*b16 + x67 + x68 + x69 =L= 0;

e47..  - 625*b17 + x70 + x71 + x72 =L= 0;

e48..  - 625*b18 + x73 + x74 + x75 =L= 0;

e49..  - 625*b19 + x76 + x77 + x78 =L= 0;

e50..  - 625*b20 + x79 + x80 + x81 =L= 0;

e51..  - 625*b21 + x82 + x83 + x84 =L= 0;

e52..  - 375*b1 + x22 + x23 + x24 =G= 0;

e53..  - 375*b2 + x25 + x26 + x27 =G= 0;

e54..  - 375*b3 + x28 + x29 + x30 =G= 0;

e55..  - 375*b4 + x31 + x32 + x33 =G= 0;

e56..  - 375*b5 + x34 + x35 + x36 =G= 0;

e57..  - 375*b6 + x37 + x38 + x39 =G= 0;

e58..  - 375*b7 + x40 + x41 + x42 =G= 0;

e59..  - 375*b8 + x43 + x44 + x45 =G= 0;

e60..  - 375*b9 + x46 + x47 + x48 =G= 0;

e61..  - 375*b10 + x49 + x50 + x51 =G= 0;

e62..  - 375*b11 + x52 + x53 + x54 =G= 0;

e63..  - 375*b12 + x55 + x56 + x57 =G= 0;

e64..  - 375*b13 + x58 + x59 + x60 =G= 0;

e65..  - 375*b14 + x61 + x62 + x63 =G= 0;

e66..  - 375*b15 + x64 + x65 + x66 =G= 0;

e67..  - 375*b16 + x67 + x68 + x69 =G= 0;

e68..  - 375*b17 + x70 + x71 + x72 =G= 0;

e69..  - 375*b18 + x73 + x74 + x75 =G= 0;

e70..  - 375*b19 + x76 + x77 + x78 =G= 0;

e71..  - 375*b20 + x79 + x80 + x81 =G= 0;

e72..  - 375*b21 + x82 + x83 + x84 =G= 0;

e73..    b1 + b2 + b3 + b4 + b5 + b6 + b7 =L= 5;

e74..    b8 + b9 + b10 + b11 + b12 + b13 + b14 =L= 5;

e75..    b15 + b16 + b17 + b18 + b19 + b20 + b21 =L= 5;

e76..  - 3000*b1 - 1200*b2 - 1200*b3 - 1200*b4 - 2500*b5 - 3500*b6 - 2500*b7
       - 2000*b8 - 1000*b9 - 1500*b10 - 1200*b11 - 2500*b12 - 3000*b13
       - 2200*b14 - 2000*b15 - 1200*b16 - 1500*b17 - 1500*b18 - 2500*b19
       - 3500*b20 - 2200*b21 - 30*x22 - 39*x23 - 41*x24 - 10*x25 - 14*x26
       - 15*x27 - 8*x28 - 11*x29 - 12*x30 - 10*x31 - 14*x32 - 16*x33 - 11*x34
       - 16*x35 - 17*x36 - 71*x37 - 82*x38 - 86*x39 - 6*x40 - 8*x41 - 8*x42
       - 22*x43 - 27*x44 - 29*x45 - 7*x46 - 9*x47 - 9*x48 - 10*x49 - 12*x50
       - 13*x51 - 7*x52 - 9*x53 - 9*x54 - 21*x55 - 26*x56 - 28*x57 - 82*x58
       - 95*x59 - 99*x60 - 13*x61 - 17*x62 - 18*x63 - 19*x64 - 24*x65 - 26*x66
       - 11*x67 - 14*x68 - 14*x69 - 12*x70 - 17*x71 - 17*x72 - 10*x73 - 13*x74
       - 13*x75 - 25*x76 - 28*x77 - 31*x78 - 83*x79 - 99*x80 - 104*x81 - 15*x82
       - 20*x83 - 20*x84 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using MIP minimizing objvar;
