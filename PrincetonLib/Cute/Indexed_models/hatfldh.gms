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
*   "The OPTIMA user manual (issue No.8, p. 91)",
*   Numerical Optimization Centre, Hatfield Polytechnic (UK), 1989.

*   SIF input: Ph. Toint, May 1990.

*   classification QLR2-AN-4-7

$Set N  4
Set I  / i1*i%N% / ;

Parameter xinit(i) / i1  1 , i2  5 , i3  5 , i4  1 /;

Variable x[i] , f ;

Equation cons1a , cons2a , cons3a , cons4a , cons5a , cons6a ,
         cons1b , cons2b , cons3b , cons4b , cons5b , cons6b , cons7 ,
         Def_obj ;

cons1a.. 0 =l= x['i1'] + x['i2'] - 2.5         ;
cons2a.. 0 =l= x['i1'] + x['i3'] - 2.5         ;
cons3a.. 0 =l= x['i1'] + x['i4'] - 2.5         ;
cons4a.. 0 =l= x['i2'] + x['i3'] - 2.0         ;
cons5a.. 0 =l= x['i2'] + x['i4'] - 2.0         ;
cons6a.. 0 =l= x['i3'] + x['i4'] - 1.5         ;
cons1b..       x['i1'] + x['i2'] - 2.5 =l= 5.0 ;
cons2b..       x['i1'] + x['i3'] - 2.5 =l= 5.0 ;
cons3b..       x['i1'] + x['i4'] - 2.5 =l= 5.0 ;
cons4b..       x['i2'] + x['i3'] - 2.0 =l= 5.0 ;
cons5b..       x['i2'] + x['i4'] - 2.0 =l= 5.0 ;
cons6b..       x['i3'] + x['i4'] - 1.5 =l= 5.0 ;

cons7.. x['i1'] + x['i2'] + x['i3'] + x['i4'] - 5.0 =g= 0;

Def_obj..  f =e= (-x['i1']*x['i3']-x['i2']*x['i4']);

x.lo[i] = 0.0 ;
x.up[i] = 5.0 ;
x.l[i]  = xinit(i) ;

Model hatfldh /all/ ;

Solve hatfldh  using nlp minimazing f ;

Display   x.l ;
Display   f.l ;
