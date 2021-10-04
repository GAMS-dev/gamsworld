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

*   Source: Problem 8, eqs (8.6)--(8.9) in
*   J.J. More',
*   "A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.

*   SIF input: Ph. Toint, Dec 1989.
*     minor correction by Ph. Shott, Jan 1995 and F Ruediger, Mar 1997.

*   classification NOR2-MN-V-V
$Set N 2500
$Set M 2499

Set i /i1*i%N%/;
Set inside(i)  /i2*i%M%/;

parameter  pem  ;  pem   =  1.0  ;
parameter  peh  ;  peh   =  5.0  ;
parameter  d    ;  d     =  0.135;
parameter  b    ;  b     =  0.5  ;
parameter  beta ;  beta  =  2.0  ;
parameter  gamma;  gamma = 25.0  ;

parameter  h    ;  h     = 1/(%n%-1)                ;
parameter  cu1  ;  cu1   = -h*pem                   ;
parameter  cui1 ;  cui1  = 1/(h*h*pem)+1/h          ;
parameter  cui  ;  cui   = -1/h - 2/(h*h*pem)       ;
parameter  ct1  ;  ct1   = -h*peh                   ;
parameter  cti1 ;  cti1  = 1/(h*h*peh)+1/h          ;
parameter  cti  ;  cti   = -beta -1/h - 2/(h*h*peh) ;

Positive Variable  t[i], u[i]  ;
Variable f;

Equation Eq_1,Eq_2,Eq_3[i],Eq_4[i],Eq_5,Eq_6,Def_obj ;


Eq_1..  (cu1*u['i2']-u['i1']+h*pem) =e= 0;
Eq_2..  (ct1*t['i2']-t['i1']+h*peh) =e= 0;

Eq_3[i]$(inside(i))..  (-d*u[i]*exp(gamma-gamma/t[i]) +
                      (cui1)*u[i-1]    + cui*u[i] +u[i+1]/(h*h*pem)) =e= 0;

Eq_4[i]$(inside(i))..  (b*d*u[i]*exp(gamma-gamma/t[i])+
                      (cti1)*t[i-1]    + cti*t[i] +t[i+1]/(h*h*peh)) =e= 0;

Eq_5..  (u['i%n%']  -u['i%m%'])     =e= 0;
Eq_6..  (t['i%n%']  -t['i%m%'])     =e= 0;

Def_obj.. f =e= 0;

t.lo[i] = 0.0000001 ;
t.l[i]  = 1.0       ;
u.l[i]  = 1.0       ;
Model chemrcta /all/;

Solve chemrcta using nlp minimize f;


display t.l;
display u.l;
display f.l;
