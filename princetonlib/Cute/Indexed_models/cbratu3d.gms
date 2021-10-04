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

*   Source: Problem 3 in
*   J.J. More',
*   "A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-MN-V-V

$Set p 10
Set i /i1*i%p%/;
Set j /j1*j%p%/;
Set k /k1*k%p%/;

Set inside(i,j,k);

    inside(i,j,k) = yes$((ord(i) ne 1) and (ord(i) ne card(i))and
                         (ord(j) ne 1) and (ord(j) ne card(j))and
                         (ord(k) ne 1) and (ord(k) ne card(k))   );

parameter lambda; lambda =  6.80812  ;
parameter h     ; h      = 1/(%p%-1) ;
parameter c     ; c      = h*h/lambda;

Variable u[i,j,k],  x[i,j,k], f ;

Equation Eq_1(i,j,k), Eq_2(i,j,k), Def_obj ;
Eq_1(i,j,k)$(inside(i,j,k))..
(6*u[i,j,k]-u[i+1,j,k]-u[i-1,j,k]-u[i,j+1,k]-u[i,j-1,k]-u[i,j,k-1]-u[i,j,k+1]
                                         -c*exp(u[i,j,k])*cos(x[i,j,k])) =e= 0;

Eq_2(i,j,k)$(inside(i,j,k))..
(6*x[i,j,k]-x[i+1,j,k]-x[i-1,j,k]-x[i,j+1,k]-x[i,j-1,k]-u[i,j,k-1]-u[i,j,k+1]
                                         -c*exp(u[i,j,k])*sin(x[i,j,k])) =e= 0;

Def_obj.. f=e=0;


u.fx['i1',j,k]=0;    u.fx['i10',j,k]=0;
x.fx['i1',j,k]=0;    x.fx['i10',j,k]=0;

u.fx[i,'j1',k]=0;    u.fx[i,'j10',k]=0;
x.fx[i,'j1',k]=0;    x.fx[i,'j10',k]=0;

u.fx[i,j,'k1']=0;    u.fx[i,j,'k10']=0;
x.fx[i,j,'k1']=0;    x.fx[i,j,'k10']=0;

u.l[i,j,k]=0;
x.l[i,j,k]=0;

Model cbratu3d /all/;

Solve cbratu3d  using nlp minimize f;

display u.l,x.l;
display f.l;
