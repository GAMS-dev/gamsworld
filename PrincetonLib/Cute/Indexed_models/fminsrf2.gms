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

*   Source: setting the boundary free in
*   A Griewank and Ph. Toint,
*   "Partitioned variable metric updates for large structured
*   optimization problems",
*   Numerische Mathematik 39:429-448, 1982.

*   SIF input: Ph. Toint, November 1991.

*   classification OUR2-MY-V-0

$Set p    32
$Set mid  16

Set i /i1*i%p%/;


parameter     h00;     h00 = 1.0;
parameter  slopej;  slopej = 4.0;
parameter  slopei;  slopei = 8.0;

parameter   scale;   scale = sqr(%p%-1);

parameter    ston;    ston = slopei/(%p%-1);
parameter    wtoe;    wtoe = slopej/(%p%-1);
parameter     h01;     h01 = h00+slopej;
parameter     h10;     h10 = h00+slopei;

Alias(i,j);


Variable      x[i,j], f    ;
Equation   Def_obj ;

Def_obj..

f=e= sum{i$(ord(i) ne card(i)),sum{j$(ord(j) ne card(j)),

sqrt(0.5*sqr(%p%-1)*(sqr(x[i,j]-x[i+1,j+1])+
                     sqr(x[i+1,j]-x[i,j+1])
    )  +  1.0       )/scale} } +
        sqr(x['i%mid%','i%mid%'])/power(%p%,2);


x.l[i,j]      = 0.0;
x.l['i1',j]   = (ord(j)-1)*wtoe+h00;
x.l['i%p%',j] = (ord(j)-1)*wtoe+h10;
x.l[i,'i%p%'] = (ord(i)-1)*ston+h00;
x.l[i,'i1']   = (ord(i)-1)*ston+h01;


Model fminsrf2 /all/;

Solve fminsrf2  using nlp minimize f;


display x.l;
display f.l;
