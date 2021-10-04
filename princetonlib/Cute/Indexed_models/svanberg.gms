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
*   Svanberg K.,
*   "Method of moving asymptots - a new method for structural optimization",
*   Int.J. Num. Meth. Eng, 24, pp. 359--373, 1987

*   SIF input: Ph. Toint, June 1990.

*   classification OOR2-MN-V-V

$SET N 5000
SET i /i1*i%N%/;

param b{i in 1..n} := i*5/n + 10;

param a{i in 1..n} := if ( (i mod 2) == 1 ) then (i*2/n + 1) else (5 - i*3/n);

Equation cons1[i] , cons2 , cons3 , cons4 , cons5     ,
         cons6    , cons7 , cons8 , cons9 , cons10[i] , Def_obj ;

Def_obj..  f =e=sum {i in 1..n-1 by 2} (a[i]/(1+x[i])) + sum {i in 2..n by 2} (a[i]/(1-x[i]));


x.lo = -0.8 ;
x.up =  0.8 ;
x.l  =  0.0 ;

Model svanberg /all/ ;
Solve svanberg  using nlp minimazing f ;

display f.l; display x.l;


subject to cons1{i in 6..n-4 by 2}:1/(1-x[i-4]) + 1/(1+x[i-3]) + 1/(1+x[i-2]) + 1/(1-x[i-1]) + 1/(1+x[i]) +1/(1+x[i+1]) + 1/(1-x[i+2]) + 1/(1+x[i+3]) + 1/(1-x[i+4]) <= b[i];


cons10{i in 5..n-5 by 2}: 1/(1+x[i-4]) + 1/(1-x[i+3]) + 1/(1-x[i-2]) + 1/(1+x[i-1]) + 1/(1-x[i]) +1/(1-x[i+1]) + 1/(1+x[i+2]) + 1/(1-x[i+3]) + 1/(1+x[i+4]) <= b[i];


cons2.. 1/(1-x['i1']) + 1/(1-x['i2'])   + 1/(1+x['i3'])   + 1/(1-x['i4'])   +
        1/(1+x['i5']) + 1/(1+x['in-3']) + 1/(1-x['in-2']) + 1/(1-x['in-1']) +
        1/(1+x['in']) <= b['i1'];
cons3.. 1/(1-x['i1']) + 1/(1+x['i2']) + 1/(1+x['i3']) + 1/(1-x['i4']) + 1/(1+x['i5']) + 1/(1-x['i6']) + 1/(1-x['in-2']) + 1/(1+x['in-1']) + 1/(1+x['in']) <= b['i2'];
cons4.. 1/(1-x['i1']) + 1/(1+x['i2']) + 1/(1-x['i3']) + 1/(1-x['i4']) + 1/(1+x['i5']) + 1/(1-x['i6']) + 1/(1+x['i7']) + 1/(1+x['in-1']) + 1/(1-x['in']) <= b['i3'];
cons5.. 1/(1+x['i1']) + 1/(1+x['i2']) + 1/(1-x['i3']) + 1/(1+x['i4']) + 1/(1+x['i5']) + 1/(1-x['i6']) + 1/(1+x['i7']) + 1/(1-x['i8']) + 1/(1-x['in']) <= b['i4'];

cons6.. 1/(1+x['i1']) + 1/(1+x['in-7']) + 1/(1-x['in-6']) + 1/(1-x['in-5']) + 1/(1+x['in-4']) +1/(1-x['in-3']) + 1/(1-x['in-2']) + 1/(1+x['in-1']) + 1/(1-x['in']) <= b['in-3'];

cons7.. 1/(1+x['i1']) + 1/(1-x['i2']) +  1/(1-x['in-6']) + 1/(1+x['in-5']) + 1/(1+x['in-4']) +1/(1-x['in-3']) + 1/(1+x['in-2']) + 1/(1+x['in-1']) + 1/(1-x['in']) <= b['in-2'];
cons8.. 1/(1+x['i1']) + 1/(1-x['i2']) +  1/(1+x['i3']) + 1/(1+x['in-5']) + 1/(1-x['in-4']) +1/(1-x['in-3']) + 1/(1+x['in-2']) + 1/(1-x['in-1']) + 1/(1-x['in']) <= b['in-1'];
cons9.. 1/(1+x['i1']) + 1/(1-x['i2']) +  1/(1+x['i3']) + 1/(1-x['i4']) + 1/(1-x['in-4']) +1/(1+x['in-3']) + 1/(1+x['in-2']) + 1/(1-x['in-1']) + 1/(1+x['in']) <= b['in'];
