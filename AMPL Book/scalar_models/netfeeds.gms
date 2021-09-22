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

*  NLP written by GAMS Convert at 03/28/07 20:22:53
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         27       27        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         67       67        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    30*x1 + 10*x7 - x13 - x14 =E= -1600;

e2..    30*x2 + 10*x8 + x13 - x15 - x16 - x17 =E= 700;

e3..    30*x3 + 10*x9 + x14 - x18 - x19 =E= 300;

e4..    30*x4 + 10*x10 + x15 =E= 200;

e5..    30*x5 + 10*x11 + x16 + x18 =E= 200;

e6..    30*x6 + 10*x12 + x17 + x19 =E= 200;

e7..    50*x1 + 20*x7 - x20 - x21 =E= -2500;

e8..    50*x2 + 20*x8 + x20 - x22 - x23 - x24 =E= 500;

e9..    50*x3 + 20*x9 + x21 - x25 - x26 =E= 400;

e10..    50*x4 + 20*x10 + x22 =E= 600;

e11..    50*x5 + 20*x11 + x23 + x25 =E= 600;

e12..    50*x6 + 20*x12 + x24 + x26 =E= 400;

e13..  - 2*x13 - 4*x14 - 4*x15 - 2*x16 - 5*x17 - 3*x18 - x19 - 3*x20 - x21
       - 4*x22 - x23 - 2*x24 - 5*x25 - 2*x26 + objvar =E= 0;

* set non default bounds

x1.up = 20; 
x2.up = 20; 
x3.up = 10; 
x4.up = 20; 
x5.up = 30; 
x6.up = 20; 
x7.up = 30; 
x8.up = 20; 
x9.up = 10; 
x10.up = 20; 
x11.up = 30; 
x12.up = 30; 
x13.up = 4700; 
x14.up = 4700; 
x15.up = 4700; 
x16.up = 4700; 
x17.up = 4700; 
x18.up = 4700; 
x19.up = 4700; 
x20.up = 4800; 
x21.up = 4800; 
x22.up = 4800; 
x23.up = 4800; 
x24.up = 4800; 
x25.up = 4800; 
x26.up = 4800; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;
