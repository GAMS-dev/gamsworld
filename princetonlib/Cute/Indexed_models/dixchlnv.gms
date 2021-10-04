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

*   Source: a modification (by Ph. Toint) of
*   L.C.W. Dixon, personnal communication, Jan 1991.

*   SIF input: Ph. Toint, Feb 1991.

*   classification SOR2-AN-V-V

$Set N 10
Set i /i1*i%N%/;
Set inside(i);
    inside(i) =yes$(mod(ord(i),2)=0);

Alias(i,j);

Variable      x[i], f    ;

Equation  Eq_1(i),Def_obj ;

Eq_1(i)$inside(i).. (sum{j$(ord(j) <= ord(i)),log(x[j])})  =e= 0;

Def_obj.. f=e=sum{i$(ord(i) < card(i)-2),
                    (100  *sqr(x[i+1]-sqr(x[i]))   + sqr(x[i]  -1.0)     +
                      90  *sqr(x[i+3]-sqr(x[i+2])) + sqr(x[i+2]-1.0)     +
                      10.1*sqr(x[i+1]-1.0)         + 10.1*sqr(x[i+3]-1.0)+
                      19.8*((x[i+1]-1.0)*(x[i+3]-1.0)))                   };
x.lo[i]  = 1e-8;

x.l[i]$(not inside(i))      =    (ord(i)+1) ;
x.l[i]$(    inside(i))      =  1/(ord(i)+1) ;

Model dixchlnv /all/;

Solve dixchlnv using nlp minimize f;

display inside;
display x.l;
display f.l;
