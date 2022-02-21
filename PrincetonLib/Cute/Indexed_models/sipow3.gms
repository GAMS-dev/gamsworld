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

*   Source: problem 3 in
*   M. J. D. Powell,
*   "Log barrier methods for semi-infinite programming calculations"
*   Numerical Analysis Report DAMTP 1992/NA11, U. of Cambridge, UK.

*   SIF input: A. R. Conn and Nick Gould, August 1993

*   classification LLR2-AN-4-V


$Set N 4
$Set M 10000
$Set M1 5000
Set i / i1*i%N% / ;
Set j / j1*j%M% / ;
Set Left(j) / j1*j%M1% / ;

Parameter x_init(i) / i1 -0.1 , i2 0.0 , i3 0.0 , i4 1.2 / ;

Parameter STEP ; STEP = 8/%M% ;

Parameter xi(j) ;
  xi(j)$((        1 le ord(j)) and (ord(j) le   %M%/8)) = 0.0               ;
  xi(j)$((  %M%/8+1 le ord(j)) and (ord(j) le   %M%/4)) = (ord(j)-1)*STEP-1 ;
  xi(j)$((  %M%/4+1 le ord(j)) and (ord(j) le 3*%M%/4)) = 1.0               ;
  xi(j)$((3*%M%/4+1 le ord(j)) and (ord(j) le   %M%/2)) = (ord(j)-1)*STEP-3 ;

Parameter eta(j) ;
 eta(j)$((        1 le ord(j)) and (ord(j) le   %M%/8)) = (ord(j)-1)*STEP   ;
 eta(j)$((  %M%/8+1 le ord(j)) and (ord(j) le   %M%/4)) = 1.0               ;
 eta(j)$((  %M%/4+1 le ord(j)) and (ord(j) le 3*%M%/4)) = (ord(j)-1)*STEP-2 ;
 eta(j)$((3*%M%/4+1 le ord(j)) and (ord(j) le   %M%/2)) = 0.0               ;



Variable x[i] , f ;

Equation cons1(j) , cons2(j)  , Def_obj ;


cons1(j)$Left(j)..
        x['i1'] + x['i4']+xi[j]*x['i2']+eta[j]*x['i3']-sqr(xi[j])*eta[j] =g=0;
cons2(j)$Left(j)..
        x['i1'] + xi[j]*x['i2']        +eta[j]*x['i3']-sqr(xi[j])*eta[j] =l= 0;

Def_obj..  f =g= x['i4'] ;

x.l(i)= x_init[i] ;

Model sipow3 / all / ;

Solve sipow3 using nlp minimazing f ;

display f.l;
display x.l;
