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

*  NLP written by GAMS Convert at 03/28/07 20:22:51
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        1        0        8        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         28       28        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..  - x1 - x2 - x3 =L= -1;

e2..  - 2*x1 - 2*x2 - 2*x3 =L= -1;

e3..  - 2*x1 - 2*x2 - 2*x3 =L= -1;

e4..  - 2*x1 - 3*x2 - 4*x3 =L= -1;

e5..    x1 + x2 + x3 =L= 31;

e6..    2*x1 + 2*x2 + 2*x3 =L= 32;

e7..    2*x1 + 2*x2 + 2*x3 =L= 32;

e8..    2*x1 + 3*x2 + 4*x3 =L= 32;

e9..  - 12*x1 - 13*x2 - 12*x3 + objvar =E= 0;

* set non default bounds

x1.lo = 1; x1.up = 4; 
x2.lo = 1; x2.up = 4; 
x3.lo = 1; x3.up = 4; 

* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include %gams.u1%

Solve m using NLP minimizing objvar;
