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
*         20       13        0        7        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         57       57        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20;


e1..  - x1 - x3 =E= -1600;

e2..    x1 - x5 - x7 - x9 =E= 700;

e3..    x3 - x11 - x13 =E= 300;

e4..    x5 =E= 200;

e5..    x7 + x11 =E= 200;

e6..    x9 + x13 =E= 200;

e7..  - x2 - x4 =E= -2500;

e8..    x2 - x6 - x8 - x10 =E= 500;

e9..    x4 - x12 - x14 =E= 400;

e10..    x6 =E= 600;

e11..    x8 + x12 =E= 600;

e12..    x10 + x14 =E= 400;

e13..    x1 + x2 =L= 2910;

e14..    x3 + x4 =L= 2910;

e15..    x5 + x6 =L= 2910;

e16..    x7 + x8 =L= 2910;

e17..    x9 + x10 =L= 2910;

e18..    x11 + x12 =L= 2910;

e19..    x13 + x14 =L= 2910;

e20..  - 2*x1 - 3*x2 - 4*x3 - x4 - 4*x5 - 4*x6 - 2*x7 - x8 - 5*x9 - 2*x10
       - 3*x11 - 5*x12 - x13 - 2*x14 + objvar =E= 0;

* set non default bounds

x1.up = 4700; 
x2.up = 4800; 
x3.up = 4700; 
x4.up = 4800; 
x5.up = 4700; 
x6.up = 4800; 
x7.up = 4700; 
x8.up = 4800; 
x9.up = 4700; 
x10.up = 4800; 
x11.up = 4700; 
x12.up = 4800; 
x13.up = 4700; 
x14.up = 4800; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;
