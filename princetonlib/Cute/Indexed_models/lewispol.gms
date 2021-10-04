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
*   A. Lewis, private communication.

*   SIF input: A.R. Conn and Ph. Toint, March 1990.

*   classification QOR2-AN-6-9

$Set N  5
$Set DEG  2
Set I  / i0*i%N% / ;
Set Left(i) / i0*i%DEG% / ;
Alias(i,j);

Parameter a_init[i] / i0 -1 , i1  1 , i2  1 , i3  0 , i4  1 , i5  -1 / ;
Parameter PEN ; PEN = 1000 ;
Parameter  c(j,i) ;
c('i0',i) =            1 ;
c('i1',i) =     ord(i)-1 ;
c('i2',i) = sqr(ord(i)-1);


Parameter  ct(i) ;
 ct('i0') =   -1 ;
 ct('i1') =   -6 ;
 ct('i2') =  -30 ;


Variable epsi, a[i] , f ;

Equation
cons1 ,
cons2(i) ,
cons3(i) ,
Def_obj ;

cons1..            (sum{i, a[i]*c['i0',i] } - ct['i0']) =e= 0;

cons2(i)$Left(i).. sqr(sum{j$(ord(j) ge ord(i)), a[j]*c[i,j] } - ct[i]) =e= 0 ;

cons3(i)..         (power(a[i],3)-a[i]) / PEN =l= epsi;

Def_obj..  f =e= sum{i, sqr(a[i])}+ (sqr(epsi));


a.lo[i] = -1.00 ;
a.up[i] =  1.00 ;
a.l[i] = a_init[i];


epsi.lo:=0.0;
epsi.up:=1;

Model lewispol /all/ ;

Solve lewispol using nlp minimazing f ;

display f.l ;
display a.l ;
