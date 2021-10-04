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
*   R.S. Wommersley and R. Fletcher,
*   "An algorithm for composite nonsmooth optimization problems",
*   JOTA,, vol.48, pp. 493-523, 1986.

*   SIF input: Ph. Toint, April 1992.

*   classification LOR2-AN-3-3

$Set N  2
Set I  / i1*i%N% / ;

Parameter xinit[i]  / i1 3.0 , i2 1.0 /;

Variable x[i] , u , f ;

Equation cons1 , cons2 , cons3 , Def_obj ;

cons1.. u-0.5*x['i1']-sqr(x['i2'])-5*x['i1']/(x['i1']+0.1) =g= 0;
cons2.. u+0.5*x['i1']-sqr(x['i2'])-5*x['i1']/(x['i1']+0.1) =g= 0;
cons3.. u+0.5*x['i1']+sqr(x['i2'])+5*x['i1']/(x['i1']+0.1) =g= 0;

Def_obj..  f =e= u ;

u.l = 7.5 ;
x.l[i] = xinit[i] ;

Model womflet /all/ ;

Solve womflet using nlp minimazing f ;

f.l = f.l*1000;

Display x.l ;
Display f.l ;
