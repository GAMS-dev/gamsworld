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

*   Source: problem 157 (p. 87) in
*   A.R. Buckley,
*   "Test functions for unconstrained minimization",
*   TR 1989CS-3, Mathematics, statistics and computing centre,
*   Dalhousie University, Halifax (CDN), 1989.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-V-0

$Set N 5000
Set i /i1*i%N%/;

Variable   x[i], f    ;

Equation   Def_obj ;

Def_obj.. f=e= (sum{i,power( ((x[i]-ord(i))/1000) ,4)});

x.l[i]  =  2 ;

Model dqrtic /all/;

Solve dqrtic using nlp minimize f;

f.l=f.l*1000000*1000000;
display x.l;
display f.l;
