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
*   B. Murtagh and M. Saunders,
*   Mathematical Programming Studies 16, pp. 84-117,
*   (example 5.12).

*   SIF input: N. Gould and Ph. Toint, March 1990.

*   classification OOR2-MN-V-V

$Set t  365
$Set t1  364
Set I  / i1*i%t% / ;
Set Left(i) / i1*i%t1% / ;
Set Right(i) / i2*i%t% / ;
Set Inside(i)/i2*i%t1% / ;


Parameter   grow ;  grow = 0.03 ;
Parameter   beta ;  beta = 0.95 ;
Parameter    xk0 ;   xk0 = 3.0  ;
Parameter    xc0 ;   xc0 = 0.95 ;
Parameter    xi0 ;   xi0 = 0.05 ;
Parameter      b ;     b = 0.25 ;
Parameter  bprob ; bprob = 1.0  ;

Parameter     a  ;    a  = (xc0 + xi0)/exp(log(xk0)*b);
Parameter  gfac  ; gfac  = exp(log(1+grow) * (1-b)) ;

Parameter at[i] ; at['i1']              =  a      * gfac ;
              loop(i$Right(i), at[i]    =  at[i-1]* gfac );

Parameter bt[i] ;                bt['i1']    =          beta           ;
              loop(i$Inside(i),  bt[i]       =  bt[i-1]*beta  ) ;
                  bt['i%t%']  =  bt['i%t1%']*beta/(1-beta)  ;

Variable c[i] , ii[i] , kk[i] , f ;

Equation cons1(i) , cons2(i) , cons3 , Def_obj ;

cons1(i)..          at[i]*exp(log(kk[i])*b)- c[i] - ii[i]       =g= 0 ;
cons2(i)$Left(i)..  kk[i+1] - kk[i]               - ii[i]       =l= 0 ;
cons3..             grow*kk['i%t%']               - ii['i%t%']  =l= 0 ;
Def_obj..           f =e= sum{i, bt[i]*log(c[i]) } ;

 c.lo[i]   = 0.95 ;
ii.lo[i]   = 0.05 ; ii.up[i] = 0.05*power((1.04),ord(i));
kk.lo[i]   = 3.05 ;
  c.l[i]   = 0.95 ;
 ii.l[i]   = 0.05 ;

kk.l[i] =  (3+(ord(i)-1)/10);
kk.fx['i1'] = 3.05 ;



Model manne /all/ ;

Solve manne  using nlp minimazing f ;

Display c.l ;
Display ii.l ;
Display kk.l ;
Display f.l ;
