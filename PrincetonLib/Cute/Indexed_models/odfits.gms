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

*   Source: a modification of an example in
*   L.G. Willumsen,
*   "Origin-Destination Matrix: static estimation"
*   in "Concise Encyclopedia of Traffic and Transportation Systems"
*   (M. Papageorgiou, ed.), Pergamon Press, 1991.

*   M. Bierlaire, private communication, 1991.

*   SIF input: Ph Toint, Dec 1991.

*   classification OLR2-MN-10-6


set   i  / i13 , i14 , i23 , i24 / ;
set   KNOWN(i)  / i13, i14, i23 /;
set UNKNOWN(i)  / i24 /;

Set j       /j1*j6/ ;
Set ARCS(j) /j1*j6/ ;
Alias(j,k);

Parameter TC(j) / j1 100 , j2 500 , j3 400 , j4 1100, j5 600 , j6 700 /;
Parameter QLT(j) /j1 1 ,j2 1 ,j3 1 ,j4 1 ,j5 1 ,j6 1 /;

Parameter P(i,j) ;   P(i,j) = 0 ;
                     P['i13','j1'] = 1 ; P['i14','j2'] = 1 ; P['i23','j3'] = 1 ;
                     P['i14','j4'] = 1 ; P['i23','j4'] = 1 ; P['i23','j5'] = 1 ;
                     P['i24','j5'] = 1 ; P['i24','j6'] = 1 ;

Parameter AVP(i) ; AVP['i13'] =  90 ; AVP['i14'] = 450 ; AVP['i23'] = 360 ;
Parameter  MU(i) ; MU[i] = 0.5 ;

Parameter  GAMMA ;  GAMMA = 1.5 ;
Parameter ENTROP ; ENTROP = 0.2 ;

Variable T(i) , F_big(j) , f ;
Equation cons1(j) , Def_obj ;

cons1(j).. sum{i,(P[i,j]*T[i])} - F_big[j] =e= 0;

Def_obj..  f =e= sum{i$KNOWN(i),   MU[i]* ((T[i]*log(T[i]/AVP[i]))-T[i]) } +
                 sum{i$UNKNOWN(i), ENTROP*((T[i]*log(T[i]))-T[i]       ) } +
                 sum{j,(QLT[j]/GAMMA)*((F_big[j]*log(F_big[j]/TC[j]))-F_big[j]) };

F_big.lo(j) = 0.1  ;
T.lo(i)     = 0.1 ;

F_big.l(j)  = TC(j) ;
T.l(i)      =  1.0 ;
T.l(i)$(KNOWN(i)) = AVP(i) ;

Model odfits /all/ ;

Solve odfits  using nlp minimazing f ;

display f.l     ;
display F_big.l ;
display T.l     ;
