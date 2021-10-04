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
*   J. Nocedal,
*   "Solving large nonlinear systems of equations arising in mechanics",
*   Proceedings of the Cocoyoc Numerical Analysis Conference, Mexico,
*   pp. 132-141, 1981.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OXR2-MN-V-0

$Set N  71
Parameter pp ; pp = 71 ;

Set i  / i1*i%N% / ;
Set Left_i(i)  / i2*i%N% / ;
Set j  / j1*j%N% / ;
Set Left_j(j)  / j2*j%N% / ;

Parameter wght ; wght = -0.1     ;
Parameter  hp2 ;  hp2 =  0.5*pp*pp ;

Variable x[i,j] , f ;

Equation Def_obj ;

Def_obj..  f =e=     sum{(i,j)$((Left_i(i))and(Left_j(j))),   (
                              0.5*sqr(x[i,j]-x[i,j-1])+
                              0.5*sqr(x[i,j]-x[i-1,j])+
                              hp2*power((x[i,j]-x[i,j-1]),4)+
                              hp2*power((x[i,j]-x[i-1,j]),4)  )  } +
                                    (wght*x['i%N%' , 'j%N%'])        ;

x.l[i,j] = 0.0 ;
x.fx['i1',j] = 0.0 ;

Model clplatea /all/ ;

Solve clplatea  using nlp minimazing f ;

Display x.l ;
Display f.l ;
