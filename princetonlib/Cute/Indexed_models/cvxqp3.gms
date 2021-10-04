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

$Set N  10000
$Set M   7500
Set I  / i1*i%N% / ;
Set Left(i) / i1*i%M% / ;
Alias(i,j);

Variable x[i] , f ;

Equation cons1(i) , Def_obj ;


cons1(i)$Left(i)..
 x[i]+2*
                      sum{j$((mod((4*ord(i)-1),%N%)+1) eq ord(j)),x[j]}  + 3*
                      sum{j$((mod((5*ord(i)-1),%N%)+1) eq ord(j)),x[j]}  - 6.0 =e= 0;


Def_obj..
f =e=   sum{i,  sqr(x[i]+
                           sum{j$((mod((2*ord(i)-1),%N%)+1) eq ord(j)),x[j]} +
                           sum{j$((mod((3*ord(i)-1),%N%)+1) eq ord(j)),x[j]}
                    ) * ord(i)/2 }/1000;

x.lo[i] =  0.1 ;
x.up[i] = 10.0 ;
x.l[i]  =  0.5 ;

Model cvxqp3 /all/ ;

Solve cvxqp3 using nlp minimazing f ;
f.l =f.l*1000;
Display x.l ;
Display f.l ;
