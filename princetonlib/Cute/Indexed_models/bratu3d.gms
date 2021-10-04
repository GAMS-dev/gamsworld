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
*   Source: Problem 3 in
*   J.J. More',
*   "A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.
*
*   SIF input: Ph. Toint, Dec 1989.
*
*   classification NOR2-MN-V-V

$Set N 17
$Set M 16
Set i /i1*i%N%/;
Set j /j1*j%N%/;
Set k /k1*k%N%/;

Set inside_i(i) /i2*i%M% /;
Set inside_j(j) /j2*j%M% /;
Set inside_k(k) /k2*k%M% /;

parameter lambda; lambda = 6.80812       ;
parameter      h;      h = 1/(card(i)-1) ;
parameter      c;      c = h*h*lambda    ;

Variable u[i,j,k] , f ;

Equation  Eq_1(i,j,k) , Def_obj ;

Eq_1(i,j,k)$((inside_i(i)) and (inside_j(j)) and (inside_k(k)))..

(6*u[i,j,k]  -u[i+1,j,k]
             -u[i-1,j,k]
             -u[i,j+1,k]
             -u[i,j-1,k]
             -u[i,j,k-1]
             -u[i,j,k+1]  -c*exp(u[i,j,k]))=e=0;

 Def_obj.. f=e= 0 ;


 u.fx['i1',j,k]    = 0;
 u.fx['i%N%',j,k]  = 0;

 u.fx[i,'j%N%',k]  = 0;
 u.fx[i,'j1',k]    = 0;

 u.fx[i,j,'k1']    = 0;
 u.fx[i,j,'k%N%']  = 0;

 U.lo[i,j,k] =    0.0;
 U.up[i,j,k] =    1.0;
 U.l[i,j,k] = 0;

Model bratu3d /all/;

bratu3d.reslim = 99999;
bratu3d.iterlim= 99999;
bratu3d.workspace = 52;
Solve bratu3d using nlp minimize f;
display f.l;
display u.l;
