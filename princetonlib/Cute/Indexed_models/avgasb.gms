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

*   classification QLR2-AN-8-10

$Set N 8
$Set M 7
Set i /i1*i%N%/;
Set first(i)  /i1*i%M%/;
Set second(i) /i2*i%N%/;

Set i_one(i)  /i1,i3,i5,i7/;
Set i_two(i)  /i2,i4,i6,i8/;

parameter a[i] /i1  2.0,i2  2.0,i3  2.0,i4  2.0,i5  2.0,i6  2.0,i7  2.0,i8  2.0/ ;
parameter b[i] /i1 -1.0,i2 -1.0,i3 -1.0,i4 -1.0,i5 -1.0,i6 -1.0,i7 -1.0        / ;
parameter c[i] /        i2 -2.0,i3 -1.0,i4 -3.0,i5 -2.0,i6 -4.0,i7 -3.0,i8 -5.0/ ;

Positive Variable     x[i];
Variable              obj ;

Equation Eq_1[i],Eq_2_a,Eq_2_b,Eq_3,Eq_4,Eq_5,Eq_6,Def_obj;

Eq_1[i]$i_one(i)..              x[i]+x[i+1]  =l= 1.0                    ;
Eq_2_a..              sum{i$i_one(i), x[i]}  =l= 2.0                    ;
Eq_2_b..              sum{i$i_two(i), x[i]}  =l= 2.0                    ;
Eq_3..      0  =l= 2.0*x['i1'] +     x['i3'] -     x['i7']              ;
Eq_4..      0  =l= 5.0*x['i1'] + 3.0*x['i3'] - 3.0*x['i5'] -     x['i7'];
Eq_5..      0  =l=     x['i2'] -     x['i4'] - 3.0*x['i6'] - 5.0*x['i8'];
Eq_6..      0  =l=     x['i2'] - 3.0*x['i6'] - 2.0*x['i8']              ;

Def_obj.. obj  =e=    sum {i,          (a[i]*sqr(x[i]))  } +
                      sum {i$first(i), (b[i]*x[i]*x[i+1])} +
                      sum {i$second(i),(c[i]*x[i])       }              ;

x.l[i]=0.5;
x.fx['i6']=0.0;
x.fx['i8']=0.0;

Model avgasb /all/;

Solve avgasb  using nlp minimize obj;

display x.l;
display obj.l;
