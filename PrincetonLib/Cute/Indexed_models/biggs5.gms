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

*   Source: Problem 152 in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SXR2-AN-6-0

$Set N 6
Set i /i1*i%N%/;
$Set M 13
Set j /j1*j%M%/;



parameter xinit[i] /i1 1,i2 2,i3 1,i4 1,i5 4,i6 3 /;

Variable     x[i], f   ;

Equation Def_obj;
Def_obj.. f=e=
  sum {j, sqr(-exp(-0.1*ord(j))+5*exp(-ord(j))-3*exp(-0.4*ord(j))+
                                x['i3']*exp(-0.1*ord(j)*x['i1']) -
                                x['i4']*exp(-0.1*ord(j)*x['i2']) +
                                x['i6']*exp(-0.1*ord(j)*x['i5']))   };

x.l[i]  = xinit[i]    ;
x.fx['i6']  = 3   ;

Model biggs5 /all/;

Solve biggs5  using nlp minimize f;

display x.l;
display f.l;
