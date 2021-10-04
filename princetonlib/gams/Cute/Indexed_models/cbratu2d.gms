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

*   Source: problem 3 in
*   J.J. More',
*   "A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-MN-V-V

$Set N 23
$Set M 22
Set i /i1*i%N%/;
Set inside_i(i) /i2*i%M%/;
Set j /j1*j%N%/;
Set inside_j(j) /j2*j%M%/;

parameter  lambda; lambda = 5.0           ;
parameter       h;      h = 1/(%M%)       ;
parameter       c;      c = sqr(h)/lambda ;

Variable     x[i,j] , u[i,j] , f    ;

Equation Eq_1(i,j), Eq_2(i,j), Def_obj ;
Eq_1(i,j)$((inside_i(i)) and (inside_j(j)))..
    (4*u[i,j]-u[i+1,j]-u[i-1,j]-u[i,j+1]-u[i,j-1]-c*exp(u[i,j])*cos(x[i,j]))=e=0;

Eq_2(i,j)$((inside_i(i)) and (inside_j(j)))..
    (4*x[i,j]-x[i+1,j]-x[i-1,j]-x[i,j+1]-x[i,j-1]-c*exp(u[i,j])*sin(x[i,j]))=e=0;
Def_obj.. f=e=0;

u.fx['i1',j]   = 0.0 ;
u.fx['i%n%',j] = 0.0 ;
x.fx['i1',j]   = 0.0 ;
x.fx['i%n%',j] = 0.0 ;

u.fx[i,'j%n%'] = 0.0 ;
u.fx[i,'j1']   = 0.0 ;
x.fx[i,'j%n%'] = 0.0 ;
x.fx[i,'j1']   = 0.0 ;

x.l[i,j] = 0;
u.l[i,j] = 0;

Model cbratu2d /all/;

Solve cbratu2d using nlp minimize f;

display x.l,u.l;
display f.l;
