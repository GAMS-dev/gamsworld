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


$Set M  104
Set I  / i1*i%M% / ;
Set J  / j1*j%M% / ;

$Set M1 104
$Set M2 103

$Set N2 102

Set Inside_i(i) / i3*i%N2% / ;
Set Inside_j(j) / j3*j%N2% / ;

Parameter  H ;  H = 1/(102);
Parameter RE ; RE =4500.0 ;
Positive Variable epsi ;
Variable y(i,j) ,  f ;

Equation cons(i,j) , Def_obj ;

cons(i,j)$(Inside_j(j) and Inside_i(i))..

 (20*y[i,j] -
            8*y[i-1,j]  -8*y[i+1,j]  -8*y[i,j-1]  -8*y[i,j+1]   +
            2*y[i-1,j+1]+2*y[i+1,j-1]+2*y[i-1,j-1]+2*y[i+1,j+1] +
              y[i-2,j]  +  y[i+2,j]  +  y[i,j-2]  +  y[i,j+2]   +

   (RE/4)*(y[i,j+1]-y[i,j-1])*
(y[i-2,j]+y[i-1,j-1]+y[i-1,j+1]-4*y[i-1,j]-4*y[i+1,j]-
                                 y[i+1,j-1]-y[i+1,j+1]-y[i+2,j])-

   (RE/4)*(y[i+1,j]-y[i-1,j])*
(y[i,j-2]+y[i-1,j-1]+y[i+1,j-1]-4*y[i,j-1]-4*y[i,j+1]-
                                 y[i-1,j+1]-y[i+1,j+1]-y[i,j+2])

  ) =l= epsi;

Def_obj..  f =e= sqr(epsi) ;

epsi.up = 0.0000001;
y.lo[i,j] = -H/2 ;
y.up[i,j] =  H/2 ;
y.l[i,j]  = -H/3 ;

y.fx[i,'j1'] = 0.0;
y.fx[i,'j2'] = 0.0;
y.fx[i,'j%M1%'] = 0.0;
y.fx[i,'j%M2%'] = 0.0;

y.fx['i1',j] = 0.0;
y.fx['i2',j] = 0.0;
y.fx['i%M1%',j] = -H/2 ;
y.fx['i%M2%',j] =  H/2 ;



Model drcav3lq /all/ ;
drcav3lq.reslim = 99999;
drcav3lq.iterlim= 99999;
drcav3lq.workspace  = 380;

Solve drcav3lq using nlp minimazing f ;

display f.l;
display y.l;
