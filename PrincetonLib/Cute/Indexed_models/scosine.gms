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
*   N. Gould, private communication.

*   SIF input: N. Gould, Nov 1997

*   classification OUR2-AN-V-0

$Set n 10000
$Set n1 9999
Set I /i1*i%n%/;
Set Right(I) /i1*i%n1%/;

Parameter     scal ;      scal = 12.0;

Parameter scale[i] ; scale[i]  = exp((ord(i)-1)*scal/(%N%-1));

Variable x[i] , f ;

Equation  Def_obj ;

Def_obj..
f =e= sum{i$Right(I),cos(-0.5*scale[i+1]*x[i+1]+sqr(scale[i])*sqr(x[i]))}
     *0.000001;

x.l[i] =  1.0/scale[i] ;
option reslim = 10000;
Model scosine /all /;

Solve scosine using nlp minimazing f ;

display f.l ; display x.l ;
