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

*   Source:  problem 8, eqs (8.10)--(8.11) in
*   J.J. More',
*   "A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-MN-V-V

$Set N 1000
$Set M  999
Set i /i1*i%N%/;
Set inside(i) /i2*i%M%/;


parameter     pe;    pe =  5.0             ;
parameter      d;     d =   0.135          ;
parameter      b;     b =   0.5            ;
parameter  gamma; gamma =  25.0            ;

parameter      h;     h = 1/(%N%-1)        ;
parameter    ct1;   ct1 = -h*pe            ;
parameter   cti1;  cti1 =  1/h +1/(h*h*pe) ;
parameter    cti;   cti = -1/h -2/(h*h*pe) ;


Variable t(i) , f ;


Equation Eq_1, Eq_2(i), Eq_3, Def_obj ;

Eq_1..  (ct1*t['i2']-t['i1']+h*pe) =e= 0;
Eq_2(i)$inside(i)..   (  d*(b+1-t[i])*exp(gamma-gamma/t[i])+
                                       cti1*t[i-1]+cti*t[i]+
                                            t[i+1]/(h*h*pe)  ) =e= 0;
Eq_3..  (t['i%N%']-t['i%M%'])      =e= 0;

Def_obj..                        f =e= 0;

t.lo(i) = 0.0000001 ;
t.l(i)  = 1.0       ;

Model chemrctb /all/;

Solve chemrctb using nlp minimize f;

display t.l;
display f.l;
