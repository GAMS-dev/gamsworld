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

*   classification  SUR2-AN-3-0

Parameter cf ; cf = -26-(2/3) ;
Parameter cg ; cg = -60-(4/9) ;
Parameter ch ; ch = -71-(1/9) ;

Variable a , r , h , f ;

Equation Def_obj ;

Def_obj..
   f =e=sqr(-0.5*( a*(a+1)*r*h*h)+a*r*h-r*(1-exp{log(1+h)*(-    a)})-cf) +
        sqr(      -a*(a+1)*r*h*h +a*r*h  *(1-exp{log(1+h)*(-(a+1))})-cg) +
        sqr(      -a*(a+1)*r*h*h         *(1-exp{log(1+h)*(-(a+2))})-ch) ;


a.l = 1.0 ;
r.l = 0.0 ;
h.l = 1.0 ;

Model pfit2ls  /all/;

Solve pfit2ls  using nlp minimazing f ;

display f.l ;
display a.l , r.l , h.l;
