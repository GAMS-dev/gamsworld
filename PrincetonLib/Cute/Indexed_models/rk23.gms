* AMPL Model by Hande Y. Benson
*
* Copyright (C) 2001 Princeton University
* All Rights Reserved
*
* Permission to use, copy, modify, and distribute this software and
* its documentation for any purpose and without fee is hereby
* granted, provided that the above copyright notice appear in all
* copies and that the copyright notice and this
* permission notice appear in all supporting documentation.

*   Source:
*   Similar ideas for 4th and 5th order pairs are discussed in:
*   Hairer, Norsett and Wanner, Solving Ordinary Differential
*   Equations I, Springer 1980, page 158 ff.

*   SIF input: S. Leyffer, January 1997.

*   classification LOR2-RN-17-11

Variable  C2 , A21 ,  C3 , A31 , A32 ,  B1  ,
          B2 ,  B3 , BB1 , BB2 , BB3 , TP1  ,
         TM1 , TP2 , TM2 , TP3 , TM3 ,  f   ;


Equation   cons1,   cons2,  cons3, cons4,  cons5,
           cons6,   cons7,  cons8, cons9, cons10,
          cons11, Def_obj ;

 cons1.. A21-C2                                   =e=  0 ;
 cons2.. A31+A32-C3                               =e=  0 ;
 cons3.. B1+B2+B3-1                               =e=  0 ;
 cons4.. BB1+BB2+BB3-1                            =e=  0 ;
 cons5.. B2*C2+B3*C3-0.5                          =e=  0 ;
 cons6.. BB2*C2+BB3*C3-0.5                        =e=  0 ;
 cons7.. BB2*C2*C2+BB3*C3*C3-1/3                  =e=  0 ;
 cons8.. BB3*A32*C2-1/6                           =e=  0 ;
 cons9.. TP1-TM2-1+4*BB2*C2*C2*C2+4*BB3*C3*C3*C3  =e=  0 ;
cons10.. TP2-TM2-1+8*BB3*C3*A32*C2                =e=  0 ;
cons11.. TP3-TM3-1+12*BB3*A32*C2*C2               =e=  0 ;

Def_obj..  f =e= TP1 + TM1 + TP2 + TM2 + TP3 + TM3 ;

 C2.l  = 1.0  ;
A21.l  = 1.0  ;
 C3.l  = 0.5  ;
A31.l  = 0.25 ;
A32.l  = 0.25 ;
 B1.l  = 0.5  ;
 B2.l  = 0.5  ;
 B3.l  = 0.0  ;
BB1.l  = 1/6  ;
BB2.l  = 1/6  ;
BB3.l  = 4/6  ;
TP1.lo = 0.0  ;
TM1.lo = 0.0  ;
TP2.lo = 0.0  ;
TM2.lo = 0.0  ;
TP3.lo = 0.0  ;
TM3.lo = 0.0  ;

Model rk23 /all/ ;

Solve rk23  using nlp minimazing f ;

display f.l ;

display  C2.l; display A21.l; display  C3.l; display A31.l; display A32.l;
display  B1.l; display  B2.l; display  B3.l; display BB1.l; display BB2.l;
display BB3.l; display TP1.l; display TM1.l; display TP2.l; display TM2.l;
display TP3.l; display TM3.l;
