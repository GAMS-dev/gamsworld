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

*   classification OUR2-AN-V-0

$Set N  1000
$Set N1  999
Set I  / i1*i%N% / ;
Set inside(i) / i2*i%N1% / ;

Parameter alpha  ; alpha  = 0.5 ;

Variable x[i] , f ;
Equation  Def_obj ;

Def_obj..  f =e= (sum{i,(x[i]) } +
                  sum{i$inside(i), alpha*cos(2*x[i]-x['i%N%']-x['i1']) } );

x.lo[i] =0.00 ;


x.l[i] = ord(i)/(%N%+1) ;

Model indef /all/ ;

Solve indef using nlp minimazing f ;
display f.l ;
display x.l ;
