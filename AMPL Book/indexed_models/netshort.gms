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

Parameter   Time[Road,Road1] ;
* capacities of roads
        time['a','b'] =   50 ;   time['a','c'] = 100 ;
        time['b','d'] =   40 ;   time['b','e'] =  20 ;
        time['c','d'] =   60 ;   time['c','f'] =  20 ;
        time['d','e'] =   50 ;   time['d','f'] =  60 ;
        time['e','g'] =   70 ;   time['f','g'] =  70 ;
* times to travel roads

* 1 iff (i,j) in shortest path

Variable use[Road,Road1] , Total_Time ;
* Traff[] -> traffic loads

Equation Balance(ROAD) , Eq_Start(Road) , Def_obj ;

Eq_Start(Road)$(ord(Road) eq 1)..
             sum{ROAD1$Link(Road,Road1), Use[Road,Road1]}  =e= 1 ;

Balance(ROAD)$((ord(ROAD) ne 1) and (ord(ROAD) ne card(ROAD)))..
                  sum{ROAD1$Link(Road1,Road),Use[ROAD1,ROAD]} =e=
                  sum{ROAD1$Link(Road,Road1),Use[ROAD,ROAD1]};

Def_obj..  Total_Time =e= sum{(ROAD,ROAD1),time[Road,Road1]*Use[Road,Road1]};

Use.lo[Road,Road1] = 0 ;
Model netshot /all/;

Solve netshot using nlp minimazing Total_Time ;

Display Total_Time.l ;

