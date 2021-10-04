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

*   classification OBR2-AN-V-V

$Set N 120
$Set M 10
Set i /i1*i%N%/;
Set left(i) /i1*i%M%/;

Positive Variable X[i] ;
Variable f    ;

Equation Def_obj ;

Def_obj.. f =e= sum{i$left(i),exp(0.1*x[i]*x[i+1])}+sum{i,(-10.0*ord(i)*x[i])};

x.up[i]  =  10 ;
x.l[i]   =   0 ;

Model explin /all/;

Solve explin using nlp minimize f;

display x.l;
display f.l;
