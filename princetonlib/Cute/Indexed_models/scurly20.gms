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

*   Source: Nick Gould

*   SIF input: Nick Gould, September 1997.

*   classification SUR2-AN-V-0

$Set N     4000
$Set N10   3980
$Set N11   3981
Set I  / i1*i%N% / ;
Set Left(i) / i1*i%N10% / ;
Set Right(i) /i%N11%*i%N% / ;

Parameter sc ; sc = 12.0;
Parameter scale[i] ; scale[i] = exp((ord(i)-1)*sc/(%N%-1));

Alias(i,j);

Variable x[i] , y[i] , z[i] , f ;

Equation Eq_1(i) , Eq_2(i) , Def_obj ;

Eq_1(i)$Left(i)..
y[i] =e= sum{j$((ord(j) ge ord(i))and(ord(j) ge ord(i)+10)),x[j]*scale[j]};
Eq_2(i)$Right(i)..
z[i] =e= sum{j$(ord(j) ge ord(i))                          ,x[j]*scale[j]};

Def_obj..  f =e={ sum{i$Left(i) , (y[i]*(y[i]*(y[i]*y[i]-20)-0.1))} +
                  sum{i$Right(i), (z[i]*(z[i]*(z[i]*z[i]-20)-0.1))}  }*1.0e-17 ;

x.lo[i] = -10.0 ;
x.up[i] =  10.0 ;

x.l[i] = 0.0001*scale[i]/(%N%+1) ;

Model scurly20 /all/ ;

Solve scurly20  using nlp minimazing f ;
f.l=f.l*1.0e+17;
Display x.l ;
Display f.l ;
