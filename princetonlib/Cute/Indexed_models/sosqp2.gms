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

$Set N 10000
$Set M  5000

Set i / i1*i%N% / ;

Variable x[i] , y[i] , f ;

Equation cons1(i) , cons2 , Def_obj ;

cons1(i).. ord(i)*x[i]-y[i] =e= ord(i) ;

cons2..    sum{i,(x[i]+y[i])} =e= %M% ;

Def_obj..  f =e= sum{i, x[i]*y[i] };

y.lo[i] = -1.0 ;
x.lo[i] = -1.0 ;

y.up[i] =  1.0 ;
x.up[i] =  1.0 ;
option reslim = 10000
Model sosqp2 / all / ;

Solve sosqp2 using nlp minimazing f ;

display f.l;
display x.l;
