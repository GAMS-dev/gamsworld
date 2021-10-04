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

*   Source:  Problem 29 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   SIF input: Ph. Toint, Feb 1990.

*   classification NOR2-AN-V-V

$Set N 101
$Set M 100
Set i /i0*i%N%/;
Alias(i,j);
Set inside(i) /i1*i%M%/;

parameter h    ;  h    = 1/(%M%+1)     ;
parameter t(i) ;  t(i) = (ord(i)-1)*h  ;

Variable x(i) , f ;
Equation cons(i) , Def_obj ;

cons(i)$inside(i)..
  x[i]+h*((1-t[i])*sum{j$((ord(j) le ord(i))and(ord(j) ne 1)),
                       (   t[j] *(x[j]+power((t[j]+1),3)))}+
             t[i] *sum{j$(ord(j) gt ord(i)),
                       ((1-t[j])*power((x[j]+t[j]+1),3))  })/2 =g= 0;

Def_obj..  f =e= 0 ;

x.l[i]  = t[i]*(t[i]-1) ;

x.fx['i0']   = 0 ;
x.fx['i%N%'] = 0 ;

Model integreq /all/;

Solve integreq using nlp minimize f ;

display   x.l               ;
display   f.l               ;
