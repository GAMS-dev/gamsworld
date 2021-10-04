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

*   Source:  problem 32 in
*   Ph. L. Toint,
*   "Test problems for partially separable optimization and results
*   for the routine PSPMIN",
*   Report 83/4, Department of Mathematics, FUNDP (Namur, B), 1983.

*   See  also Buckley#18
*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AY-V-0

$Set N 5000
$Set M 4998
Set i /i1*i%N%/;
Set second(i) ;  second(i) = yes$(mod(ord(i),2) eq 0);
                 second('i%N%')= no;
*                 second('i%M%')= no;


Variable     x[i] , f    ;

Equation  Def_obj ;
Def_obj.. f=e=
        sum {i$second(i),(
            power((exp(x[i-1])-x[i]),4)                                    +
        100*power((x[i]-x[i+1]),6)                                         +
            power((sin(x[i+1]-x[i+2])/cos(x[i+1]-x[i+2])+x[i+1]-x[i+2]),4) +
            power((x[i-1]),8)                                              +
            sqr(x[i+2]-1.0)
            )            };

x.l[i]$(ord(i) > 2)    =  2.0;
x.l['i1']              =  1.0;
x.l['i2']              =  1.0;
x.l['i5000']           =  1.0;
Model cragglvy /all/;

Solve cragglvy using nlp minimize f;

display x.l;
display f.l;
