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
*   M.M. Makela,
*   "Nonsmooth optimization",
*   Ph.D. thesis, Jyvaskyla University, 1990

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LLR2-AN-21-40

$Set N 20
Set i /i1*i%N%/;

parameter x_init(i) /  i1    1 ,  i2    2 ,  i3    3 , i4    4 ,  i5    5 ,
                       i6    6 ,  i7    7 ,  i8    8 , i9    9 , i10   10 ,
                      i11  -11 , i12  -12 , i13  -13 ,i14  -14 , i15  -15 ,
                      i16  -16 , i17  -17 , i18  -18 ,i19  -19 , i20  -20 /;

Variable u, x(i) , f ;

Equation cons1(i) , cons2(i) , Def_obj ;

cons1(i).. - u + x[i] =l= 0 ;
cons2(i).. - u - x[i] =l= 0 ;
Def_obj..    f        =e= u ;

x.l(i) = x_init(i) ;

Model makela4 /all/;

Solve makela4 using nlp minimize f ;

display u.l ;
display x.l ;
display f.l ;
