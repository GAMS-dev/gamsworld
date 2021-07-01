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

*  NLP written by GAMS Convert at 03/28/07 20:24:10
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         34       31        0        3        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         73       73        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        217      217        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34;


e1..    0.005*x1 + 0.00714285714285714*x4 + 0.00625*x7 =L= 20;

e2..    0.00526315789473684*x2 + 0.00769230769230769*x5 + 0.00625*x8 =L= 15;

e3..    0.00434782608695652*x3 + 0.00625*x6 + 0.00588235294117647*x9 =L= 20;

e4..  - x1 + x10 + x13 + x16 + x19 + x22 + x25 + x28 =E= 0;

e5..  - x4 + x11 + x14 + x17 + x20 + x23 + x26 + x29 =E= 0;

e6..  - x7 + x12 + x15 + x18 + x21 + x24 + x27 + x30 =E= 0;

e7..  - x2 + x31 + x34 + x37 + x40 + x43 + x46 + x49 =E= 0;

e8..  - x5 + x32 + x35 + x38 + x41 + x44 + x47 + x50 =E= 0;

e9..  - x8 + x33 + x36 + x39 + x42 + x45 + x48 + x51 =E= 0;

e10..  - x3 + x52 + x55 + x58 + x61 + x64 + x67 + x70 =E= 0;

e11..  - x6 + x53 + x56 + x59 + x62 + x65 + x68 + x71 =E= 0;

e12..  - x9 + x54 + x57 + x60 + x63 + x66 + x69 + x72 =E= 0;

e13..    x10 + x31 + x52 =E= 300;

e14..    x11 + x32 + x53 =E= 500;

e15..    x12 + x33 + x54 =E= 100;

e16..    x13 + x34 + x55 =E= 300;

e17..    x14 + x35 + x56 =E= 750;

e18..    x15 + x36 + x57 =E= 100;

e19..    x16 + x37 + x58 =E= 100;

e20..    x17 + x38 + x59 =E= 400;

e21..    x18 + x39 + x60 =E= 0;

e22..    x19 + x40 + x61 =E= 75;

e23..    x20 + x41 + x62 =E= 250;

e24..    x21 + x42 + x63 =E= 50;

e25..    x22 + x43 + x64 =E= 650;

e26..    x23 + x44 + x65 =E= 950;

e27..    x24 + x45 + x66 =E= 200;

e28..    x25 + x46 + x67 =E= 225;

e29..    x26 + x47 + x68 =E= 850;

e30..    x27 + x48 + x69 =E= 100;

e31..    x28 + x49 + x70 =E= 250;

e32..    x29 + x50 + x71 =E= 500;

e33..    x30 + x51 + x72 =E= 250;

e34..  - 180*x1 - 190*x2 - 190*x3 - 170*x4 - 170*x5 - 180*x6 - 180*x7 - 185*x8
       - 185*x9 - 30*x10 - 39*x11 - 41*x12 - 10*x13 - 14*x14 - 15*x15 - 8*x16
       - 11*x17 - 12*x18 - 10*x19 - 14*x20 - 16*x21 - 11*x22 - 16*x23 - 17*x24
       - 71*x25 - 82*x26 - 86*x27 - 6*x28 - 8*x29 - 8*x30 - 22*x31 - 27*x32
       - 29*x33 - 7*x34 - 9*x35 - 9*x36 - 10*x37 - 12*x38 - 13*x39 - 7*x40
       - 9*x41 - 9*x42 - 21*x43 - 26*x44 - 28*x45 - 82*x46 - 95*x47 - 99*x48
       - 13*x49 - 17*x50 - 18*x51 - 19*x52 - 24*x53 - 26*x54 - 11*x55 - 14*x56
       - 14*x57 - 12*x58 - 17*x59 - 17*x60 - 10*x61 - 13*x62 - 13*x63 - 25*x64
       - 28*x65 - 31*x66 - 83*x67 - 99*x68 - 104*x69 - 15*x70 - 20*x71 - 20*x72
       + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;
