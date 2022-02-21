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

*   Source: K. Oettershagen
*   "Ein superlinear knonvergenter algorithmus zur losung
*    semi-infiniter optimierungsproblem",
*    Ph.D thesis, Bonn University, 1982

*   SIF input: Nick Gould, February, 1994.

*   classification LOR2-AN-7-V

$Set M 500
$Set N 6
Set i /i0*i%M%/ ;
Set j /j1*j%N%/ ;


Parameter  lower ; lower = -0.5 ;
Parameter  upper ; upper =  0.5 ;
Parameter   diff ;  diff = upper-lower ;
Parameter      h ;     h = diff/%m%    ;

Variable u , x(j) , f ;

Equation cons1(i),  cons2(i),  Def_obj ;

cons1(i).. -(x['j1']*exp(x['j4']*(ord(i)*h+lower))  +
             x['j2']*exp(x['j5']*(ord(i)*h+lower))  +
             x['j3']*exp(x['j6']*(ord(i)*h+lower))) +u =g=-1/(1+ord(i)*h+lower);
cons2(i)..  (x['j1']*exp(x['j4']*(ord(i)*h+lower))  +
             x['j2']*exp(x['j5']*(ord(i)*h+lower))  +
             x['j3']*exp(x['j6']*(ord(i)*h+lower))) +u =g= 1/(1+ord(i)*h+lower);

u.l    = 0 ;
x.l(j) = 0 ;

*AMPL solution
*x.fx['j1']=  0.749 ;
*x.fx['j2']=  0.246 ;
*x.fx['j3']=  0.0043 ;
*x.fx['j4']= -0.45 ;
*x.fx['j5']= -2.55 ;
*x.fx['j6']= -7.4 ;

Def_obj..  f =e= u ;

Model oet7 /all/ ;

Solve oet7 using nlp minimazing f ;

display f.l;
display u.l , x.l  ;
