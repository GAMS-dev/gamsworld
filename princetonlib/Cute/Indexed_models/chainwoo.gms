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

*   Source:  problem 8 in
*   A.R.Conn,N.I.M.Gould and Ph.L.Toint,
*   "Testing a class of methods for solving minimization
*   problems with simple bounds on their variables,
*   Mathematics of Computation 50, pp 399-430, 1988.

*   SIF input: Nick Gould and Ph. Toint, Dec 1995.

*   classification SUR2-AN-V-0

$Set N 1000
Set i /i1*i%N%/;
Set second(i) ;  second(i) = yes$(mod(ord(i),2) eq 0);
                 second('i%N%')= no;
Variable     x[i] , f    ;

Equation  Def_obj ;
Def_obj.. f=e=
        1.0 +
        sum{i$second(i),(
        100*sqr(x[i]  -sqr(x[i-1])) + sqr(1.0-x[i-1]) +
*        90*sqr(x[i+2]-sqr(x[i+1])) + sqr(1.0-x[i+1]) +
         10*sqr(x[i]  +x[i+2] -2.0) + sqr(x[i]-x[i+2])/10)  };

x.l[i]$(ord(i) > 4)    = -2.0;

Model chainwoo /all/;

Solve chainwoo using nlp minimize f;

display second;
display x.l;
display f.l;
