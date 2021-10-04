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

*   Source: Nick Gould

*   SIF input: Nick Gould, September 1997.

*   classification SUR2-AN-V-0

$Set N 10000
$Set K 10
$Eval M %N% - %K%

Set i /i1*i%N%/;
Set left[i] /i1*i%M%/;

Alias(i,j);

Variable x[i], Q[i] , f ;

Equation Eq_1[i], Eq_2[i], Def_obj ;
Eq_1[i]$(    left[i])..  Q[i] =e= sum{j$((ord(j) ge  ord(i)    ) and
                                         (ord(j) le (ord(i)+%K%))     ),x[j]};
Eq_2[i]$(not left[i])..  Q[i] =e= sum{j$(ord(j) ge  ord(i)     ),x[j]};
Def_obj..    f=e= sum{i,(Q[i]*(Q[i]*(sqr(Q[i])-20)-0.1))};


x.l[i]=0.0001/(%N%+1)

Model curly10 /all/;

Solve curly10 using nlp minimize f;


display x.l;
display f.l;
