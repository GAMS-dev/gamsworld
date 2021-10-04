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

*   Source:
*   S. Ceria, private communication, 1995.

*   SIF input: Ph. Toint, Feb 1995.

*   classification NQR2-RN-9-9

$Set N 3
Set i /i1*i%N%/;

Alias(i,j,k,m);

parameter A(i,i);  A('i1','i1')= 0             ;
                   A('i2','i1')= 0.00000013725 ;
                   A('i3','i1')= 0             ;
                   A('i1','i2')= 0             ;
                   A('i2','i2')= 937.62        ;
                   A('i3','i2')= 0             ;
                   A('i1','i3')= 0             ;
                   A('i2','i3')= -42.207       ;
                   A('i3','i3')= 0             ;

parameter B(i,i);  B('i1','i1')= 0.0060893     ;
                   B('i2','i1')= 0.00000013880 ;
                   B('i3','i1')= -0.00000013877;
                   B('i1','i2')= -44.292       ;
                   B('i2','i2')= -1886.0       ;
                   B('i3','i2')= 42.362        ;
                   B('i1','i3')= 2.0011        ;
                   B('i2','i3')= 42.362        ;
                   B('i3','i3')= -2.0705       ;

parameter C(i,i);  C('i1','i1')= 0             ;
                   C('i2','i1')= 0             ;
                   C('i3','i1')= 0             ;
                   C('i1','i2')= 44.792        ;
                   C('i2','i2')= 948.21        ;
                   C('i3','i2')= -42.684       ;
                   C('i1','i3')= 0             ;
                   C('i2','i3')= 0             ;
                   C('i3','i3')= 0             ;

Variable    x(i,j),AXX(i,j),BX(i,j), f    ;

Equation Eq_1(i,j), Eq_2(i,j), Eq_3(i,j), Def_obj ;
Eq_1(i,j)..  AXX(i,j) =e= sum{m,((sum{k,(A[i,k]*X[k,m])})*X[m,j]) };
Eq_2(i,j)..   BX(i,j) =e= sum{k,(B[i,k]*X[k,j]) };
Eq_3(i,j)..   (AXX(i,j) + BX(i,j) + C(i,j)) =e= 0;
Def_obj.. f=e= 0;

* additional condition for GAMS model below
x.lo[i,j]=0;

X.l[i,j]=0;

Model coolhans /all/;

Solve coolhans using nlp minimize f;

display x.l;
display f.l;
