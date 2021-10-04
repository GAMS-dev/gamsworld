* Cute AMPL model  (translation to GAMS)
*
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
*   Ph. Toint, private communication,

*   SIF input: Ph. Toint, April 1997.

*   classification OUR2-AN-2-0

parameter hlength ; hlength =  30 ;
parameter  cslope ;  cslope = 100 ;

Variable x1 , x2 , f ;

Equation Def_obj ;

Def_obj..  f =e=log( (100 + sqr(sin(7*x1))*sqr(cos(7*x2))*hlength +
                            cslope*sqrt(0.01+sqr(x1-x2))          +
                            cslope*sqrt(0.01+sqr(x1   ))            ) / 100 ) ;

x1.l = -500 ;
x2.l = -700 ;

Model loghairy /all/;

Solve loghairy using nlp minimize f ;

display x1.l ;
display x2.l ;
display  f.l ;
