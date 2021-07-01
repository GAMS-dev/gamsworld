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
*         13       13        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         29       29        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         71       67        4        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13;


e1..    0.005*x1 + 0.00714285714285714*x5 - x9 =E= 0;

e2..    0.005*x2 + 0.00714285714285714*x6 - x10 =E= 0;

e3..    0.005*x3 + 0.00714285714285714*x7 - x11 =E= 0;

e4..    0.005*x4 + 0.00714285714285714*x8 - x12 =E= 0;

e5..    x2 - x14 + x21 - x22 =E= 0;

e6..    x3 - x15 + x22 - x23 =E= 0;

e7..    x4 - x16 + x23 - x24 =E= 0;

e8..    x6 - x18 + x25 - x26 =E= 0;

e9..    x7 - x19 + x26 - x27 =E= 0;

e10..    x8 - x20 + x27 - x28 =E= 0;

e11..    x1 - x13 - x21 =E= -10;

e12..    x5 - x17 - x25 =E= 0;

e13.. 1550*(sqrt((-35 + x9)*(-35 + x9)) + x9) + 1500*(sqrt((-35 + x10)*(-35 + 
      x10)) + x10) + 1850*(sqrt((-30 + x11)*(-30 + x11)) + x11) + 1550*(sqrt((-
      35 + x12)*(-35 + x12)) + x12) + 10*x1 + 10*x2 + 10*x3 + 10*x4 + 11*x5
       + 11*x6 + 11*x7 + 11*x8 - 25*x13 - 26*x14 - 23*x15 - 20*x16 - 30*x17
       - 35*x18 - 31*x19 - 25*x20 + 2.5*x21 + 2.5*x22 + 2.5*x23 + 2.5*x24
       + 3*x25 + 3*x26 + 3*x27 + 3*x28 + objvar =E= 216500;

* set non default bounds

x9.up = 42; 
x10.up = 42; 
x11.up = 40; 
x12.up = 42; 
x13.lo = 3000; x13.up = 6000; 
x14.lo = 3000; x14.up = 6000; 
x15.lo = 3000; x15.up = 4000; 
x16.lo = 3000; x16.up = 6500; 
x17.lo = 2000; x17.up = 4000; 
x18.lo = 2000; x18.up = 2500; 
x19.lo = 2000; x19.up = 3500; 
x20.lo = 2000; x20.up = 4200; 

* set non default levels

x13.l = 3000; 
x14.l = 3000; 
x15.l = 3000; 
x16.l = 3000; 
x17.l = 2000; 
x18.l = 2000; 
x19.l = 2000; 
x20.l = 2000; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP maximizing objvar;
