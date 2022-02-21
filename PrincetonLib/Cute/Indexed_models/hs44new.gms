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

*   Source: problem 44 in
*   W. Hock and K. Schittkowski,
*   "Test examples for nonlinear programming codes",
*   Lectures Notes in Economics and Mathematical Systems 187, Springer
*   Verlag, Heidelberg, 1981.

*   SIF input: Ph.L. Toint, October 1990.

*   classification QLR2-AN-4-6

$Set N 4
Set i /i1*i%N%/;

Variable x(i) , f  ;

Equation cons1 , cons2 , cons3 , cons4 , cons5 , cons6 , Def_obj ;

cons1.. -  x['i1'] -  x['i2'] +  8.0 =g= 0;
cons2.. -4*x['i1'] -  x['i2'] + 12   =g= 0;
cons3.. -3*x['i1'] -4*x['i2'] + 12   =g= 0;
cons4.. -2*x['i3'] -  x['i4'] +  8   =g= 0;
cons5.. -  x['i3'] -2*x['i4'] +  8   =g= 0;
cons6.. -  x['i3'] -  x['i4'] +  5   =g= 0;

Def_obj..  f =e= x['i1'] - x['i2'] - x['i3'] - x['i1']*x['i3']+x['i1']*x['i4']+
                                               x['i2']*x['i3']-x['i2']*x['i4'];

x.lo[i] = 0 ;
x.l[i]  = 1 ;

Model hs44new /all/;

Solve hs44new using nlp minimize f ;

display   x.l               ;
display   f.l               ;
