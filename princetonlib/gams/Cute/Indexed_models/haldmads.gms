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
*   J. Hald and K. Madsen,
*   "Combined LP and quasi-Newton methods for minimax optimization",
*   Mathematical Programming 20, pp. 49-62, 1981.

*   SIF input: Ph. Toint, Nov 1993.

*   classification  LOR2-AN-6-42

$Set N 21
Set i /i1*i%N%/;
$Set M 5
Set j /j1*j%M%/;


parameter  y(i);   y(i) = -1.0+0.1*(ord(i)-1);
parameter ey(i);  ey(i) =      exp(y[i])     ;




Variable x(j) , u , f ;

Equation  cons1(i) , cons2(i) , Def_obj  ;

cons1(i)..  (x['j1']+y[i]*x['j2'])/
         (1.0+x['j3']*y[i]+x['j4']*sqr(y[i])+x['j5']*power(y[i],3))-u=l= ey[i];

cons2(i).. -(x['j1']+y[i]*x['j2'])/
         (1.0+x['j3']*y[i]+x['j4']*sqr(y[i])+x['j5']*power(y[i],3))-u=l=-ey[i];

Def_obj.. f=e=  u;

x.l(j)    = 0.0 ;
x.l('j1') = 0.5 ;

u.l = 0 ;

Model haldmads /all/;

Solve haldmads  using nlp minimize f;

display f.l;
display x.l;
