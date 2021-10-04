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

*   Source: problem 21 in
*   W. Hock and K. Schittkowski,
*   "Test examples for nonlinear programming codes",
*   Lectures Notes in Economics and Mathematical Systems 187, Springer
*   Verlag, Heidelberg, 1981.

*   SIF input: A.R. Conn, April 1990

*   classification SLR2-AN-7-1

$Set N 13
Set i /i1*i%N%/;

Variable x(i) , f ;
Equation Eq_1 , Defobj ;

Eq_1(i)..         10*x['i1']-x['i2']-10 =g= 0;

Defobj.. f =e= -100+0.01*(sqr(x['i1'])+sqr(x['i3'])+sqr(x['i5'])+sqr(x['i6']))+
                         (sqr(x['i2'])+sqr(x['i4'])+sqr(x['i7'])             ) ;

x.lo('i1') =  2  ;   x.up('i1') = 50;
x.lo('i2') = -50 ;   x.up('i2') = 50;
                     x.up('i3') = 50;
x.lo('i4') =  2  ;

                     x.up('i6') =  0;
x.lo('i7') =  0;


x.l('i1') = -1.0 ;
x.l('i2') = -1.0 ;

Model hs21mod /all/;

Solve hs21mod using nlp minimize f ;

display   f.l
;
display   x.l               ;
