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
*   L.C.W. Dixon, personnal communication, Jan 1991.

*   SIF input: Ph. Toint, Feb 1991.

*   classification SOR2-AN-10-5


$Set N 10
Set i /i1*i%N%/;
Alias(i,j);
Set in_1_7(i) /i1*i7/;

Set inside(i);
    inside(i) =yes$(mod(ord(i),2)=0);

parameter x_init[i] /i1 -2   ,i2 -0.5 ,i3 3       ,i4 0.33333, i5 -4,
                     i6 -0.25,i7  5   ,i8 0.2     ,i9 -6     , i10 -0.16667/;

Variable      x[i], f    ;
Equation  Eq_1(i),Def_obj ;


Eq_1(i)$inside(i).. (prod{j$(ord(j) <= ord(i)),x[j]}) - 1 =e= 0;

Def_obj.. f=e=   sum{i$in_1_7(i), 100*sqr(x[i+1]-sqr(x[i])) }
               + sum{i$in_1_7(i), sqr(x[i]-1)               }
               + sum{i$in_1_7(i), 90*sqr(x[i+3]-sqr(x[i+2]))}
               + sum{i$in_1_7(i), sqr(x[i+2]-1)             }
               + sum{i$in_1_7(i), 10.1*sqr(x[i+1]-1)        }
               + sum{i$in_1_7(i), 10.1*sqr(x[i+3]-1)        }
               + sum{i$in_1_7(i), 19.8*(x[i+1]-1)*(x[i+3]-1)} ;

x.l[i]  =  x_init[i];

Model dixchlng /all/;

Solve dixchlng using nlp minimize f;

display inside;
display x.l;
display f.l;
