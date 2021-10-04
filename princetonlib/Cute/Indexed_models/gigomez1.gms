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
*   C. Gigola and S. Gomez,
*   "A Regularization Method for Solving the Finite Convex Min-Max Problem",
*   SINUM 27(6), pp. 1621-1634, 1990.

*   SIF input: Ph. Toint, August 1993.

*   classification LQR2-AN-3-3

$Set N 2
Set i /i1*i%N%/;

Variable  x(i) , z , f ;

Equation Eq_1 , Eq_2, Eq_3,  def_obj ;


Eq_1..       z+5.0*x['i1']-x['i2']                 =g= 0;
Eq_2..       z-4*x['i2']-sqr(x['i1'])-sqr(x['i2']) =g= 0;
Eq_3..       z-5*x['i1']-x['i2']                   =g= 0;

Def_obj..    f =e= z ;

x.l(i) = 2 ;
z.l    = 2 ;

Model gigomez1 /all/;

Solve gigomez1 using nlp minimize f;


display z.l         ;
display x.l         ;
display f.l         ;
