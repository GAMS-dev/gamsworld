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
*   Zhengua Lina and Yong Li,
*   "A Modified Scaling Newton-Type Method for Nonlinear Programming"
*   Department of Mathematics, Jilin University, Changchun, China, 1994.

*   SIF input: Ph. Toint, January 1994.

*   classification OQR2-AN-3-2

$Set N  3
Set I  / i1*i%N% / ;

Parameter xinit[i] / i1 0.1 , i2 0.1 , i3 3.0 / ;

Positive Variable x[i] ;
         Variable f    ;

Equation cons1 , cons2 , Def_obj ;

cons1.. 4 =l= sqr(x['i1']) + sqr(x['i2']) + sqr(x['i3'])        ;

cons2..       sqr(x['i1']) + sqr(x['i2']) + sqr(x['i3']) =l= 10 ;

Def_obj..
    f =e= power(x['i1'],3) - 6*sqr(x['i1']) + 11*x['i1'] + x['i2'] + x['i3'] ;

x.l[i] = xinit[i]  ;
x.up['i3'] = 5     ;

Model zy2 /all/ ;

Solve zy2 using nlp minimazing f ;

Display x.l ;
Display f.l ;
