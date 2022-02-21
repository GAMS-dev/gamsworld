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

*   classification OLR2-AN-V-V

$Set N 1000
$Set M 999
Set i /i1*i%N%/;
Set left(i) /i1*i%M%/;
$Set nx 5
Set j /j1*j%nx%/;
$Set ny 10
$Set nyy 9
Set k /k1*k%ny%/;
Set inside_k /k2*k%nyy%/;

parameter b[k,j];  b[k,j] = (ord(k)-ord(j))/(%nx%+%ny%);

Variable x[i,j], y[i,k],f ;

Equation Eq_1(i), Eq_2(i,k), Eq_3(i), Def_obj;


Eq_1(i)$left(i)..
        0.5*y[i,'k1']+0.25*y[i,'k2']          -y[i+1,'k1']   +
                                 sum{j,(b['k1',j]*x[i,j]   )} =e= 0;
Eq_2(i,k)$(left(i) and inside_k(k))..
           -y[i+1,k]+0.5*y[i,k]-0.25*y[i,k-1]+0.25*y[i,k+1]  +
                                 sum{j,(b[k,j]*x[i,j]      )} =e= 0;
Eq_3(i)$left(i)..
        0.5*y[i,'k%ny%']-0.25*y[i,'k%nyy%']-y[i+1,'k%ny%']   +
                                 sum{j,(b['k%ny%',j]*x[i,j])} =e= 0;

Def_obj.. f=e= sum{i$left(i),sum{j,power((x[i,j]+0.5 ),4)}}  +
               sum{(i,k),         power((y[i,k]+0.25),4)  }      ;

y.fx['i1',k] = 0.0;

Model dtoc1l /all/;

Solve dtoc1l using nlp minimize f;

display x.l;
display y.l;
display f.l;
