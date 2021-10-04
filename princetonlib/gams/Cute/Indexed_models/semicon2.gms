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

*   Source: problem 10 in
*   J.J. More',
*   "A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-AN-V-V

$Set   N1 1001
$Set   N  1000
$Set  LN   900
$Set  LN1  901

Set I /i0*i%N1%/;
Set Inside(I) /i1*i%N%/;
Set Left(I)   /i1*i%LN%/;
Set Right(I)  /i%LN1%*i%N%/;


Parameter A ; A = -0.00009 ;
Parameter B ; B =  0.00001 ;


Parameter      UA ;     UA = 0.0;
Parameter      UB ;     UB = 700.0;

Parameter      CA ;     CA = 1.0*power(10,12);
Parameter      CB ;     CB = 1.0*power(10,13);
Parameter    BETA ;   BETA = 40.0;
                  ;
Parameter  LAMBDA ; LAMBDA = 0.2;

Parameter       H ;      H = (B-A)/(%N1%);
Parameter      LB ;     LB = LAMBDA*BETA;
Parameter     LUA ;    LUA = LAMBDA*UA;
Parameter     LUB ;    LUB = LAMBDA*UB;
Parameter     ULW ;    ULW = LUA-5;
Parameter     UUP ;    UUP = LUB+5;


Variable u(i) , f ;
Equation cons(i) , cons2(i) , Def_obj ;

cons(i)$Left(i)..
(u[i-1]-2*u[i]+u[i+1]-LAMBDA*H*H*CA + LAMBDA*H*H*CA*exp(-LB*(u[i]-LUA)))=e= 0 ;
 cons2(i)$Right(i)..
(u[i-1]-2*u[i]+u[i+1]+LAMBDA*H*H*CB - LAMBDA*H*H*CB*exp(LB*(u[i]-LUB))) =e= 0 ;

Def_obj.. f =e= 0 ;

u.lo[i]   = ULW ;
u.up[i]   = UUP ;

u.l[i]     = 0   ;
u.fx['i0']   = LUA ;
u.fx['i%N%'] = LUB ;


Model semicon2  /all/ ;

Solve semicon2 using nlp minimazing f ;

display f.l; display u.l;
