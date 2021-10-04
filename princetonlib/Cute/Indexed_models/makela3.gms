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
*   M.M. Makela,
*   "Nonsmooth optimization",
*   Ph.D. thesis, Jyvaskyla University, 1990

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LQR2-AN-21-20

$Set N 20
Set i /i1*i%N%/;

Variable u, x(i) , f ;

Equation cons(i) , Def_obj ;

cons(i).. -u+sqr(x[i]) =l= 0;
Def_obj..  f =e= u;

x.l(i)$(ord(i)<11) = ord(i) ;
x.l(i)$(ord(i)>10) =-ord(i) ;

Model makela3 /all/;

Solve makela3 using nlp minimize f ;

display u.l ;
display x.l ;
display f.l ;
