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
*   M.J.D. Powell,
*   " TOLMIN: a Fortran package for linearly constrained
*   optimization problems",
*   Report DAMTP 1989/NA2, University of Cambridge, UK, 1989.

*   SIF input: Ph. Toint, May 1990.

*   classification OLR2-AY-6-15
$Set N 4
Set j              /j0*j%N%/;
$Set M 3
Set i              /i1*i%M%/;

Parameter pi ; pi := 4*arctan(1);

Parameter s[j] ; s[j] = sin(2*pi*ord(j)/5) ;
Parameter c[j] ; c[j] = cos(2*pi*ord(j)/5) ;

Variable x[i] , y[i] , f ;

Equation const(i,j) , Def_obj ;

const(i,j).. c[j]*x[i] + s[j]*y[i] =l= 1.0;

Def_obj..  f =e= 1/power(( sqr(x['i1']-x['i2'])+sqr(y['i1']-y['i2']) ),8 )+
                 1/power(( sqr(x['i1']-x['i3'])+sqr(y['i1']-y['i3']) ),8 )+
                 1/power(( sqr(x['i3']-x['i2'])+sqr(y['i3']-y['i2']) ),8 );
x.l['i1'] = -1 ;
x.l['i2'] =  0 ;
x.l['i3'] =  1 ;

y.l['i1'] =  0 ;
y.l['i2'] = -1 ;
y.l['i3'] =  1 ;

Model pentagon  /all/;

Solve pentagon   using nlp minimazing  f;

display f.l ;
display x.l , y.l ;
