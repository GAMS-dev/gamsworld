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
*
*   Source: a multi-dimensional extension of problem 28 in
*   W. Hock and K. Schittkowski,
*   "Test examples for nonlinear programming codes",
*   Lectures Notes in Economics and Mathematical Systems 187, Springer
*   Verlag, Heidelberg, 1981.

*   SIF input: Nick Gould, December 1991
*              minor correction by Ph. Shott, Jan 1995.

*   classification QLR2-AY-10-8

$Set N 10
$Set N_1  9
$Set N_2  8
Set i /i1*i%N%/;
Set left1(i) /i1*i%N_1%/;
Set left2(i) /i1*i%N_2%/;

Variable  x(i) , f ;

Equation Eq_1(i) , def_obj ;


Eq_1(i)$left2(i).. -1.0+x[i]+2*x[i+1]+3*x[i+2] =e= 0;

def_obj..          f=e= sum{i$left1(i),sqr(x[i]+x[i+1])};

X.l(i)    =  1 ;
X.l('i1') = -4 ;

Model genhs28  /all/;

Solve genhs28  using nlp minimize f;

display x.l         ;
display f.l         ;
