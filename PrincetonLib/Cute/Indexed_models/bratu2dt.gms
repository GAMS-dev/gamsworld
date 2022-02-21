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
*
*   Source: problem 3 in
*   J.J. More',
*   "A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-MN-V-V

$Set N 72
$Set M 71
Set i /i1*i%N%/;
Set j /j1*j%N%/;

Set inside_i(i) /i2*i%M% /;
Set inside_j(j) /j2*j%M% /;


parameter lambda; lambda = 6.80812       ;
parameter      h;      h = 1/(card(i)-1) ;
parameter      c;      c = h*h*lambda    ;

Variable U[i,j] , f ;

Equation  Eq_1 , Def_obj ;

Eq_1(i,j)$((inside_i(i)) and (inside_j(j)))..
          (4*u[i,j]-u[i+1,j]-u[i-1,j]-u[i,j+1]-u[i,j-1]-c*exp(u[i,j]))=e=0;

Def_obj.. f=e= 0 ;
 u.lo[i,j] =  0;
 u.up[i,j] =  2;
 U.l[i,j] = 0;

 u.fx['i1',j]    = 0;
 u.fx['i%N%',j]  = 0;

 u.fx[i,'j%N%']  = 0;
 u.fx[i,'j1']    = 0;


Model bratu2dt /all/;


Solve bratu2dt using nlp minimize f;


display f.l;
display u.l;
