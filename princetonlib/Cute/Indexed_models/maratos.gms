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

*   Source:
*   A.A. Brown and M. Bartholomew-Biggs,
*   "Some effective methods for unconstrained optimization based on
*   the solution of ordinary differential equations",
*   Technical Report 178, Numerical Optimization Centre, Hatfield
*   Polytechnic, (Hatfield, UK), 1987.

*   SIF input: Nick Gould, June 1990.

*   classification QQR2-AN-2-1

$Set N 2
Set i /i1*i%N%/;

parameter tau ; tau = 0.000001;
parameter xinit(i) / i1 1.1 , i2 0.1 /;

Variable x(i) , f ;

Equation cons1 , Def_obj ;

cons1..    -1.0 + sqr(x['i1']) + sqr(x['i2']) =e= 0;
Def_obj..  f =e= -x['i1']-tau+tau*(sqr(x['i1'])+sqr(x['i2']));

x.l(i) = xinit(i) ;
Model maratos /all/;

Solve maratos  using nlp minimize f ;

display f.l ;
