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

*   classification QQR2-AN-2-1

Positive Variable x , y ;
         Variable f ;

Equation cons1 , Def_obj ;

cons1.. -1+sqr(x-1)+sqr(y-10) =e= 0;
Def_obj..  f =e= sqr(x-1) ;

x.l = 1 ;
y.l = 11 ;

Model try_b /all/ ;

Solve try_b  using nlp minimazing f ;

display f.l;
display x.l;
display y.l;
