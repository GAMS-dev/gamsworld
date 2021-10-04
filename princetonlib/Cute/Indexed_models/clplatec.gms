* Cute AMPL model  (translation to GAMS)
*
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

$Set p 71
$Set n 70
Set i /i1*i%p%/;
Set j /j1*j%p%/;
Set inside(i,j) /i2*i%p%.j2*j%p%/;
Set inside_j(j) /j2*j%n%/;

parameter wght;  wght =-0.1         ;
parameter  hp2;   hp2 = 0.5*%p%*%p% ;
parameter   wr;    wr = wght*0.99   ;
parameter   wl;    wl = wght*0.01   ;


Variable x(i,j),f;

Equation  Def_obj ;

Def_obj.. f=e=
 sum{(i,j)$inside(i,j),(hp2*sqr(x[i,j]-x[i,j-1])   +
                        0.5*sqr(x[i,j]-x[i-1,j])   +
                        power((x[i,j]-x[i,j-1]),4) +
                        power((x[i,j]-x[i-1,j]),4))  } +
                                    (wr*x['i%p%','j%p%']+wl*x['i%p%','j1']);


x.l(i,j)     = 0 ;
x.fx('i1',j) = 0 ;

Model clplateb /all/;

Solve clplateb using nlp minimize f;


display x.l;
display f.l;
