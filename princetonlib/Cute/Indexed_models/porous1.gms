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

*   Source: example 3.2.4 in
*   S. Eisenstat and H. Walker,
*   "Choosing the forcing terms in an inexact Newton method"
*   Report 6/94/75, Dept of Maths, Utah State University, 1994.

*   SIF input: Ph. Toint, July 1994.

*   classification NOR2-MN-V-V

$Set P  72
$Set P1  71
$Set P2  70
Set I              /i1*i%P%/;
Set J              /j1*j%P%/;
Set inside_j0(j)     /j2*j%P1%/;
Set inside_j1(j)     /j2*j%P2%/;
Set inside_i0(i)     /i2*i%P1%/;
Set inside_i1(i)     /i2*i%P2%/;

Parameter D;  D = 50.0      ;
Parameter H ; H = 1/(%P%-1) ;

Variable U[i,j] , f ;

Equation cons1(i,j) , cons2(i,j) , cons3 , Def_obj ;

cons1(i,j)$((inside_i0(i)) and (inside_j1(j)))..
        ((  sqr(u[i+1,j]) + sqr(u[i-1,j]) +
            sqr(u[i,j-1]) + sqr(u[i,j+1]) -
          4*sqr(u[i,j]))/sqr(H)           + D*(power(u[i+1,j],3)  -
                                               power(u[i-1,j],3))/(2*H)) =e= 0;

cons2(i,j)$((inside_i1(i)) and ( ord(i) = %P1%  ))..
        ((sqr(u[i+1,j]) +
          sqr(u[i-1,j]) +
          sqr(u[i,j-1]) +
          sqr(u[i,j+1]) -
         4*sqr(u[i,j]))/sqr(H)  +    D*(power(u[i+1,j],3) -
                                        power(u[i-1,j],3))/(2*H)) =e= 0;

cons3..  ((  sqr(u['i%P%','j%P1%'])        + sqr(u['i%P2%','j%P1%'])  +
             sqr(u['i%P1%','j%P2%'])       + sqr(u['i%P1%','j%P%'])   -
           4*sqr(u['i%P1%','j%P1%']))/sqr(H)  +
          D*(power(u['i%P%','j%P1%'],3) -
             power(u['i%P2%','j%P1%'],3))/(2*H)+50) =e=0;

Def_obj..  f =e= 0 ;

        u.fx['i1',j]                                     = 1.0 ;
        u.fx['i%P%',j]                                   = 0.0 ;
        u.fx[i,'j%P%']$((ord(i)>1) and (ord(i)<card(i))) = 1.0 ;
        u.fx[i,'j1']$((ord(i)>1) and (ord(i)<card(i)))   = 0.0 ;

u.l[i,j] = 1-(ord(i)-1)*(ord(j)-1)*H*H;

u.lo[i,j] = -1 ;
u.up[i,j] =  1 ;
Model porous1 /all/;

Solve porous1  using nlp minimazing f ;

display f.l ; display u.l ;
