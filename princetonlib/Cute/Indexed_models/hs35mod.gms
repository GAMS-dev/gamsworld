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

*   Source: problem 35 in
*   W. Hock and K. Schittkowski,
*   "Test examples for nonlinear programming codes",
*   Lectures Notes in Economics and Mathematical Systems 187, Springer
*   Verlag, Heidelberg, 1981.

*   SIF input: A.R. Conn, April 1990

*   classification QLR2-AN-3-1

$Set N 3
Set i /i1*i%N%/;

Positive Variable x(i);
         Variable f   ;
Equation Eq_1 , Def_obj ;

Eq_1.. -x ['i1'] - x['i2'] - 2.0*x['i3'] + 3.0 =g= 0;

Def_obj.. f=e=    - 8.0*x['i1'] -      6.0*x['i2']  - 4.0*x['i3']  + 9.0 +
                2.0*sqr(x['i1']) + 2.0*sqr(x['i2']) + sqr(x['i3']) +
                    2.0*x['i1']*x['i2'] + 2.0*x['i1']*x['i3']              ;

x.l(i)     = 0.5 ;
x.fx('i2') = 0.5 ;

Model hs35mod /all/;

Solve hs35mod using nlp minimize f ;

display   f.l               ;
display   x.l               ;
