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

*   Source: a simplification of
*   J.F. Blowey and C.M. Elliott,
*   "The Cahn-Hilliard gradient theory for phase separation with
*   non-smooth free energy Part II: Numerical analysis",
*   European Journal of Applied Mathematics (3) pp 147-179, 1992.

*   SIF input: Nick Gould, August 1996

*   classification QLR2-MN-V-V

$Set N 1000
$Set M 999
Set i /i0*i%N%/;
Set inside(i) /i1*i%M%/;


parameter  A; A= 0.2;
parameter  B; B= 0.5;
parameter  C; C= 0.5;
parameter  D; D= 0.8;

parameter INT;  INT = %N%*(1+A+B-C-D);

parameter v[i];

v[i]$(ord(i) le 201)                     = 1.0                               ;
v[i]$((ord(i) ge 202)and(ord(i) le  501))=( 1-(ord(i)-1-%N%*A)*2/(%N%*(B-A)));
v[i]$((ord(i) ge 502)and(ord(i) le  501))=-1.0                               ;
v[i]$((ord(i) ge 502)and(ord(i) le  801))=(-1+(ord(i)-1-%N%*C)*2/(%N%*(D-C)));
v[i]$((ord(i) ge 802)and(ord(i) le 1000))= 1.0                               ;

Variable u[i], W[i], f    ;

Equation Eq_1, Eq_2, Eq_3(i), Eq_4, Def_obj ;

Eq_1..              0.5*u['i0']+sum{i$inside(i),u[i]}+0.5*u['i%N%']=e=0.2*INT;
Eq_2..              u['i0'] - u['i1'] - 1/sqr(%N%)*w['i0']         =e= 0     ;
Eq_3(i)$inside(i).. 2*u[i] - u[i+1] - u[i-1] - 1/sqr(%N%)*w[i]     =e= 0     ;
Eq_4..              u['i%N%'] - u['i%M%'] - 1/sqr(%N%)*w['i%N%']   =e= 0     ;

Def_obj.. f=e= -2*u['i0']*u['i1'] + sqr(u['i0'])                    +
                sum{i$inside(i),(-2*u[i]*u[i+1] +2*sqr(u[i]))}      +
                sqr(u['i%N%'])                                      +
                sum{i,1/sqr(%N%)*u[i]*w[i]}                         +
                sum{i,(-1/sqr(%N%)*v[i]*u[i]-2/sqr(%N%)*v[i]*w[i])} +
                (v['i1']-v['i0'])*u['i0']                           +
                sum {i$inside(i),(v[i-1]-2*v[i]+v[i+1])*u[i]}       +
                (v['i%M%']-v['i%N%'])*u['i%N%']                       ;

u.lo[i] =-1.0  ;
u.up[i] = 1.0  ;
w.l[i]  =-1.0  ;
u.l[i]  = v[i] ;
w.lo[i] =   0.0  ;

Model bloweyc /all/;

Solve bloweyc using nlp minimize f;

display u.l;
display w.l;
display f.l;
