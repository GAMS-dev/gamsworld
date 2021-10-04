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
*   D. Shanno,
*   " On Variable Metric Methods for Sparse Hessians II: the New
*   Method",
*   MIS Tech report 27, University of Arizona (Tucson, UK), 1978.

*   See also Buckley #37 (p. 76) and Toint #15.

*   SIF input: Ph. Toint, Dec 1989.

*   classification SUR2-AN-V-0


$Set N 10000
Set i/i1*i%N%/;
Set Right(i) i/i2*i%N%/;

Variable x(i) , f ;

Equation  Def_obj ;

Def_obj.. f =e= sqr(x['i1'] - 1)+ sum{i$Right(i),(100*sqr(x['i1']-sqr(x[i-1])))};

x.up[i]  =   100 ;
x.lo[i]  =  -100 ;
x.l[i]  =   -1 ;

Model nondia /all/ ;
Solve nondia using nlp minimazing f ;

display x.l;
display f.l;
