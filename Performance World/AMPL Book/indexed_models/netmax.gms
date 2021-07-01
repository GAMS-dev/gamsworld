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

Set Road / a , b , c , d , e , f , g /;
Alias(Road,Road1);
Set Link(Road,Road1)   / a.b , a.c ,
                         b.d , b.e ,
                         c.d , c.f ,
                         d.e , d.f ,
                         e.g , f.g /    ;

Parameter   cap[Road,Road1] ;
* capacities of roads
         cap['a','b'] =   50 ;    cap['a','c'] = 100 ;
         cap['b','d'] =   40 ;    cap['b','e'] =  20 ;
         cap['c','d'] =   60 ;    cap['c','f'] =  20 ;
         cap['d','e'] =   50 ;    cap['d','f'] =  60 ;
         cap['e','g'] =   70 ;    cap['f','g'] =  70 ;

Variable Traff[Road,Road1] , Entering_Traff ;
* Traff[] -> traffic loads

Equation Balance , Def_obj ;

Balance(ROAD)$((ord(ROAD) ne 1) and (ord(ROAD) ne card(ROAD)))..
                  sum{ROAD1$Link(Road1,Road),Traff[ROAD1,ROAD]} =e=
                  sum{ROAD1$Link(Road,Road1),Traff[ROAD,ROAD1]};

Def_obj..        Entering_Traff =e= sum {ROAD, Traff['a',ROAD]};

Traff.lo[Road,Road1] =  0.0;
Traff.up[Road,Road1] =  cap[Road,Road1];

Model netmax /all/;

Solve netmax using nlp maximazing Entering_Traff ;

Display Entering_Traff.l ;


