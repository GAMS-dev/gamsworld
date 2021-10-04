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

*   Source: an exercize for L. Watson course on LANCELOT in the Spring 1993.
*   B.Benhabib, R.G.Fenton and A.A.Goldberg,
*   "Analytical trajectory optimization of seven degrees of freedom redundant
*   robot",
*   Transactions of the Canadian Society for Mechanical Engineering,
*   vol.11(4), 1987, pp 197-200.

*   SIF input: Manish Sabu at Virginia Tech., Spring 1993.
*              Minor modifications by Ph. L. Toint, April 1993.

*   classification QOR2-MY-14-2

$Set N 7
$Set M 6
Set I / i1*i%N% / ;
Set Left(I) / i1*i%M% / ;

Parameter  XPOS    ;  XPOS     =  4.0      ;
Parameter  YPOS    ;  YPOS     =  4.0      ;
Parameter  HIGH    ;  HIGH     =  2.356194 ;
Parameter  DOWN    ;  DOWN     = -2.356194 ;
Parameter  THIN[i] ;  THIN[i]  =  0.0      ;

Variable TH[i] , THI[i] , f ;

Equation cons1 , cons2 , cons3(i) , Def_obj ;

   cons1.. sum{i$Left(i), cos(TH[i])} + 0.5 * cos(TH['i7']) - XPOS =e= 0 ;

   cons2.. sum{i$Left(i), sin(TH[i])} + 0.5 * sin(TH['i7']) - YPOS =e= 0 ;

cons3(i).. THI[i] =e= THIN[i];

Def_obj..  f =e= sum{i, sqr(TH[i]-THI[i]) };
* AMPL solutions
*TH.fx['i1'] = -4.59;
*TH.fx['i2'] =  6.06;
*TH.fx['i3'] =  0.808;
*TH.fx['i4'] =  0.808;
*TH.fx['i5'] =  0.808;
*TH.fx['i5'] =  0.808;
*TH.fx['i5'] =  0.713;


Model robot /all/ ;

Solve robot using nlp minimazing f ;

display f.l ; display TH.l ; display THI.l ;
