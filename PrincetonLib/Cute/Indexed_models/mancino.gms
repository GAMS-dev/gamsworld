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
*   E. Spedicato,
*   "Computational experience with quasi-Newton algorithms for
*   minimization problems of moderate size",
*   Report N-175, CISE, Milano, 1975.

*   See also Buckley *51 (p. 72), Schittkowski *391 (for N = 30)

*   SIF input: Ph. Toint, Dec 1989.
*              correction by Ph. Shott, January, 1995.

*   classification SUR2-AN-V-0

$Set N  100
Set I  / i1*i%N% / ;

Alias(i,j);

Variable x[i] , v[i,j] , alpha[i] , f ;

Equation

 Eq_1(i,j) , Eq_2(i) , Def_obj ;

Eq_1(i,j)..  v[i,j] =e= sqrt(sqr(x[i]) + ord(i)/ord(j)) ;

Eq_2(i)..  alpha[i] =e= 1400*x[i] + power((ord(i)-50),3) +
                         sum{j,v[i,j]*(power{(sin(log(v[i,j]))),5} +
                                       power{(cos(log(v[i,j]))),5}) } ;

Def_obj..  f =e= sum{i, sqr(alpha[i])/1000 };

v.lo[i,j] = 0.0001 ;

x.l[i] = (-8.710996e-04)*(power{(ord(i)-50),3} +
                    sum{j,sqrt(ord(i)/ord(j))*
              (power{(sin(log(sqrt(ord(i)/ord(j))))),5}+
               power{(cos(log(sqrt(ord(i)/ord(j))))),5})}
                                    );




Model mancino /all/ ;
Solve mancino  using nlp minimazing f ;
f.l = f.l*1000;
Display x.l ;
Display f.l ;
