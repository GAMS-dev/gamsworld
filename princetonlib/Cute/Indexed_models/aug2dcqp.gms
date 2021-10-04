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

*   classification QLR2-AN-V-V

$Set NX1  101
$Set NX   100
$Set NX0   99
Set I  / i0*i%NX1% / ;
Set Inside_i(i)  / i1*i%NX% / ;
Set Inside_i1(i) / i1*i%NX0% / ;
Set Inside_i2(i) / i2*i%NX0% / ;
$Set NY1  101
$Set NY   100
$Set NY0   99
Set j  / j0*j%NY1% / ;
Set Inside_j(j)  / j1*j%NY% / ;
Set Inside_j1(j) / j1*j%NY0% / ;
Set Inside_j2(j) / j2*j%NY0% / ;

Variable x[i,j] , y[i,j] , f ;

Equation v1(i,j) , v2(i) , v3(i) , v4(j) ,  v5(j) , Def_obj ;

v1(i,j)$((Inside_i2(i))and(Inside_j2(j))).. (x[i,j]  -x[i-1,j]) + (y[i,j] - y[i,j-1]) -1 =e= 0;
v2(i)$(Inside_i2(i)).. x[i,'j0']     +(x[i,'j1']    -x[i-1,'j1'])    +y[i,'j1']     -1 =e= 0;
v3(i)$(Inside_i2(i)).. x[i,'j%ny1%'] +(x[i,'j%ny%'] -x[i-1,'j%ny%']) -y[i,'j%ny0%'] -1 =e= 0;
v4(j)$(Inside_j2(j)).. y['i0',j]     +(y['i1',j]    -y['i1',j-1])    +x['i1',j]     -1 =e= 0;
v5(j)$(Inside_j2(j)).. y['i%nx1%',j] +(y['i%nx%',j] -y['i%nx%',j-1]) -x['i%nx0%',j] -1 =e= 0;

Def_obj..  f =e=
        ( sum{(i,j)$((Inside_i2(i))and(Inside_j2(j) )), sqr(x[i,j] - 1) }
        + sum{(i,j)$((Inside_i2(i))and(Inside_j2(j) )), sqr(y[i,j] - 1) }
        + sum{i$Inside_i2(i), sqr(x[i,'j%ny%']     - 1 ) }
        + sum{j$Inside_j2(j), sqr(y['i%nx%',j]     - 1 ) }
        + sum{i$Inside_i1(i), sqr(x[i,'j0']        - 1 ) }
        + sum{i$Inside_i1(i), sqr(x[i,'j%ny1%']    - 1 ) }
        + sum{j$Inside_j1(j), sqr(y['i0',j]        - 1 ) }
        + sum{j$Inside_j1(j), sqr(y['i%nx1%',j]    - 1 ) }
        )/2/1000000;

x.lo[i,j]$Inside_j(j) = 0 ;
y.lo[i,j]$Inside_i(i) = 0 ;

x.lo[i,'j%NY%']$Inside_i(i) = 1.0 ;
y.lo['i%NX%',j]$Inside_j(j) = 1.0 ;

Model aug2dcqp /all/ ;

Solve aug2dcqp using nlp minimazing f ;

f.l  =  f.l*1000000 ;
Display x.l ;
Display y.l ;
Display f.l ;
