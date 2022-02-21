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
*   M.J.D. Powell,
*   "A tolerant algorithm for linearly constrained optimization
*   calculations"'
*   Mathematical Programming 45(3), pp.561--562, 1989.

*   SDIF input: Ph. Toint and N. Gould, May 1990.

*   classification OLR2-AN-5-22


$Set R 11
Set i /i1*i%R%/;

$Set N 2
Set j /j0*j%N%/;

parameter  T(i);  T(i) = 5*(ord(i)-1)/(%R%-1);
parameter ET(i); ET(i) = exp(T[i])           ;

parameter pinit(j) /j0 1, j1 1, j2 6  /;

Variable P(j) , Q(j) , f ;

Equation cons1(i),  cons2(i),   Def_obj ;

cons1(i).. P['j0']+P['j1']*T[i]+P['j2']*sqr(T[i])   -
                             (T[i]-5)*ET[i]*Q['j1'] -
                        sqr(T[i]-5)*ET[i]*Q['j2']   - ET[i] =g= 0;

cons2(i).. (T[i]-5)*Q['j1'] + sqr(T[i]-5)*Q['j2']+0.99999   =g= 0;

Def_obj.. f =e=sum {i, sqr(  (P['j0']+P['j1']*T[i]+P['j2']*sqr(T[i]))/
                             (ET[i]*(1+Q['j1']*(T[i]-5)+Q['j2']*sqr(T[i]-5)))
                        -1)      };

P.l(j) = pinit(j) ;
Q.l(j) = 0        ;

Model expfita /all/;

Solve expfita using nlp minimize f;


display f.l ;
display P.l , Q.l ;
