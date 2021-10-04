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

$Set N  1000
$Set M   500
$Set NPLUS  250
$Set NPLUS1 251
Set I  / i1*i%N% / ;
Set Left_1(i) / i1*i%M% / ;
Set Left_2(i) / i1*i%NPLUS% / ;
Set Right(i) / i%NPLUS1%*i%N% / ;

Alias(i,j) ;

Variable x[i] , f ;

Equation cons1(i) , Def_obj ;

cons1(i)$Left_1(i)..

        x[i]+2*
                sum(j$(ord(j) eq {mod({4*ord(i)-1},%N%)+1}),x[j])  +3.0 *
                sum(j$(ord(j) eq {mod({5*ord(i)-1},%N%)+1}),x[j])  -6.0 =e= 0 ;


Def_obj..  f =e={
        sum{i$Left_2(i),
                        sqr(x[i] +
                    sum(j$(ord(j) eq {mod({2*ord(i)-1},%N%)+1}),x[j]) +
                    sum(j$(ord(j) eq {mod({3*ord(i)-1},%N%)+1}),x[j])) *
                                                         ord(i) / 2 } -
        sum{i$Right(i),
                        sqr(x[i] +
                    sum(j$(ord(j) eq {mod({2*ord(i)-1},%N%)+1}),x[j]) +
                    sum(j$(ord(j) eq {mod({3*ord(i)-1},%N%)+1}),x[j])) *
                                                         ord(i) / 2 }
                 }/10  ;

x.lo[i] =  0.1 ;
x.up[i] = 10.0 ;
x.l[i] =   0.5 ;

Model ncvxqp1 /all/ ;

Solve ncvxqp1  using nlp minimazing f ;
f.l=f.l*10;
Display x.l ;
Display f.l ;
