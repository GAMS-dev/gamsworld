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

*   Source: problem 1 - modified - in
*   M. J. D. Powell,
*   "Log barrier methods for semi-infinite programming calculations"
*   Numerical Analysis Report DAMTP 1992/NA11, U. of Cambridge, UK.

*   SIF input: A. R. Conn and Nick Gould, August 1993

*   classification LLR2-AN-2-V

$Set M 10000
$Set N 2
Set j / j1*j%M% / ;
Set i / i1*i%N% / ;

Parameter pi ; pi := 3.1415;

Parameter  xinit(i) / i1 0.8 , i2 0.5 / ;

Variable x[i] , f ;

Equation cons(j) , Def_obj ;

cons(j)..   x['i1'] * cos(2*pi*(ord(j)+0.5)/%M%) +
            x['i2'] * sin(2*pi*(ord(j)+0.5)/%M%) + 1.0 =g= 0 ;

Def_obj..  f =e= x['i2'] ;

x.l[i] = xinit(i) ;

Model sipow1 / all / ;

Solve sipow1 using nlp minimazing f ;

display f.l;
display x.l;
