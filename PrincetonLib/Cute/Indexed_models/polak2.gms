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

*   classification  LOR2-AN-11-2
$offdigit;
$Set N 10
$Set N5 5
Set I              /i1*i%N%/;
Set Right(I)       /i%n5%*i%N%/;

Variable x[i] , u , f ;

Equation cons1 , cons2 , Def_obj ;

cons1.. exp(0.00000001*sqr(x['i1'])+sqr(x['i2']+2)+sqr(x['i3'])+4*sqr(x['i4'])+
                                       sum{i$Right(I), sqr(x[i])} ) - u =l= 0 ;
cons2.. exp(0.00000001*sqr(x['i1'])+sqr(x['i2']-2)+sqr(x['i3'])+4*sqr(x['i4'])+
                            sum{i$Right(I), sqr(x[i])} ) - u =l= 0 ;

Def_obj..  f =e= u ;
x.lo[i]    =    0.00 ;
x.up[i]    =  200.00 ;

x.l[i]    =   0.01 ;
x.l['i1'] =  100.0  ;

Model polak2  /all/;

Solve polak2   using nlp minimazing f ;

display f.l ; display x.l ;
