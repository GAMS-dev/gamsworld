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

*   Source: Problem 9 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley#28
*   SIF input: Ph. Toint, Dec 1989.

*   classification NOR2-AN-3-15

$Set N 3
Set i /1*%N%/;
$Set M 15
Set j /1*%M%/;

parameter xinit[i] /1 0.4,2 1.0 ,3  0/;
parameter  rhs[j] / 1 0.0009, 2 0.0044, 3 0.0175, 4 0.0540, 5 0.1295,
                    6 0.2420, 7 0.3521, 8 0.3989, 9 0.3521,10 0.2420,
                   11 0.1295,12 0.0540,13 0.0175,14 0.0044,15 0.0009 /;

Variable  x[i],   f   ;

Equation Eq_1[j],Def_obj;

Eq_1[j]..  x['1']*exp(-0.5*x['2']*sqr(0.5*(8-ord(j))-x['3'])) =e= rhs[j];
Def_obj..                                                   f =e= 0 ;

x.l['1']=xinit['1'];
x.l['2']=xinit['2'];
x.l['3']=xinit['3'];

Model argauss /all/;

Solve argauss using nlp minimize f;

display x.l;
display f.l;
