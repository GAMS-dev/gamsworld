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

*  Source:
*  D. Tuyttens,
*  "A User's Guide to LSNNO, a Fortran subroutine for large scale
*  nonlinear optimization problems",
*  Report 89/00, Department of Mathemetics, FUNDP, Namur (Belgium), 1989.

*  SIF input: J-M COLLIN, July 1990.

*  classification ONR2-AY-5-4

$Set N  10000
Set I  / i1*i%N% / ;

Parameter  x_init[i] / i1  4 , i2  8 , i3  2 , i4  6 , i5  8/;
Parameter  x_lower[i] / i1    2    ,  i2     6    ,
                        i3    0    ,  i4 -10000 ,
                        i5 -10000 /;

Parameter  x_upper[i] / i1    4    ,  i2      8  ,
                        i3    5    ,  i4 10000 ,
                        i5 10000 /;

Variable x[i] , f ;

Equation cons1 , cons2 , cons3 , cons4 , Def_obj ;

cons1..  x['i1']+x['i2']        -10      =e= 0 ;
cons2.. -x['i1']-x['i3']+x['i4']         =e= 0 ;
cons3.. -x['i2']+x['i3']+x['i5']         =e= 0 ;
cons4.. -x['i4']-x['i5']        +10      =e= 0 ;
Def_obj.. f =e= x['i2']*exp(x['i1']+x['i3']) + sqr(x['i3'])*sqr(x['i4']) +
                                               sqr(x['i3'] -    x['i5'])  ;

x.up[i] = x_init[i]  ;
x.lo[i] = x_lower[i] ;
x.l[i]  = x_upper[i] ;
* AMPL solutions
*x.fx['i1']  =2 ;
*x.fx['i2']  =8 ;
*x.fx['i3']  =0 ;
*x.fx['i4']  =2 ;
*x.fx['i5']  =8 ;



Model lsnnodoc /all/ ;

Solve lsnnodoc  using nlp minimazing f ;

Display x.l ;
Display f.l ;
