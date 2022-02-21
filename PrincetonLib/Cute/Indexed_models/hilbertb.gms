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

*   Source: problem 19 (p. 59) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification QUR2-AN-V-0

$Set N  50
Set I  / i1*i%N% / ;
Alias(i,j);
Parameter D ; D = 5.0 ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..  f =e= sum{i,(sum{j$(ord(j) lt ord(i)), x[i]*x[j]/(ord(i)+ord(j)-1)} +
                                       (x[i]*x[i])*(D+1/(4*ord(i)-2)))};

x.l[i] = -3.0 ;

Model hilbertb /all/ ;

Solve hilbertb using nlp minimazing f ;
display f.l;
display x.l;
