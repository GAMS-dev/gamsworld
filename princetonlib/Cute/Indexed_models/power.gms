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

*   Source:
*   S.S. Oren,
*   Self-scaling variable metric algorithms,
*   Part II: implementation and experiments"
*   Management Science 20(5):863-874, 1974.

*   See also Buckley*179 (p. 83)

*   SIF input: Ph. Toint, Dec 1989.

*   classification OUR2-AN-V-0

$Set N 1000
Set I /i1*i%N%/;

Variable  x[i] , f ;

Equation  Def_obj ;

Def_obj..  f =e= sum{i, sqr(ord(i)*x[i]) };

x.l[i] = 0.00001 ;

Model power   /all/;

Solve power using nlp minimazing f ;

display x.l ;
display f.l ;
