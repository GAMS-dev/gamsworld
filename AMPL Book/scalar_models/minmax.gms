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

*  NLP written by GAMS Convert at 03/28/07 20:22:52
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16       11        5        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         27       27        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         82       82        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,objvar,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27;

Positive Variables  x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,x19,x20,x21,x22,x23,x24,x25,x26,x27;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1..    x1 - 5*x3 - 4*x4 - 5*x5 - 3*x6 - 3*x7 =G= 0;

e2..    x1 - 8*x8 - 3*x9 - 5*x10 - 4*x11 - 3*x12 =G= 0;

e3..    x1 - 3*x13 - 4*x14 - 5*x15 - 4*x16 - 4*x17 =G= 0;

e4..    x1 - 7*x18 - 5*x19 - 6*x20 - 5*x21 - 5*x22 =G= 0;

e5..    x1 - 3*x23 - 6*x24 - 5*x25 - 5*x26 - 5*x27 =G= 0;

e6..    x3 + x4 + x5 + x6 + x7 =E= 3;

e7..    x8 + x9 + x10 + x11 + x12 =E= 2;

e8..    x13 + x14 + x15 + x16 + x17 =E= 2;

e9..    x18 + x19 + x20 + x21 + x22 =E= 1;

e10..    x23 + x24 + x25 + x26 + x27 =E= 1;

e11..    x3 + x8 + x13 + x18 + x23 =E= 1;

e12..    x4 + x9 + x14 + x19 + x24 =E= 2;

e13..    x5 + x10 + x15 + x20 + x25 =E= 2;

e14..    x6 + x11 + x16 + x21 + x26 =E= 2;

e15..    x7 + x12 + x17 + x22 + x27 =E= 2;

e16..  - x1 + objvar =E= 0;

* set non default bounds

x3.up = 5; 
x4.up = 4; 
x5.up = 5; 
x6.up = 3; 
x7.up = 3; 
x8.up = 8; 
x9.up = 3; 
x10.up = 5; 
x11.up = 4; 
x12.up = 3; 
x13.up = 3; 
x14.up = 4; 
x15.up = 5; 
x16.up = 4; 
x17.up = 4; 
x18.up = 7; 
x19.up = 5; 
x20.up = 6; 
x21.up = 5; 
x22.up = 5; 
x23.up = 3; 
x24.up = 6; 
x25.up = 5; 
x26.up = 5; 
x27.up = 5; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;
