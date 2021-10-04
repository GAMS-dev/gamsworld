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

*   Source:  A suggestion by Alan Edelman (MIT).

*   SIF input: Nick Gould, Nov 1993.

*   classification LQR2-RN-V-V

$Set N  8
Set I  / i1*i%N% / ;
Alias(i,j);
Alias(i,k);

Variable Q[i,j] , maxval , abs_val , QQT[i,j] ;

Equation ortho(i,j) , abs_min_val(i,j) ,
         abs_max_val(i,j) , ones(i,j)  , Eq_1(i,j) , Def_obj ;

ortho(i,j)..       QQT[i,j] - %n% =e= 0;
abs_min_val(i,j).. maxval      =g=  Q[i,j] ;
abs_max_val(i,j).. maxval      =g= -Q[i,j] ;
ones(i,j)..        abs(Q[i,j]) =l= 1 ;
Eq_1(i,j)..        QQT(i,j) =e= sum{k, (Q[k,i]*Q[k,j]) };

Def_obj..  abs_val =e= abs(maxval);

Q.l(i,j) = 1 ;

maxval.lo = 0 ; maxval.l  = 0 ;

Model hadamard /all/ ;

Solve hadamard using dnlp minimazing abs_val ;

display Q.l;
