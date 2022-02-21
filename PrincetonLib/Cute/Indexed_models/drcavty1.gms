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
*   P.N. Brown and Y. Saad,
*   "Hybrid Krylov Methods for Nonlinear Systems of Equations",
*   SIAM J. Sci. Stat. Comput. 11, pp. 450-481, 1990.
*   The boundary conditions have been set according to
*   I.E. Kaporin and O. Axelsson,
*   "On a class of nonlinear equation solvers based on the residual norm
*   reduction over a sequence of affine subspaces",
*   SIAM J, Sci. Comput. 16(1), 1995.

*   SIF input: Ph. Toint, Jan 1995.

*   classification NQR2-MY-V-V

$Set M 104
$Set M_1 103
$Set N 102
Set i /i1*i%M%/;
Set j /j1*j%M%/;
Set Inside_i(i) /i3*i%N%/;
Set Inside_j(j) /j3*j%N%/;

parameter  H;  H = 1/(%M%-2) ;
parameter RE; RE =  500.0    ;

Variable x[i,j] , y[i,j] , f ;
Equation Def_obj ;
Def_obj.. f=e=
        sum{(i,j)$(Inside_i(i) and Inside_j(j)),

sqr(20*y[i,j]    -8*y[i-1,j]  -8*y[i+1,j]  -8*y[i,j-1]   -8*y[i,j+1]+
     2*y[i-1,j+1]+2*y[i+1,j-1]+2*y[i-1,j-1]+2*y[i+1,j+1]   +y[i-2,j]+
       y[i+2,j]  + y[i,j-2]   + y[i,j+2]   +
(RE/4)*(y[i,j+1]-y[i,j-1])*(  y[i-2,j]   +  y[i-1,j-1]+y[i-1,j+1] -
                            4*y[i-1,j]   -4*y[i+1,j]  -y[i+1,j-1] -
                              y[i+1,j+1] -  y[i+2,j]) -
(RE/4)*(y[i+1,j]-y[i-1,j])*(  y[i,j-2]   +y[i-1,j-1]  +y[i+1,j-1] -
                            4*y[i,j-1]   -4*y[i,j+1]  -y[i-1,j+1] -
                              y[i+1,j+1] - y[i,j+2]))};


y.fx['i1',j]   =  0.0 ;
y.fx['i2',j]   =  0.0 ;
y.fx[i,'j1']   =  0.0 ;
y.fx[i,'j2']   =  0.0 ;
y.fx[i,'j%M%']      =  0.0 ;
y.fx[i,'j%M_1%']    =  0.0 ;
y.fx['i%M_1%',j]    = -H/2 ;
y.fx['i%M%',j]      =  H/2 ;

y.l[i,j]  = 0 ;


Model drcavty1 /all/ ;

Solve drcavty1 using dnlp minimize f;
display y.l;
display f.l;
