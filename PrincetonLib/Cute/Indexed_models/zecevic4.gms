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

*   Source:  problem 4 in A. Zecevic, "Contribution to methods
*            of external penalty functions - algorithm MNBS"
*            Advanced Business School, Belgrade,
*            (whatever is left of) Yugoslavia.

*   SIF input: Nick Gould, April 1993.

*   classification QQR2-AN-2-2

$Set N  2
Set I  / i1*i%N% / ;

Parameter xinit[i] / i1 0.1 , i2 -0.1 / ;

Variable x[i] , f ;

Equation cons1 , cons2 , Def_obj ;

cons1..    x['i1']*x['i2']-x['i1']-x['i2'] =l=  0   ;
cons2..  - x['i1'] - x['i2']               =l= -3.0 ;
Def_obj..  f =e= 6*sqr(x['i1']) + sqr(x['i2']) - 60*x['i1'] - 8*x['i2'] + 166 ;

x.lo['i1'] =  0 ;
x.lo['i2'] =  0 ;

x.up['i1'] = 10 ;
x.up['i2'] = 10 ;

x.l[i] = xinit[i]  ;

Model zecevic4 /all/ ;

Solve zecevic4 using nlp minimazing f ;

Display x.l ;
Display f.l ;
