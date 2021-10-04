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

*   Source: This problem is associated to the family of Hard-Spheres
*   problem. It belongs to the family of sphere packing problems, a
*   class of challenging problems dating from the beginning of the
*   17th century which is related to practical problems in Chemistry,
*   Biology and Physics. It consists on maximizing the minimum pairwise
*   distance between NP points on a sphere in \R^{MDIM}.
*   This problem may be reduced to a nonconvex nonlinear optimization
*   problem with a potentially large number of (nonoptimal) points
*   satisfying optimality conditions. We have, thus, a class of problems
*   indexed by the parameters MDIM and NP, that provides a suitable
*   set of test problems for evaluating nonlinear programming codes.
*   After some algebric manipulations, we can formulate this problem as
*
*                            Minimize z
*
*                            subject to
*
*      z \geq <x_i, x_j> for all different pair of indices i, j
*
*                            ||x_i||^2 = 1    for all i = 1,...,NP
*
*     The goal is to find an objective value less than 0.5 (This means
*     that the NP points stored belong to the sphere and every distance
*     between two of them is greater than 1.0).
*
*     Obs: the starting point is aleatorally chosen although each
*     variable belongs to [-1.,1.].
*
*     References:
*     [1] "Validation of an Augmented Lagrangian algorithm with a
*          Gauss-Newton Hessian approximation using a set of
*          Hard-Spheres problems", N. Krejic, J. M. Martinez, M. Mello
*          and E. A. Pilotta, Tech. Report RP 29/98, IMECC-UNICAMP,
*          Campinas, 1998.
*     [2] "Inexact-Restoration Algorithm for Constrained Optimization",
*          J. M. Martinez and E. A. Pilotta, Tech. Report, IMECC-UNICAMP,
*          Campinas, 1998.
*     [3]  "Sphere Packings, Lattices and Groups", J. H. Conway and
*           N. J. C. Sloane, Springer-Verlag, NY, 1988.
*
*
*     SIF input: September 29, 1998
*                Jose Mario Martinez
*                Elvio Angel Pilotta
*

*   classification LQR2-RN-V-V

$Set N 42
$Set N1 41
Set i /i1*i%N%/ ;

$Set M 3
Set j /j1*j%M%/ ;
Alias(k,j);
Alias(l,i);

Set left(i) /i1*i%N1%/ ;
Set right(l) /i2*i%N%/ ;

parameter x_init(i,j);       x_init[i,j] = 0 ;
x_init['i1','j1']   =   -0.10890604  ;x_init['i1','j2']   =    0.85395078  ;
x_init['i1','j3']   =   -0.45461680  ;x_init['i2','j1']   =    0.49883922  ;
x_init['i2','j2']   =   -0.18439316  ;x_init['i2','j3']   =   -0.04798594  ;
x_init['i3','j1']   =    0.28262888  ;x_init['i3','j2']   =   -0.48054070  ;
x_init['i3','j3']   =    0.46715332  ;x_init['i4','j1']   =   -0.00580106  ;
x_init['i4','j2']   =   -0.49987584  ;x_init['i4','j3']   =   -0.44130302  ;
x_init['i5','j1']   =    0.81712540  ;x_init['i5','j2']   =   -0.36874258  ;
x_init['i5','j3']   =   -0.68321896  ;x_init['i6','j1']   =    0.29642426  ;
x_init['i6','j2']   =    0.82315508  ;x_init['i6','j3']   =    0.35938150  ;
x_init['i7','j1']   =    0.09215152  ;x_init['i7','j2']   =   -0.53564686  ;
x_init['i7','j3']   =    0.00191436  ;x_init['i8','j1']   =    0.11700318  ;
x_init['i8','j2']   =    0.96722760  ;x_init['i8','j3']   =   -0.14916438  ;
x_init['i9','j1']   =    0.01791524  ;x_init['i9','j2']   =    0.17759446  ;
x_init['i9','j3']   =   -0.61875872  ;x_init['i10','j1']  =   -0.63833630  ;
x_init['i10','j2']  =    0.80830972  ;x_init['i10','j3']  =    0.45846734  ;
x_init['i11','j1']  =    0.28446456  ;x_init['i11','j2']  =    0.45686938  ;
x_init['i11','j3']  =    0.16368980  ;x_init['i12','j1']  =    0.76557382  ;
x_init['i12','j2']  =    0.16700944  ;x_init['i12','j3']  =   -0.31647534  ;


Variable x(i,j) , z , f ;

Equation cons1(i,l) , cons2(i) , Def_obj ;

cons1(i,l)$((left(i)) and (ord(l)gt ord(i))).. sum{k,x[i,k]*x[l,k]} -z =l= 0.0 ;
cons2(i)..                                     sum{k, sqr(x[i,k])}     =e= 1.0 ;
Def_obj..                                      f                       =e= z   ;

x.l[i,j] = x_init[i,j];

Model kissing /all/;

Solve kissing  using nlp minimize f ;

display x.l ;

display f.l ;
