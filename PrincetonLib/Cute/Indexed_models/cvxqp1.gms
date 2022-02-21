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

*   classification QLR2-AN-V-V

$Set N 1000
$Set M 500
Set i /i1*i%N%/;
Alias (i,j);
Set connect2(i,j);
    connect2(i,j)=yes$(ord(j)=(mod{(ord(i)*2-1),%N%}+1));
Set connect3(i,j);
    connect3(i,j)=yes$(ord(j)=(mod{(ord(i)*3-1),%N%}+1));
Set connect4(i,j);
    connect4(i,j)=yes$(ord(j)=(mod{(ord(i)*4-1),%N%}+1));
Set connect5(i,j);
    connect5(i,j)=yes$(ord(j)=(mod{(ord(i)*5-1),%N%}+1));
Parameter a[i];

Set Left(i) /i1*i%M%/;

Positive Variable x[i] ;
Variable f;
Equation Eq_1[i], Def_obj;




Eq_1[i]$left(i)..
             x[i]+ {2*sum(j$connect4(i,j),x[j])}+
                   {3*sum(j$connect5(i,j),x[j])}-6=e=0;

Def_obj..
f=e=sum{i,(sqr(x[i] +sum{j$connect2(i,j),x[j]}+
                     sum{j$connect3(i,j),x[j]})*
           ord(i)/2)}/1000000;
x.lo[i] = 0.1;
x.up[i] = 10.0;
x.l[i]  = 0.5;

Model cvxqp1 /all/;

Solve cvxqp1 using dnlp minimize f;

f.l= 1000000*f.l;

display x.l;
display connect2;
display f.l;
