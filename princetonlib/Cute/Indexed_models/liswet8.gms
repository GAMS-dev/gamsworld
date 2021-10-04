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
*   W. Li and J. Swetits,
*   "A Newton method for convex regression, data smoothing and
*   quadratic programming with bounded constraints",
*   SIAM J. Optimization 3 (3) pp 466-488, 1993.

*   SIF input: Nick Gould, August 1994.

*   classification QLR2-AN-V-V

$Set N 10002
$Set N1 10000
$Set N2 10001
Set i /i1*i%N%/;
Set left(i) /i1*i%N1%/;
$Set M 2
Set j /j0*j%M%/;
parameter B(j) ; B('j0') = 1         ;
                 B('j1') = B('j0')   ;
                 B('j2') = B('j1')*2 ;

parameter C(j) ; C('j0')= 1                          ;
                 C('j1')=-B['j%M%']/(B['j1']*B['j1']);
                 C('j2')= B['j%M%']/(B['j2']*B['j0']);

parameter T(i) ; T(i) = (ord(i)-1)/(%N2%);

parameter Pi ; Pi = 3.1415 ;

Variable x(i) , f ;
Equation cons1(i) , Def_obj ;

cons1(i)$left(i).. C['j0']*x[i+2]+C['j1']*x[i+1]+C['j2']*x[i] =g= 0;

Def_obj..          f =e= sum{i,(-(Sin(2*Pi*T[i])+0.1*sin(ord(i)))*x[i] )} +
                         sum{i,(0.5*sqr(Sin(2*Pi*T[i])+0.1*sin(ord(i))))} +
                         sum{i,(0.5*sqr(x[i])                         )}  ;
X.l[i] = 0 ;

Model liswet8 /all/;

Solve liswet8 using nlp minimize f ;

display b ;

display c ;
display t ;

display x.l ;
display f.l ;
