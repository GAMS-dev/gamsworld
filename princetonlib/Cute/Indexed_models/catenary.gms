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
*   K. Veselic,
*   "De forma catenarum in campo gravitatis pendentium",
*   Klasicna Gimnazija u Zagrebu, Zagreb, 1987.

*   SIF input: Ph. L. Toint, May 1993.

*   classification LQR2-AY-V-V

$Set N 166
$Set M 165

Set i /i0*i%N%/;
Set inside(I) /i1*i%N%/;

parameter  gamma;  gamma =   9.81           ;
parameter  tmass;  tmass = 500.0            ;
parameter     bl;     bl =   1.0            ;
parameter  fract;  fract =   0.6            ;

parameter length; length = bl*(%n%)*fract   ;
parameter   mass;   mass = tmass/(%n%)      ;
parameter     mg;     mg = mass*gamma       ;


Variable     x[i], y[i], z[i], f    ;

Equation Eq_1, Def_obj ;
Eq_1(i)$inside(i)..                    sqr(x[i]-x[i-1])
                                      +sqr(y[i]-y[i-1])
                                      +sqr(x[i]-z[i-1])    =e=   sqr(bl);
Def_obj.. f =e=  mg*y['i0']/2 + sum{i$(ord(i) ne card(i)),(mg*y[i])}+mg*y['i%N%']/2;

x.l[i] = (ord(i)-1)*length/(%N%) ;
y.l[i] = 1.0                     ;
z.l[i] = 0.0                     ;

x.fx['i0']    = 0.0              ;
y.fx['i0']    = 0.0              ;
z.fx['i0']    = 0.0              ;
x.fx['i%N%']  = length           ;

Model catenary /all/;

Solve catenary using nlp minimize f;
Solve catenary using nlp minimize f;
Solve catenary using nlp minimize f;
Solve catenary using nlp minimize f;
display x.l, y.l, z.l;
display f.l;
