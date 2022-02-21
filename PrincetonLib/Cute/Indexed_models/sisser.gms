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
*   F.S. Sisser,
*   "Elimination of bounds in optimization problems by transforming
*   variables",
*   Mathematical Programming 20:110-121, 1981.

*   See also Buckley*216 (p. 91)

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-2-0
Set I /i1,i2/;
Parameter  tip ; tip = 0.0001 ;

Parameter  xinit(i) / i1 1.0 , i2 0.1 /;
Variable x(i) , f ;
Equation  Def_obj ;

Def_obj..  f =e= 3* power(x['i1'],4)     -
                 2* sqr(x['i1']*x['i2']) +
                 3* power(x['i2'],4)      ;

x.l(i) = xinit(i) ;

Model sisser /all/ ;

Solve sisser using nlp minimazing f ;

display f.l;
display x.l;
