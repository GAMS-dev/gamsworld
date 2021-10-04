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
*   E. Polak, D.H. Mayne and J.E. Higgins,
*   "Superlinearly convergent algorithm for min-max problems"
*   JOTA 69, pp. 407-439, 1991.

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LOR2-AN-5-4

$Set N 4
Set I              /i1*i%N%/;

Variable x[i] , u , f ;

Equation cons1 , cons2 , cons3 , cons4 , Def_obj ;

cons1..    sqr(x['i1']-power((x['i4']+1),4)) +
           sqr(x['i2']-power((x['i1']-power((x['i4']+1),4)),4))+
         2*sqr(x['i3'])+   sqr(x['i4'])+  5*power((x['i4']+1),4)+
         5*power((x['i1']-power((x['i4']+1),4)),4)-u- 5*x['i1']- 5*x['i2']-
        21*x['i3']+7*x['i4']     =l=0 ;

cons2.. 11*sqr(x['i1']-power((x['i4']+1),4)) +
        11*sqr(x['i2']-power((x['i1']-power((x['i4']+1),4)),4))+
        12*sqr(x['i3'])+11*sqr(x['i4'])-  5*power((x['i4']+1),4)+
        15*power((x['i1']-power((x['i4']+1),4)),4)-u+ 5*x['i1']-15*x['i2']-
        11*x['i3']-3*x['i4']- 80 =l= 0 ;

cons3.. 11*sqr(x['i1']-power((x['i4']+1),4)) +
        21*sqr(x['i2']-power((x['i1']-power((x['i4']+1),4)),4))+
        12*sqr(x['i3'])+21*sqr(x['i4'])+ 15*power((x['i4']+1),4)+
         5*power((x['i1']-power((x['i4']+1),4)),4)-u-15*x['i1']- 5*x['i2']-
        21*x['i3']-3*x['i4']-100 =l= 0 ;

cons4.. 11*sqr(x['i1']-power((x['i4']+1),4)) +
        11*sqr(x['i2']-power((x['i1']-power((x['i4']+1),4)),4))+
        12*sqr(x['i3'])+   sqr(x['i4'])- 15*power((x['i4']+1),4)+
        15*power((x['i1']-power((x['i4']+1),4)),4)-u+15*x['i1']-15*x['i2']-
        21*x['i3']-3*x['i4']- 50 =l= 0 ;


Def_obj..  f =e= u ;

x.l[i] = 0.0 ;

Model polak1  /all/;

Solve polak1   using nlp minimazing f ;

display f.l ; display x.l ;
