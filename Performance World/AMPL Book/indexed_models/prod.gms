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

Set P / bands , coils /;
Parameter b  / 40 / ;
Parameter a(P) /  bands  200 , coils  140 / ;
Parameter c(P) /  bands   25 , coils   30 / ;
Parameter u(P) /  bands 6000 , coils 4000 / ;

Variable X(P) , profit ;
Equation Eq_Time , Def_obj ;


Eq_Time..            sum{P, ((1/a[P])*X[P]) } =l= b ;


Def_obj.. profit =e= sum{P, (c[P] * X[P]  ) }       ;

*Instead Limit(P)..  0 <= X[j] <= u[j];
X.lo[P] = 0   ;
X.up[P] = u[P];

Model prod_ /all/;

Solve prod_ using lp maximizing profit ;

Display profit.l ;
