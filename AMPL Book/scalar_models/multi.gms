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

*  LP written by GAMS Convert at 03/28/07 20:22:52
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         52       31        0       21        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         64       64        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        253      253        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52;


e1..    x1 + x4 + x7 + x10 + x13 + x16 + x19 =E= 400;

e2..    x2 + x5 + x8 + x11 + x14 + x17 + x20 =E= 800;

e3..    x3 + x6 + x9 + x12 + x15 + x18 + x21 =E= 200;

e4..    x22 + x25 + x28 + x31 + x34 + x37 + x40 =E= 700;

e5..    x23 + x26 + x29 + x32 + x35 + x38 + x41 =E= 1600;

e6..    x24 + x27 + x30 + x33 + x36 + x39 + x42 =E= 300;

e7..    x43 + x46 + x49 + x52 + x55 + x58 + x61 =E= 800;

e8..    x44 + x47 + x50 + x53 + x56 + x59 + x62 =E= 1800;

e9..    x45 + x48 + x51 + x54 + x57 + x60 + x63 =E= 300;

e10..    x1 + x22 + x43 =E= 300;

e11..    x2 + x23 + x44 =E= 500;

e12..    x3 + x24 + x45 =E= 100;

e13..    x4 + x25 + x46 =E= 300;

e14..    x5 + x26 + x47 =E= 750;

e15..    x6 + x27 + x48 =E= 100;

e16..    x7 + x28 + x49 =E= 100;

e17..    x8 + x29 + x50 =E= 400;

e18..    x9 + x30 + x51 =E= 0;

e19..    x10 + x31 + x52 =E= 75;

e20..    x11 + x32 + x53 =E= 250;

e21..    x12 + x33 + x54 =E= 50;

e22..    x13 + x34 + x55 =E= 650;

e23..    x14 + x35 + x56 =E= 950;

e24..    x15 + x36 + x57 =E= 200;

e25..    x16 + x37 + x58 =E= 225;

e26..    x17 + x38 + x59 =E= 850;

e27..    x18 + x39 + x60 =E= 100;

e28..    x19 + x40 + x61 =E= 250;

e29..    x20 + x41 + x62 =E= 500;

e30..    x21 + x42 + x63 =E= 250;

e31..    x1 + x2 + x3 =L= 625;

e32..    x4 + x5 + x6 =L= 625;

e33..    x7 + x8 + x9 =L= 625;

e34..    x10 + x11 + x12 =L= 625;

e35..    x13 + x14 + x15 =L= 625;

e36..    x16 + x17 + x18 =L= 625;

e37..    x19 + x20 + x21 =L= 625;

e38..    x22 + x23 + x24 =L= 625;

e39..    x25 + x26 + x27 =L= 625;

e40..    x28 + x29 + x30 =L= 625;

e41..    x31 + x32 + x33 =L= 625;

e42..    x34 + x35 + x36 =L= 625;

e43..    x37 + x38 + x39 =L= 625;

e44..    x40 + x41 + x42 =L= 625;

e45..    x43 + x44 + x45 =L= 625;

e46..    x46 + x47 + x48 =L= 625;

e47..    x49 + x50 + x51 =L= 625;

e48..    x52 + x53 + x54 =L= 625;

e49..    x55 + x56 + x57 =L= 625;

e50..    x58 + x59 + x60 =L= 625;

e51..    x61 + x62 + x63 =L= 625;

e52..  - 30*x1 - 39*x2 - 41*x3 - 10*x4 - 14*x5 - 15*x6 - 8*x7 - 11*x8 - 12*x9
       - 10*x10 - 14*x11 - 16*x12 - 11*x13 - 16*x14 - 17*x15 - 71*x16 - 82*x17
       - 86*x18 - 6*x19 - 8*x20 - 8*x21 - 22*x22 - 27*x23 - 29*x24 - 7*x25
       - 9*x26 - 9*x27 - 10*x28 - 12*x29 - 13*x30 - 7*x31 - 9*x32 - 9*x33
       - 21*x34 - 26*x35 - 28*x36 - 82*x37 - 95*x38 - 99*x39 - 13*x40 - 17*x41
       - 18*x42 - 19*x43 - 24*x44 - 26*x45 - 11*x46 - 14*x47 - 14*x48 - 12*x49
       - 17*x50 - 17*x51 - 10*x52 - 13*x53 - 13*x54 - 25*x55 - 28*x56 - 31*x57
       - 83*x58 - 99*x59 - 104*x60 - 15*x61 - 20*x62 - 20*x63 + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;
