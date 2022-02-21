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

*   Source:  problem 25 in
*   J.J. More', B.S. Garbow and K.E. Hillstrom,
*   "Testing Unconstrained Optimization Software",
*   ACM Transactions on Mathematical Software, vol. 7(1), pp. 17-41, 1981.

*   See also Buckley*72 (p.98).

*   SIF input: Ph. Toint, Dec 1989.

*   classification  OUR2-AN-V-0

$Set N   100
$Set N1  101
Set I  / i1*i%N% / ;

Variable x[i] , f ;

Equation Def_obj ;

Def_obj..
f =e= 0.0000001*(          sum{i, sqr(x[i]-1) } +
                       sqr(sum{i, ord(i)*x[i]} - %N%*(%N1%)/2)  +
                   sqr(sqr(sum{i, ord(i)*x[i]} - %N%*(%N1%)/2) )  );

x.l[i] = 1.0-ord(i)/%N% ;

Model vardim /all/ ;

Solve vardim  using nlp minimazing f ;
f.l = f.l/0.0000001;

Display x.l ;
Display f.l ;
