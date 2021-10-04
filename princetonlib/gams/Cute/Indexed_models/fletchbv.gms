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

*   Source:  The first problem given by
*   R. Fletcher,
*   "An optimal positive definite update for sparse Hessian matrices"
*   Numerical Analysis report NA/145, University of Dundee, 1992.

*   N.B. This formulation is incorrect. See FLETCBV2.SIF for
*        the correct version.

*   SIF input: Nick Gould, Oct 1992.

*   classification OUR2-AN-V-0

$Set N  10000
$Set N1  9999
$Set N2 10001
Set I  / i1*i%N% / ;
Set Right(i) / i1*i%N1% / ;

Parameter    kappa ;    kappa = 1.0;
Parameter objscale ; objscale = 1.0;
Parameter        h ;        h = 1/(%n2%);
Parameter        p ;        p = 1/objscale ;

Variable x[i] , f ;
Equation Def_obj ;

Def_obj..  f =e={ 0.5*p*sqr(x['i1']  ) +
                          sum{i$Right(i), 0.5*p*sqr(x[i]-x[i+1]) } +
                  0.5*p*sqr(x['i%n%']) +
                          sum{i,(p*(-1-2/h/h)*x[i]) }     +
                          sum{i,(-kappa*p*cos(x[i])/h/h) }  }/1000000/1000000/10000 ;


x.l[i] = ord(i)/ h ;

Model fletchbv /all/ ;

Solve fletchbv  using nlp minimazing f ;
f.l=f.l*1000000*1000000*10000;
Display x.l ;
Display f.l ;
