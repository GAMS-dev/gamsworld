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

*   Source: p. 120 of
*   P.A. Steenbrink,
*   "Optimization of Transport Networks",
*   Wiley, 1974.

*   Note that Steenbrink does not give values for TZERO, CCR and alpha.
*   The problem has also been slightly perturbed by making NONZ >0, in
*   order to avoid undefined values for some elements and infinite
*   slope for others at the solution.

*   SIF input: Ph. Toint, June 1990.

*   classification ONR2-MY-540-126

* changed model from original by starting cd[4] and cr[4] at 2000
* otherwise, the sqrt function cannot be evaluated

$Set narcs 18
$Set ntrips 14
$Set kkk 6
Set I / i1*i%narcs% / ;
Set J / j1*j%ntrips% / ;
Set k / k1*k%kkk% / ;

Parameter cost(i) /  i1   35.0 ,  i2   40.0 ,  i3   30.0 ,
                     i4  100.0 ,  i5   15.0 ,  i6   55.0 ,
                     i7  100.0 ,  i8   25.0 ,  i9   60.0 ,
                    i10   35.0 , i11   55.0 , i12   15.0 ,
                    i13   40.0 , i14   60.0 , i15   25.0 ,
                    i16   30.0 , i17   50.0 , i18   50.0 /;

Parameter  alph ;  alph = 0.01 ;
Parameter tzero ; tzero = 0.01 ;
Parameter   ccr ;   ccr = 0.01 ;
Parameter  nonz ;  nonz = 0.01 ;

Parameter  cmd(i) ; cmd(i)  = nonz ;   cmd['i4']  = 2000 ;
Parameter  cmr(i) ; cmr(i)  = nonz ;   cmr['i4']  = 2000 ;
Parameter  la(i)  ; la(i)   = cost[i]* alph ;
Parameter  lt(i)  ; lt(i)   = cost[i]*tzero ;
Parameter  lc(i)  ; lc(i)   = cost[i]*  ccr ;

Parameter rhs(j,k) ; rhs(j,k) = 0.0 ;

rhs['j1','k2'] =    -2000 ; rhs['j1','k3'] =     2000 ;
rhs['j2','k2'] =    -2000 ; rhs['j2','k4'] =     2000 ;
rhs['j3','k2'] =    -1000 ; rhs['j3','k5'] =     1000 ;
rhs['j4','k3'] =    -1000 ; rhs['j4','k4'] =     1000 ;
rhs['j5','k3'] =    -2000 ; rhs['j5','k5'] =     2000 ;
rhs['j6','k4'] =    -1000 ; rhs['j6','k5'] =     1000 ;
rhs['j7','k3'] =     -200 ; rhs['j7','k2'] =      200 ;
rhs['j8','k4'] =     -200 ; rhs['j8','k2'] =      200 ;
rhs['j9','k5'] =     -100 ; rhs['j9','k2'] =      100 ;
rhs['j10','k4'] =    -100 ; rhs['j10','k3'] =     100 ;
rhs['j11','k5'] =    -200 ; rhs['j11','k3'] =     200 ;
rhs['j12','k5'] =    -100 ; rhs['j12','k4'] =     100 ;
rhs['j13','k1'] =  -10000 ; rhs['j13','k6'] =   10000 ;
rhs['j14','k6'] =   -1000 ; rhs['j14','k1'] =    1000 ;

Variable cd(i) , cr(i) , d[j,i] , r[j,i] , f ;

Equation cons1(j) ,cons2(j) ,cons3(j) ,cons4(j) ,cons5(j) ,
         cons6(j) ,cons7(j) ,cons8(j) ,cons9(j) , Def_obj ;

cons1(j)..  r[j,'i1'] +r[j,'i2'] +r[j,'i3'] -d[j,'i1'] -
            d[j,'i2'] -d[j,'i3']  =e=  rhs[j,'k1'];
cons2(j).. -d[j,'i4'] +r[j,'i4'] -d[j,'i5'] +r[j,'i5'] -
            d[j,'i6'] +r[j,'i6'] +d[j,'i1'] -r[j,'i1']  =e=  rhs[j,'k2'];
cons3(j).. -d[j,'i7'] +r[j,'i7'] -d[j,'i8'] +r[j,'i8'] -
            d[j,'i9'] +r[j,'i9'] +d[j,'i2'] -r[j,'i2']  =e=  rhs[j,'k3'];
cons4(j).. -d[j,'i10']+r[j,'i10']-d[j,'i11']+r[j,'i11']-
            d[j,'i12']+r[j,'i12']+d[j,'i4'] -r[j,'i4']  =e=  rhs[j,'k4'];
cons5(j).. -d[j,'i13']+r[j,'i13']-d[j,'i14']+r[j,'i14']-
            d[j,'i15']+r[j,'i15']+d[j,'i7'] -r[j,'i7']  =e=  rhs[j,'k5'];
cons6(j).. -d[j,'i16']+r[j,'i16']+d[j,'i10']-r[j,'i10']+
            d[j,'i13']-r[j,'i13']  =e=  rhs[j,'k6'];
cons7(j).. -d[j,'i17']+r[j,'i17']+d[j,'i3'] -r[j,'i3'] +
            d[j,'i5'] -r[j,'i5'] +d[j,'i8'] -r[j,'i8']  =e=  0.0;
cons8(j).. -d[j,'i18']+r[j,'i18']+d[j,'i6'] -r[j,'i6'] +
            d[j,'i9'] -r[j,'i9'] +d[j,'i11']-r[j,'i11']+d[j,'i14']-
            r[j,'i14']+d[j,'i17']-r[j,'i17']  =e=  0.0;
cons9(j)..  d[j,'i12']-r[j,'i12']+d[j,'i15']-r[j,'i15']+
            d[j,'i16']-r[j,'i16']+d[j,'i18']-r[j,'i18'] =e=  0.0;

Def_obj..
 f =e= sum{i,((lt[i]*sum{j,d[j,i]}+lc[i]/cd[i]/cd[i]*power((sum{j,d[j,i]}),3))+
              (lt[i]*sum{j,r[j,i]}+lc[i]/cr[i]/cr[i]*power((sum{j,r[j,i]}),3))+
                      la[i]*sqrt(cd[i]-cmd[i]+nonz) +
                      la[i]*sqrt(cr[i]-cmr[i]+nonz))}/100000;

 d.lo[j,i] = 0.0  ;  d.l[j,i]  = 0.1 ;
 r.lo[j,i] = 0.0  ;  r.l[j,i]  = 0.1 ;
cd.lo[i] = cmd[i] ;   cd.l[i]  = 0.1 ; cd.l['i4']  = 2000.0 ;
cr.lo[i] = cmr[i] ;   cr.l[i]  = 0.1 ; cr.l['i4']  = 2000.0 ;


Model steenbre /all/ ;

Solve steenbre using nlp minimazing f ;
f.l=f.l*100000;
display f.l ;
