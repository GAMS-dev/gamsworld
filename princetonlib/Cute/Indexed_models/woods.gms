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

*   Source:  problem 14 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Toint*27, Buckley*17 (p. 101), Conn, Gould, Toint*7

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0

$Set N  10000
Set I  / i1*i%N% / ;
Set Each_4(I) ;
    Each_4(I) = yes$(mod(ord(i),4) = 0 ) ;

*var x{i in 1..10000} := if (i mod 2 == 1) then -3 else -1;
Variable x[i] , f ;
Equation Def_obj ;

Def_obj..  f =e= sum{i$Each_4(I), (100*sqr(x[i-2]-sqr(x[i-3])) +
                                       sqr(1-x[i-3]) +
                                    90*sqr(x[i]-sqr(x[i-1])) +
                                       sqr(1-x[i-1]) +
                                    10*sqr(x[i-2]+x[i]-2) +
                                   0.1*sqr(x[i-2]-x[i]) ) };

x.l[i] = -1 ;

Model woods /all/ ;

Solve woods  using nlp minimazing f ;

Display x.l ;
Display f.l ;
