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
*   M. Gawande and J. Dunn,
*   "A Projected Newton Method in a Cartesian Product of Balls",
*   JOTA 59(1): 59-69, 1988.

*   SIF input: Ph. Toint, June 1990.

*   classification QQR2-AN-V-V

$Set N  11
$Set N1 10
$Set M 2
Set I /i0*i%N%/;
Set Right(i) /i1*i%N%/;
Set Left(i)  /i0*i%N1%/;
Set J /j1*j%M%/;

Parameter speed ;  speed = 0.01  ;
Parameter   pen ;    pen = 0.335 ;

Variable x(j,i) , v(j,i) , f(j,i) , obj ;
Equation cons1(j,i) , cons2(j,i) , cons3(i) , Def_obj ;
cons1(j,i)$right(i).. x[j,i] - x[j,i-1] -
                             v[j,i-1]/%N1% - f[j,i-1]/(2*sqr(%N1%)) =e= 0;
cons2(j,i)$right(i).. v[j,i] - v[j,i-1] - f[j,i-1]/%N1% =e= 0;
cons3(i)$Left(i)..    sqr(f['j1',i]) + sqr(f['j2',i]) =l= 1;
Def_obj.. obj =e= pen*(sqr(v['j1','i%n%'])+sqr(v['j2','i%n%'])) -
                      (sqr(x['j1','i%n%'])+sqr(x['j2','i%n%']))     ;
x.fx['j1','i0'] = 0.0;
x.fx['j2','i0'] = 0.0;
v.fx['j1','i0'] = speed;
v.fx['j2','i0'] = 0.0;

Model optmass /all/ ;

Solve optmass using nlp minimazing obj ;

display obj.l;
