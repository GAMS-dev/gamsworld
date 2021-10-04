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
*   A Griewank and Ph. Toint,
*   "Partitioned variable metric updates for large structured
*   optimization problems",
*   Numerische Mathematik 39:429-448, 1982.

*   SIF input: Ph. Toint, Dec 1989.

*   classification OXR2-MY-V-0
$Set P 125
$Set P_1 124
Set I /i1*i%P%/;
Set J /j1*j%P%/;
Set Left_i(i) /i1*i%P_1%/;
Set Left_j(j) /j1*j%P_1%/;

Set Inside_i(i) /i2*i%P_1%/;
Set Inside_j(j) /j2*j%P_1%/;


Parameter h00   ;    h00 = 1 ;
Parameter slopej; slopej = 4 ;
Parameter slopei; slopei = 8 ;

Parameter ston; ston= slopei/(%P_1%);
Parameter wtoe; wtoe= slopej/(%P_1%);
Parameter h01 ;  h01= h00+slopej;
Parameter h10 ;  h10= h00+slopei;

Variable x[i,j] , f ;

Equation  Def_obj ;


Def_obj.. f =e=   sum{(i,j)$((Left_i(i))and(Left_j(j))),
                                   sqrt(sqr(%P_1%)*(sqr(x[i,j]-x[i+1,j+1])+
                                                    sqr(x[i+1,j]-x[i,j+1]))/2+1)/
                                                                        sqr(%P_1%)};

         x.fx['i1',j]   = (ord(j)-1)*wtoe+h00;
         x.fx['i%P%',j] = (ord(j)-1)*wtoe+h10;
         x.fx[i,'j%P%']$Inside_i(i) = (ord(i)-1)*ston+h01;
         x.fx[i,'j1']$Inside_i(i)   = (ord(i)-1)*ston+h00;



x.lo[i,j] =-1000.0;
x.l[i,j] = 1.1;

Model lminsurf /all/;

Solve lminsurf using nlp minimazing f;

display f.l;
display x.l;
