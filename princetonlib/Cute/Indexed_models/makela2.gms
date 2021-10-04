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

*   classification  LQR2-AN-3-3

$Set N 2
Set i /i1*i%N%/;

parameter xinit(i) / i1 -1.0, i2 5.0 /;

Variable u, x(i) , f ;
Equation cons1 , cons2 , cons3 , Def_obj ;

cons1.. -u +sqr(x['i1']) +sqr(x['i2'])                                =l= 0 ;
cons2..     sqr(x['i1']) +sqr(x['i2']) -u -40*x['i1'] -10*x['i2'] +40 =l= 0 ;
cons3..     sqr(x['i1']) +sqr(x['i2']) -u -10*x['i1'] -20*x['i2'] +60 =l= 0 ;
Def_obj..  f =e= u ;

x.l(i) = xinit(i) ;

Model makela2 /all/;

Solve makela2 using nlp minimize f ;

display u.l ;
display x.l ;
display f.l ;
