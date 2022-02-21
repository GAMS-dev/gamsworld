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

$Set nx 101
$Set ny 101

Set i /i0*i%nx%/;
Set j /j0*j%ny%/;


$Set nx1 i100
$Set ny1 j100

$Set nx2 i99
$Set ny2 j99


Set inside_i(i) /i1*i99/;
Set inside_j(j) /j1*j99/;

Set in_i(i) /i2*i99/;
Set in_j(j) /j2*j99/;

Variable     x[i,j],y[i,j],f ;

Equation Eq_1(i,j),Eq_2(i),Eq_3(i),Eq_4(j),Eq_5(j),Def_obj;


Eq_1(i,j)$((in_i(i)) and (in_j(j)))..
                    (x[i,j] - x[i-1,j])+ (y[i,j] - y[i,j-1] )-1 =e= 0;

Eq_2(i)$(in_i(i))..
         x[i,'j0'] + (x[i,'j1'] - x[i-1,'j1'] ) + y[i,'j1']-1 =e= 0;

Eq_3(i)$(in_i(i))..
         x[i,'j%ny%'] + (x[i,'%ny1%'] - x[i-1,'%ny1%']) - y[i,'%ny2%']-1=e= 0;

Eq_4(j)$(in_j(j))..
         y['i0',j] + (y['i1',j] - y['i1',j-1] ) + x['i1',j]-1 =e= 0;
Eq_5(j)$(in_j(j))..
         y['i%nx%',j] + (y['%nx1%',j] - y['%nx1%',j-1]) - x['%nx2%',j]-1=e= 0;


Def_obj.. f=e=
              (   sum{(i,j)$((inside_i(i)) and (inside_j(j))), sqr(x[i,j] -1)}
                + sum{(i,j)$((inside_i(i)) and (inside_j(j))), sqr(y[i,j] -1)}

                + sum{i$(inside_i(i)),sqr(x[i,'%ny1%'] - 1)}
                + sum{j$(inside_j(j)),sqr(y['%nx1%',j] - 1)}
              )
               / 2;


Model aug2d /all/;

Solve aug2d using nlp minimize f;

display x.l;
display f.l;
