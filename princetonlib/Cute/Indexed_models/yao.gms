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

*   classification QLR2-AN-V-V

$Set N  2002
$Set N2  2000
$Set N1  2001
Set I  / i1*i%N% / ;

Set Left(i) / i1*i%N2% / ;

Variable x[i] , f ;

Equation cons1(i) , Def_obj ;

cons1(i)$Left(i).. x[i]-2*x[i+1]+x[i+2] =g= 0 ;

Def_obj..  f=e= sum{i, 0.5*sqr(x[i]-sin(ord(i)/(%N%)))} ;

        x.lo['i1']    = 0.08 ;
        x.fx['i%n1%'] = 0.0  ;
        x.fx['i%n%']  = 0.0  ;

Model yao /all/ ;

Solve yao using nlp minimazing f ;

Display x.l ;
Display f.l ;
