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

*   classification  LQR2-AN-3-2

$Set N 2
Set i /i1*i%N%/;

Variable u, x(i) , f ;

Equation cons1 , cons2 , Def_obj ;

cons1.. -u -x['i1'] -x['i2']                               =l= 0;
cons2.. -u -x['i1'] -x['i2']-1.0+sqr(x['i1'])+sqr(x['i2']) =l= 0;
Def_obj..  f =e= u ;

x.l(i) = -0.5   ;

Model makela1 /all/;

Solve makela1 using nlp minimize f ;

display u.l ;
display x.l ;
display f.l ;
