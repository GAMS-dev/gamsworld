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
*   M. Aljazzaf,
*   "Multiplier methods with partial elimination of constraints for
*   nonlinear programming",
*   PhD Thesis, North Carolina State University, Raleigh, 1990.

*   SDIF input: Ph. Toint, May 1990.

*   classification QQR2-AN-3-1
$Set N 3
Set i /1*%N%/;

Set N1(i) /2/;
parameter Biga ; Biga  = 100.0                                ;
parameter F_big; F_big = (sqr(Biga)-1.0) / (card(i)-1)        ;
parameter F2   ; F2    = (sqr(Biga)-1.0) / (Biga*(card(i)-1)) ;
parameter a[i] ; A[i]  =  Biga-(ord(i)-1)*F2                  ;
parameter b[i] ; B[i]  = (ord(i)-1)*F_big+1.0                 ;

Positive Variable     X[I];
Variable              f   ;

Equation Eq_1,Def_obj;
Eq_1..    -B['1']*x['1']+B['1']+
                        sum{i$N1(i)             ,(B[i]*sqr(x[i]-0.0))}+
                        sum{i$(ord(i) = card(i)),(B[i]*sqr(x[i]-1.0))} =e= 0;
Def_obj.. f=e= A['1']*sqr(x['1']-0.5) +
                        sum{i$N1(i),             (A[i]*sqr(x[i]+1.0))}+
                        sum{i$(ord(i) = card(i)),(A[i]*sqr(x[i]-1.0))}      ;
x.l[i]  =     0.0    ;
Model aljazzaf /all/;

Solve aljazzaf using nlp minimize f;

display A, B, F_big, F2;
display x.l;
display f.l;
