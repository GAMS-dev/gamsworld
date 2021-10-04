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

*   classification SBR2-AN-V-V


$Set n 1001
$Set n1 1000
$Set LN 900
$Set LN1 901
Set I /i0*i%n%/;
Set Left(i) /i0*i%n1%/;
Set Inside(i) /i1*i%LN%/;
Set Right(i) /i%LN1%*i%N1%/;

Parameter      A;      A  = -0.00009;
Parameter      B;      B  =  0.00001;

Parameter     UA;     UA  =   0.0;
Parameter     UB;     UB  = 700.0;

Parameter     CA;     CA  = 1000000*1000000  ;
Parameter     CB;     CB  = 1000000*10000000 ;
Parameter   BETA;   BETA  = 40.0;

Parameter LAMBDA; LAMBDA  = 1.0;

Parameter      H;      H  = (B-A)/(%N%);
Parameter     LB;     LB  = LAMBDA*BETA;
Parameter    LUA;    LUA  = LAMBDA*UA;
Parameter    LUB;    LUB  = LAMBDA*UB;
Parameter    ULW;    ULW  = LUA-1;
Parameter    UUP;    UUP  = LUB+1;
Parameter    A1;     A1  = LAMBDA*H*H*CA;
Parameter    B1;     B1  = LAMBDA*H*H*CB;


Variable u[i] , f ;

Equation  Def_obj ;

Def_obj..  f =e=
        sum{i$Inside(i), sqr(u[i-1]-2*u[i]+u[i+1]-A1+A1*exp(-LB*(u[i]-LUA )))} +
        sum{i$Right(i) , sqr(u[i-1]-2*u[i]+u[i+1]+B1-B1*exp( LB*(u[i]-LUB )))} ;

u.lo[i] = ULW;
u.up[i] = UUP;

u.l[i]      = 0.01;

u.fx['i0'] = LUA;
u.fx['i%N%'] = LUB;
option reslim = 6000 ;

Model scon1dls /all /;

Solve scon1dls  using nlp minimazing f ;

display f.l ;
display u.l ;
