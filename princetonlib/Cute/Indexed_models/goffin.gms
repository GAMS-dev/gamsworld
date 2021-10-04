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

*   classification  LLR2-AN-51-50


$Set N 50
Set i /i1*i%N%/;
Alias(i,j);
parameter ri ; ri = 50;
parameter  t ;  t = -25.5 + (50);

Variable x(i) , u , f ;


Equation Eq_1(i) , Def_obj ;

Eq_1(i)..  u =g= 50*x[i]-sum{j,x[j]};

Def_obj..  f =e= u ;

x.l(i) = -25.5+ord(i);

Model goffin  /all/;

Solve goffin  using nlp minimize f;

display u.l         ;
display x.l         ;
display f.l         ;
