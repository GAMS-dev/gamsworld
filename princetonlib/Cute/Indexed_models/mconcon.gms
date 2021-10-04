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

*   classification LOI2-MN-15-11

$Set N  7
Set I  / i1*i%N% / ;
$Set M  4
Set J  / j1*j%M% / ;


Variable P[i] , Q[j] , F[j] , f_small ;

Equation cons1_1 , cons1_2 , cons1_3 , cons1_4 ,
          cons2  ,  cons3  ,  cons4  ,  cons5  ,
          cons6  ,  cons7  ,  cons8  ,  Def_obj ;

cons1_1.. P['i1']*abs(P['i1'])-P['i2']*abs(P['i2'])-0.597053452*
                               Q['j1']*exp(log(abs(Q['j1']))*(0.8539)) =e= 0 ;
cons1_2.. P['i3']*abs(P['i3'])-P['i4']*abs(P['i4'])-0.597053452*
                               Q['j2']*exp(log(abs(Q['j2']))*(0.8539)) =e= 0 ;
cons1_3.. P['i4']*abs(P['i4'])-P['i5']*abs(P['i5'])-0.597053452*
                               Q['j3']*exp(log(abs(Q['j3']))*(0.8539)) =e= 0 ;
cons1_4.. P['i6']*abs(P['i6'])-P['i7']*abs(P['i7'])-0.597053452*
                               Q['j4']*exp(log(abs(Q['j4']))*(0.8539)) =e= 0 ;
cons2..    Q['j1']-F['j3']        =e= 0 ;
cons3..   -Q['j1']+F['j1']        =e= 0 ;
cons4..    Q['j2']-F['j1']        =e= 0 ;
cons5..   -Q['j2']+Q['j3'] + 1000 =e= 0 ;
cons6..   -Q['j3']-F['j2']        =e= 0 ;
cons7..    Q['j4']+F['j2']        =e= 0 ;
cons8..   -Q['j4']-F['j4']        =e= 0 ;

Def_obj.. f_small =e= sum{i, (-P[i]) } ;

P.up['i3'] = 904.73 ;
P.up['i5'] = 904.73 ;
P.up['i1'] = 914.73 ;
P.up['i7'] = 914.73 ;
F.up['j4'] = 400    ;
Q.l[j]    = -100 ;
Q.l['j1'] =  100 ;
Q.l['j2'] =  100 ;
P.l[i]  =  965 ;
F.l[j]  = 1000 ;

Model mconcon /all/ ;

Solve mconcon using dnlp minimazing  f_small ;

display  f_small.l ;
display P.l , Q.l , F.l ;
