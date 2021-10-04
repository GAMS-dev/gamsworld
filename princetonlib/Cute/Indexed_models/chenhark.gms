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
*   B. Chen and P. T. Harker,
*   SIMAX 14 (1993) 1168-1190

*   SDIF input: Nick Gould, November 1993.

*   classification QBR2-AN-V-V

$Set N  1000
$Set N1  999

$Set M1  700
$Set M2  701

Set i /i1*i%N%/;
Set inside(i) /i2*i%n1%/;
Set left(i)  /i1*i%m1%/;
Set right(i) /i%m2%*i%n1%/;

parameter  nfree;  nfree = 500;
parameter ndegen; ndegen = 200;
parameter x_p(i);
          x_p(i) = 1.0;
          x_p('i1')               = 0.0;
          x_p('i2')               = 0.0;
          x_p(i)$(ord(i)>nfree+2) = 0.0;
Variable   x[i],   f    ;

Equation  Def_obj ;

Def_obj.. f=e= sum{i$inside(i),(0.5*sqr(x[i+1]+x[i-1]-2*x[i]))}     +
                                0.5*sqr(x['i1'])                    +
                                0.5*sqr(2*x['i1'] - x['i2'])        +
                                0.5*sqr(2*x['i%n%'] - x['i%n1%'])   +
                                0.5*sqr(x['i%n%'])                  +
sum{i$left(i) ,(x[i]*(-6*x_p[i+2]+4*x_p[i+3]+4*x_p[i+1]-x_p[i+4]-x_p[i]  ))}+
sum{i$right(i),(x[i]*(-6*x_p[i+2]+4*x_p[i+3]+4*x_p[i+1]-x_p[i+4]-x_p[i]+1))} ;

x.lo(i)  =  0.0 ;
x.l(i)   =  0.5 ;

Model chenhark /all/;

Solve chenhark  using nlp minimize f;
Solve chenhark  using nlp minimize f;
Solve chenhark  using nlp minimize f;
Solve chenhark  using nlp minimize f;
Solve chenhark  using nlp minimize f;
Solve chenhark  using nlp minimize f;
Solve chenhark  using nlp minimize f;


display x.l;
display f.l;
