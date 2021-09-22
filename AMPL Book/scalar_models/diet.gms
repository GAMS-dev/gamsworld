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

*  LP written by GAMS Convert at 03/28/07 20:22:51
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        1        0        8        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         71       71        0        0
*
*  Solve m using LP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - 60*x1 - 8*x2 - 8*x3 - 40*x4 - 15*x5 - 70*x6 - 25*x7 - 60*x8 =L= -700;

e2..  - 10*x1 - 20*x2 - 15*x3 - 35*x4 - 15*x5 - 15*x6 - 25*x7 - 15*x8 =L= -700;

e3..  - 15*x1 - 20*x2 - 10*x3 - 10*x4 - 15*x5 - 15*x6 - 15*x7 - 10*x8 =L= -700;

e4..  - 20*x1 - 10*x3 - 40*x4 - 35*x5 - 30*x6 - 50*x7 - 20*x8 =L= -700;

e5..    60*x1 + 8*x2 + 8*x3 + 40*x4 + 15*x5 + 70*x6 + 25*x7 + 60*x8 =L= 10000;

e6..    10*x1 + 20*x2 + 15*x3 + 35*x4 + 15*x5 + 15*x6 + 25*x7 + 15*x8
      =L= 10000;

e7..    15*x1 + 20*x2 + 10*x3 + 10*x4 + 15*x5 + 15*x6 + 15*x7 + 10*x8
      =L= 10000;

e8..    20*x1 + 10*x3 + 40*x4 + 35*x5 + 30*x6 + 50*x7 + 20*x8 =L= 10000;

e9..  - 3.19*x1 - 2.59*x2 - 2.29*x3 - 2.89*x4 - 1.89*x5 - 1.99*x6 - 1.99*x7
      - 2.49*x8 + objvar =E= 0;

* set non default bounds

x1.up = 100; 
x2.up = 100; 
x3.up = 100; 
x4.up = 100; 
x5.up = 100; 
x6.up = 100; 
x7.up = 100; 
x8.up = 100; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using LP minimizing objvar;
