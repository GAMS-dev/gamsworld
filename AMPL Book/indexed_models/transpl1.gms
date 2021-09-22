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


Set ORIG / GARY , CLEV , PITT / ;
* origins
Set DEST / FRA , DET , LAN , WIN , STL , FRE , LAF / ;
* destinations


Parameter  supply[ORIG] / GARY   1400 ,  CLEV   2600 ,  PITT   2900 / ;
*supply -> amounts available at origins

Parameter  demand[DEST] / FRA     900 ,  DET    1200 ,  LAN     600 ,
                          WIN     400 ,  STL    1700 ,  FRE    1100 ,
                          LAF    1000 / ;
*demand -> amounts required at destinations

Set J /j1 , j2 , j3 / ;

Table a1[DEST,J]
              j1    j2    j3
       FRA    39    50    70
       DET    14    17    33
       LAN    11    12    23
       WIN    14    17    33
       STL    16    23    40
       FRE    82    82    98
       LAF     8    16    24 ;

Table a2[DEST,J]
              j1    j2    j3
       FRA    27    37    47
       DET     9    19    24
       LAN    12    32    39
       WIN     9    14    21
       STL    26    36    47
       FRE    95   105   129
       LAF    17    27    37

Table a3[DEST,J]
              j1    j2    j3
       FRA    24    24    34
       DET    14    14    24
       LAN    17    17    27
       WIN    13    13    23
       STL    28    28    38
       FRE    99    99   140
       LAF    20    20    30  ;

Parameter rate1[ORIG,DEST] ,  rate2[ORIG,DEST] , rate3[ORIG,DEST] ;
Parameter rate1[ORIG,DEST] ,  rate2[ORIG,DEST] , rate3[ORIG,DEST] ;
Parameter rate1[ORIG,DEST] ,  rate2[ORIG,DEST] , rate3[ORIG,DEST] ;

 rate1['GARY',DEST]:= a1[DEST,'j1'];
 rate2['GARY',DEST]:= a1[DEST,'j2'];
 rate3['GARY',DEST]:= a1[DEST,'j3'];
 rate1['CLEV',DEST]:= a2[DEST,'j1'];
 rate2['CLEV',DEST]:= a2[DEST,'j2'];
 rate3['CLEV',DEST]:= a2[DEST,'j3'];
 rate1['PITT',DEST]:= a3[DEST,'j1'];
 rate2['PITT',DEST]:= a3[DEST,'j2'];
 rate3['PITT',DEST]:= a3[DEST,'j3'];

Parameter limit1[ORIG,DEST] ,  limit2[ORIG,DEST] ;
limit1[ORIG,DEST] =  5000 ;
limit2[ORIG,DEST] = 10000 ;


Positive Variable Trans[ORIG,DEST] ;
*Trans -> units to be shipped

Variable  total_cost ;

Equation Eq_Supply(ORIG) , Eq_Demand(DEST) , Eq_check , Def_obj ;

Eq_Supply(ORIG)..  sum{DEST, Trans[ORIG,DEST]} =e= supply[ORIG];

Eq_Demand(DEST)..  sum{ORIG, Trans[ORIG,DEST]} =e= demand[DEST];

Eq_check.. sum{ORIG, supply[ORIG]} =e= sum{DEST,demand[DEST]};



Def_obj..
total_cost =e=   sum{(ORIG,DEST),
               -{{sqrt{(Trans[ORIG,DEST]-limit1[ORIG,DEST])*
                       (Trans[ORIG,DEST]-limit1[ORIG,DEST]) }-
                       (Trans[ORIG,DEST]-limit1[ORIG,DEST]) }/2
                            /(Trans[ORIG,DEST]-limit1[ORIG,DEST]+0.000001)} *
                          Trans[ORIG,DEST]
                         *rate1[ORIG,DEST]
                              +
                {{sqrt{(Trans[ORIG,DEST]-limit1[ORIG,DEST])*
                       (Trans[ORIG,DEST]-limit1[ORIG,DEST]) }+
                       (Trans[ORIG,DEST]-limit1[ORIG,DEST]) }/2
                            /(Trans[ORIG,DEST]-limit1[ORIG,DEST]+0.00001)} *
                          limit1[ORIG,DEST]
                         *rate1[ORIG,DEST]
                              +
              (-{{ sqrt{(Trans[ORIG,DEST]-limit2[ORIG,DEST])*
                        (Trans[ORIG,DEST]-limit2[ORIG,DEST]) }-
                        (Trans[ORIG,DEST]-limit2[ORIG,DEST]) }/2
                            /(Trans[ORIG,DEST]-limit2[ORIG,DEST]+0.000001)}) *
                  { sqrt{(Trans[ORIG,DEST]-limit1[ORIG,DEST])*
                        (Trans[ORIG,DEST]-limit1[ORIG,DEST]) }+
                        (Trans[ORIG,DEST]-limit1[ORIG,DEST]) }/2
                         *rate2[ORIG,DEST]
                              +
                ({{ sqrt{(Trans[ORIG,DEST]-limit2[ORIG,DEST])*
                        (Trans[ORIG,DEST]-limit2[ORIG,DEST]) }+
                        (Trans[ORIG,DEST]-limit2[ORIG,DEST]) }/2
                /(Trans[ORIG,DEST]-limit2[ORIG,DEST]+0.000001)}) *

                 { sqrt{(Trans[ORIG,DEST]-limit1[ORIG,DEST])*
                        (Trans[ORIG,DEST]-limit1[ORIG,DEST]) }+
                        (Trans[ORIG,DEST]-limit1[ORIG,DEST]) }/2*
                         (limit2[ORIG,DEST]-limit2[ORIG,DEST])
                          *rate2[ORIG,DEST]
                              +
                  { sqrt{(Trans[ORIG,DEST]-limit2[ORIG,DEST])*
                        (Trans[ORIG,DEST]-limit2[ORIG,DEST]) }+
                        (Trans[ORIG,DEST]-limit2[ORIG,DEST]) }/2
                         * rate3[ORIG,DEST]    }   ;

Model transpl1 /all/;

Solve transpl1 using nlp minimazing total_cost ;

Display total_cost.l ;