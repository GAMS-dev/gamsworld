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

set MAT /m1*m5/;
* materials
set ACT /a1*a7/;
* activities

Table io[MAT,ACT]
           a1   a2  a3   a4   a5  a6  a7
 m1         1   -1   1   -1   -1  -1   1
 m2        -1    1  -1    1    1  -1   1
 m3         1   -1   1   -1   -1   1   1
 m4        -1    1  -1    1    1   1  -1
 m5         1   -1   1   -1   -1   1  -1 ;

* input-output coefficients

Parameter revenue[ACT] /a1  2 , a2  1 , a3  2 , a4  1 , a5  1 , a6  2 , a7  1 /;
Parameter act_min[ACT] /a1  0 , a2  0 , a3  0 , a4  0 , a5  0 , a6  0 , a7  0 /;
Parameter act_max[ACT] /a1 20 , a2 25 , a3 25 , a4 25 , a5 25 , a6 25 , a7 25 /;


Variable X(act) , Net_Profit ;
Equation Eq_Balance(MAT) , Def_obj ;

Eq_Balance(MAT)..  sum{ACT, io[MAT,ACT] * X[ACT]} =e= 0;

Def_obj.. Net_Profit =e=  sum{ACT, revenue[ACT] * X[ACT] };

X.lo(ACT) = act_min(ACT) ;
X.up(ACT) = act_max(ACT) ;

Model iocol1 /all/;
Solve iocol1 using nlp maximazing Net_Profit ;
Display Net_Profit.l ;