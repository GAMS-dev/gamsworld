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
*              correction by F. Ruediger, Mar 1997.

*   classification LQR2-AY-V-V

$Set N 11
$Set M 10
Set i /i0*i%N%/;
Set inside(i) /i1*i%M%/;
Set left(i) /i1*i%N%/;


parameter  gamma;  gamma=   9.81;
parameter  tmass;  tmass= 500.0 ;
parameter     bl;    bl =   1.0 ;
parameter  fract; fract =   0.6 ;

parameter length; length= bl*(%N%)*fract;
parameter   mass;   mass= tmass/(%N%)   ;
parameter     mg;     mg= mass*gamma    ;

variable x[i],y[i],z[i],f;

Equation Eq_1[i], Def_obj ;
Eq_1[i]$left(i).. sqr(x[i]-x[i-1])+sqr(y[i]-y[i-1])+sqr(z[i]-z[i-1])=e=sqr(bl);

Def_obj.. f=e=mg*y['i0']/2+sum{i$inside(i),(mg*y[i])}+mg*y['i%N%']/2    ;

x.l[i]=   (ord(i)-1)*length/(%N%);
y.l[i]=  -(ord(i)-1)*length/(%N%);
z.l[i]=                       0.0;

x.fx['i0']   = 0     ;
x.fx['i%N%'] = length;
y.fx['i0']   = 0     ;
z.fx['i0']   = 0     ;

Model catena /all/;

Solve catena using nlp minimize f;

display x.l;
display y.l;
display z.l;
display f.l;
