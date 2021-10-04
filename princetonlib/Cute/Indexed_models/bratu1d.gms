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

*   Source: Problem 121 (p. 99) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OXR2-MN-V-0

$Set N 1002
$Set M 1001
$Set P 1000
Set i /i0*i%N%/;
Set inside(i) /i1*i%M%/;

parameter lambda; lambda  = -3.4       ;
parameter h     ;      h  =  1/(%N%) ;

Variable      x[i], f    ;
Equation      Def_obj    ;

Def_obj.. f=e= (2*lambda*h*(exp(x['i1'])-exp(x['i0']))/(x['i1']-x['i0'])+
                               sum {i$inside(i), (2*  sqr(x[i])/h     )}
                             - sum {i$inside(i), (2*x[i]*x[i-1]/h     )}
   + sum{i$inside(i),(2*lambda*h*(exp(x[i+1])-exp(x[i]))/(x[i+1]-x[i]))})*
    0.00001             ;

x.l[i]$inside(i) = -0.1*h*sqr(ord(i)-1);
x.fx['i0']       = 0;
x.fx['i%N%']     = 0;

Model bratu1d /all/;


bratu1d.reslim = 99999;
bratu1d.iterlim= 99999;
Solve bratu1d  using nlp minimize f;
f.l=f.l*100000;
display x.l;
display f.l;
