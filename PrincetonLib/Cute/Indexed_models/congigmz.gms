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
*   M.C. Pinar and S.A. Zenios,
*   "Approximately Exact Smoothing Functions for Exact Penalty Methods",
*   Institute for Numerical Analysis, TUD, Lyngby, Denmark.

*   SIF input: Ph. Toint, August 1993.

*   classification LQR2-AN-3-5

$Set N 2
Set i /i1*i%N%/;

Variable      x[i], z, f   ;

Equation cons1,cons2,cons3,cons4,cons5,Def_obj ;

cons1.. z+5*    x['i1']               -    x['i2']       =g= 0 ;
cons2.. z-4*    x['i2']  -sqr(x['i1'])-sqr(x['i2'])      =g= 0 ;
cons3.. z-5*    x['i1']               -    x['i2']       =g= 0 ;
cons4..         x['i1']               +    x['i2'] +10.0 =l= 0 ;
cons5..   2*sqr(x['i1'])              -sqr(x['i2']) +4.0 =l= 0 ;

Def_obj.. f =e= z ;

x.l[i]   =   2.0    ;
z.l      =   2.0    ;
Model congigmz /all/;

Solve congigmz  using nlp minimize f;

display x.l;
display f.l;
