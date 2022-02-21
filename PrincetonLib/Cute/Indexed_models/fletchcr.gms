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
*   Source:  The second problem given by
*   R. Fletcher,
*   "An optimal positive definite update for sparse Hessian matrices"
*   Numerical Analysis report NA/145, University of Dundee, 1992.

*   SIF input: Nick Gould, Oct 1992.

*   classification OUR2-AN-V-0

$Set N 100
$Set M 99
Set i /i1*i%N%/;
Set left(i) /i1*i%M%/;

Variable x[i], f    ;

Equation Def_obj ;

Def_obj.. f=e= sum{i$left(i),(100*sqr(x[i+1]-x[i]+1-sqr(x[i])))};


Model fletchcr /all/;

Solve fletchcr using nlp minimize f;


display x.l;
display f.l;
