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

*   Source: Six hump camel in
*   L. C. W. Dixon and G. P. Szego (Eds.)
*   Towards Global Optimization
*   North Holland, 1975.

*   SIF input: A.R. Conn May 1995

*   classification OBR2-AN-2-0

$Set N  2
Set I  / i1*i%N% / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj.. f=e=  4.0 * sqr(x['i1'])          -
                2.1 * power(x['i1'],4)      +
                      power(x['i1'],6)/3    +
                      x['i1']*x['i2']       -
                4.0 * sqr(x['i2'])          +
                4.0 * power(x['i2'],4)         ;


x.lo['i1'] = -3.0 ; x.up['i1'] =  3.0 ;
x.lo['i2'] = -1.5 ; x.up['i2'] =  1.5 ;

x.l[i] = 1.1 ;

Model camel6 /all/ ;

Solve camel6  using nlp minimazing f ;

Display x.l ;
Display f.l ;
