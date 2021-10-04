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

*   Source:  problem 204 (p. 93) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-V

$Set P 32
Set i/i1*i%P%/;

Alias(i,j);
Alias(i,k);

Parameter  N ; N = %P%*%P%;

Parameter B(i,j) ;  B(i,j) = sin(sqr((ord(i)-1)*%P% + ord(j)));
                    B('i3','i1') = 0;

Parameter A(i,j) ;  A(i,j) = sum{k, (B[i,k]*B[k,j]) };

Variable x(i,j) , f ;
Equation   Def_obj ;

Def_obj.. f =e= sum{(i,j),sqr(sum{k,(x[i,k]*x[k,j])} - A[i,j])};

x.l(i,j) = 0.2*B(i,j);

Model msqrtbls /all/ ;

Solve msqrtbls  using nlp minimazing f ;

display f.l;
display x.l;
