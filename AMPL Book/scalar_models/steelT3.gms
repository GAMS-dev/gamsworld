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
*         13        9        0        4        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         49       49        0        0        0        0        0        0
*  FX     12       12        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         99       99        0        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    0.005*x1 + 0.00714285714285714*x5 =L= 40;

e2..    0.005*x2 + 0.00714285714285714*x6 =L= 40;

e3..    0.005*x3 + 0.00714285714285714*x7 =L= 32;

e4..    0.005*x4 + 0.00714285714285714*x8 =L= 40;

e5..    x1 - x9 - x17 - x21 - x25 - x29 =E= -10;

e6..    x2 + x9 - x10 - x18 - x22 - x26 - x30 =E= 0;

e7..    x3 + x10 - x11 - x19 - x23 - x27 - x31 =E= 0;

e8..    x4 + x11 - x12 - x20 - x24 - x28 - x32 =E= 0;

e9..    x5 - x13 - x33 - x37 - x41 - x45 =E= 0;

e10..    x6 + x13 - x14 - x34 - x38 - x42 - x46 =E= 0;

e11..    x7 + x14 - x15 - x35 - x39 - x43 - x47 =E= 0;

e12..    x8 + x15 - x16 - x36 - x40 - x44 - x48 =E= 0;

e13..    10*x1 + 10*x2 + 10*x3 + 10*x4 + 11*x5 + 11*x6 + 11*x7 + 11*x8 + 2.5*x9
       + 2.5*x10 + 2.5*x11 + 2.5*x12 + 3*x13 + 3*x14 + 3*x15 + 3*x16 - 25*x17
       - 26*x18 - 27*x19 - 27*x20 - 26.5*x21 - 27.5*x22 - 28*x23 - 28.5*x24
       - 30*x33 - 35*x34 - 37*x35 - 39*x36 - 29*x41 - 32*x42 - 33*x43 - 35*x44
       - 25*x45 - 25*x46 - 25*x47 - 28*x48 + objvar =E= 0;

* set non default bounds

x17.up = 2000; 
x18.up = 2000; 
x19.up = 1500; 
x20.up = 2000; 
x21.up = 4000; 
x22.up = 4000; 
x23.up = 2500; 
x24.up = 4500; 
x25.fx = 0; 
x26.fx = 0; 
x27.fx = 0; 
x28.fx = 0; 
x29.fx = 0; 
x30.fx = 0; 
x31.fx = 0; 
x32.fx = 0; 
x33.up = 1000; 
x34.up = 800; 
x35.up = 1000; 
x36.up = 1100; 
x37.fx = 0; 
x38.fx = 0; 
x39.fx = 0; 
x40.fx = 0; 
x41.up = 2000; 
x42.up = 1200; 
x43.up = 2000; 
x44.up = 2300; 
x45.up = 1000; 
x46.up = 500; 
x47.up = 500; 
x48.up = 800; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP maximizing objvar;
