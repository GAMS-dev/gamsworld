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

*   Source:  problem 7 (p. 102) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification QUR2-AN-2-0

$Set N  2
Set I  / i1*i%N% / ;

Parameter xinit[i] / i1 3.0 , i2  8.0 / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..
        f =e= (-56*x['i1'] - 256*x['i2'] + 991 +
                16*sqr(x['i1']) +
                16*sqr(x['i2']) - 8*x['i1']*x['i2']) / 15 ;

x.l[i] = xinit[i]  ;

Model zangwil2 /all/ ;

Solve zangwil2 using nlp minimazing f ;

Display x.l ;
Display f.l ;
