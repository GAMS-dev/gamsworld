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

*   Source: Se June Hong/Chid Apte

*   SIF input: A.R.Conn, Jan 1991.

*   classification OLR2-AN-4-1

$Set N  4
Set I  / i1*i%N% / ;

Positive Variable T[i] ;
         Variable    f ;

Equation cons1 , Def_obj ;

cons1..
        T['i1']+T['i2']+T['i3']+T['i4']-1.0 =e= 0;
Def_obj..
          f =e=            0.92+0.08*exp(0.38*25*T['i1'])  -
                           2.95+3.95*exp(0.11*50*T['i2'])  -
                 1.66+1657834*exp(-1.48*(9.0+4.0*T['i3'])) +
                     0.11+0.89*exp(0.00035*20000*T['i4']  )  ;

T.up[i] = 1.0 ;
T.l[i]  = 0.5 ;

Model hong /all/ ;

Solve hong  using nlp minimazing f ;


Display T.l ;
Display f.l ;
