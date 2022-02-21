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

*   classification QLR2-AN-V-V

$Set N 1000
Set i /i1*i%N%/;
$Set M 5
Set j /j1*j%M%/;

Variable     x[i], y[i],z[j],f   ;

Equation Eq_1,Eq_2[i],Def_obj;
Eq_1..      sum {i,(x[i] + y[i])} + sum {j,z[j]} =g= %M%+1    ;
Eq_2[i]..   x[i] - y[i] + sum{j,z[j]}            =e= %M%      ;
Def_obj..   f =e= sum{i,((ord(i)/%N%)*x[i]*y[i]) } + sum{j,(0.5*sqr(z[j]))} ;

x.up[i]  =     1.0    ;
y.up[i]  =     1.0    ;
z.up[j]  =     2.0    ;

x.lo[i]  =    -1.0    ;
y.lo[i]  =    -1.0    ;
z.lo[j]  =     0.0    ;

x.l[i]   =     0.99   ;
y.l[i]   =    -0.99   ;
z.l[j]   =     0.5    ;

Model blockqp4 /all/;

Solve blockqp4  using nlp minimize f;

display x.l;
display y.l;
display z.l;
display f.l;
