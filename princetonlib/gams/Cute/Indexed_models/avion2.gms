* Cute AMPL model  (translation to GAMS)
*
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

*   classification OLR2-RN-49-15


Variable   SR,LR,PK,EF,SX,LX,SD,SK,ST,SF,LF,AM,CA,CB,
           SO,SS,IMPDER,IMPK,IMPFUS,QI,PT,MV,MC,MD,PD,
           NS,VS,CR,PM,DV,MZ,VN,QV,QF,IMPTRAIN,IMPMOT,
           IMPNMOT,IMPPET,IMPPIL,IMPCAN,IMPSNA,MS,EL,
           DE,DS,IMPVOIL,NM,NP,NG,f;

Equation Eq_01,Eq_02,Eq_03,Eq_04,Eq_05,
         Eq_06,Eq_07,Eq_08,Eq_09,Eq_10,
         Eq_11,Eq_12,Eq_13,Eq_14,Eq_15,Def_obj;

Eq_01..  SD-0.13*SR  =e= 0;
Eq_02..  SX-0.7 *SR  =e= 0;
Eq_03..  LX-     LR  =e= 0;
Eq_04..  SF-ST-2*SD-2*SX-2*SK =e= 0;
Eq_05..  IMPFUS - 20*SF       =e= 0;
Eq_06..  MD     - 2*MV        =e= 0;
Eq_07..  QF     - QI - QV     =e= 0;
Eq_08..  IMPTRAIN - 0.137*MV  =e= 0;
Eq_09..  IMPNMOT - 35*NM      =e= 0;
Eq_10..  IMPPET - 0.043*QI    =e= 0;
Eq_11..  IMPPIL - 200*NP      =e= 0;
Eq_12..  IMPCAN - 120*NG      =e= 0;
Eq_13..  IMPSNA - 300*NS -400 =e= 0;
Eq_14..  MC-MV+95*NP+70*NG+660*NM+0.5*QI-380=e=0;
Eq_15..  MZ-IMPTRAIN+IMPNMOT+IMPPET+IMPPIL+IMPCAN+IMPSNA+290=e=0;

Def_obj.. f=e=     sqr(SK - 0.01*PK*SR)
                 + sqr(CA - (SS-SO-CB*LF)/sqr(LF))
                 + sqr(-2*AM+SO+SS + 0.01*EF/LF)
                 + sqr(AM - 0.025*SO*sqr(CB)/CA)
                 + sqr(IMPDER - 27.5*SD - 1.3*sqr(SD))
                 + sqr(IMPK - 70*SK + 8.6*sqr(SK))
                 + sqr(QI - 1000 + sqr(MV)/24000)
                 + sqr(1000*PT - MD*PD)
                 + sqr(VN + VS +QF/790 + 2 - MZ/CR +DV*PT)
                 + sqr(IMPMOT - 1000*PT/(PM+20) - 12*sqrt(PT))
                 + sqr(ST - 1.25*SR*NM)
                 + sqr(SR - MD/MS)
                 + sqr(QV - 2.4*SX*sqrt(SX)*EL/sqrt(LX))
                 + sqr(SO - 0.785*sqr(DE)*PT)
                 + sqr(SS - 0.785*sqr(DS)*PT)
                 + sqr(CB - 2*(VN-CA* power(LF,3) )/(sqr(LF)*(3-SO*LF)))
                 + sqr(IMPVOIL - 1.15*SX*(15+0.15*SX)*
                      (8+sqrt(power((MC*LX/(50*SR*EL)),3)) ));

SR.lo       =   10     ;
LR.lo       =    0     ;
PK.lo       =    0     ;
EF.lo       =    0     ;
SX.lo       =    7     ;
LX.lo       =    1.5   ;
SD.lo       =    2     ;
SK.lo       =    2     ;
ST.lo       =   30     ;
SF.lo       =   20     ;
LF.lo       =    0.01  ;
AM.lo       =    0     ;
CA.lo       =   -0.2   ;
CB.lo       =    0.1   ;
SO.lo       =    0     ;
SS.lo       =    0     ;
IMPDER.lo   =  100     ;
IMPK.lo     =  500     ;
IMPFUS.lo   =  500     ;
QI.lo       = 1000     ;
PT.lo       =    2     ;
MV.lo       = 2000     ;
MC.lo       = 3000     ;
MD.lo       = 5000     ;
PD.lo       =    0.2   ;
NS.lo       =    1     ;
VS.lo       =    0     ;
CR.lo       =  100     ;
PM.lo       =    4     ;
DV.lo       =    0     ;
MZ.lo       =  500     ;
VN.lo       =   10     ;
QV.lo       =  250     ;
QF.lo       =  750     ;
IMPTRAIN.lo =  250     ;
IMPMOT.lo   =   10     ;
IMPNMOT.lo  =   35     ;
IMPPET.lo   =  100     ;
IMPPIL.lo   =  200     ;
IMPCAN.lo   =  120     ;
IMPSNA.lo   =  700     ;
MS.lo       =  100     ;
EL.lo       =    2     ;
DE.lo       =    0     ;
DS.lo       =    0     ;
IMPVOIL.lo  =  500     ;
NM.lo       =    1     ;
NP.lo       =    1     ;
NG.lo       =    1     ;

SR.up       =   150    ;
LR.up       =    10    ;
PK.up       =    10    ;
EF.up       =     5    ;
SX.up       =   120    ;
LX.up       =     8    ;
SD.up       =    20    ;
SK.up       =    30    ;
ST.up       =   500    ;
SF.up       =   200    ;
LF.up       =    20    ;
AM.up       =    10    ;
CA.up       =    -0.001;
CB.up       =     2    ;
SO.up       =     1    ;
SS.up       =     2    ;
IMPDER.up   =  1000    ;
IMPK.up     =  5000    ;
IMPFUS.up   =  5000    ;
QI.up       = 20000    ;
PT.up       =    30    ;
MV.up       = 20000    ;
MC.up       = 30000    ;
MD.up       = 50000    ;
PD.up       =     0.8  ;
NS.up       =     5    ;
VS.up       =    20    ;
CR.up       =   400    ;
PM.up       =    15    ;
DV.up       =    10    ;
MZ.up       = 10000    ;
VN.up       =    50    ;
QV.up       =  5000    ;
QF.up       = 15000    ;
IMPTRAIN.up =  3000    ;
IMPMOT.up   =  5000    ;
IMPNMOT.up  =    70    ;
IMPPET.up   =  3000    ;
IMPPIL.up   =   400    ;
IMPCAN.up   =   240    ;
IMPSNA.up   =  1900    ;
MS.up       =  1000    ;
EL.up       =    20    ;
DE.up       =     1    ;
DS.up       =     2    ;
IMPVOIL.up  =  5000    ;
NM.up       =     2    ;
NP.up       =     2    ;
NG.up       =     2    ;

SR.l       =    2.7452e+01;
LR.l       =    1.5000e+00;
PK.l       =    1.0000e+01;
EF.l       =    0.0000e+00;
SX.l       =    1.9217e+01;
LX.l       =    1.5000e+00;
SD.l       =    3.5688e+00;
SK.l       =    4.0696e+00;
ST.l       =    3.4315e+01;
SF.l       =    8.8025e+01;
LF.l       =    5.1306e+00;
AM.l       =    0.0000e+00;
CA.l       =   -1.4809e-01;
CB.l       =    7.5980e-01;
SO.l       =    0.0000e+00;
SS.l       =    0.0000e+00;
IMPDER.l   =    1.1470e+02;
IMPK.l     =    5.0000e+02;
IMPFUS.l   =    1.7605e+03;
QI.l       =    2.3256e+03;
PT.l       =    5.6788e+00;
MV.l       =    1.4197e+04;
MC.l       =    1.2589e+04;
MD.l       =    2.8394e+04;
PD.l       =    2.0000e-01;
NS.l       =    1.0000e+00;
VS.l       =    0.0000e+00;
CR.l       =    1.0000e+02;
PM.l       =    1.5000e+01;
DV.l       =    0.0000e+00;
MZ.l       =    5.0000e+02;
VN.l       =    1.0000e+01;
QV.l       =    8.1490e+02;
QF.l       =    3.1405e+03;
IMPTRAIN.l =    1.9450e+03;
IMPMOT.l   =    1.9085e+02;
IMPNMOT.l  =    3.5000e+01;
IMPPET.l   =    1.0000e+02;
IMPPIL.l   =    2.0000e+02;
IMPCAN.l   =    1.2000e+02;
IMPSNA.l   =    7.0000e+02;
MS.l       =    1.0000e+03;
EL.l       =    4.9367e+00;
DE.l       =    0.0000e+00;
DS.l       =    0.0000e+00;
IMPVOIL.l  =    5.0000e+03;
NM.l       =    1         ;
NP.l       =    1         ;
NG.l       =    1         ;


Model Avion2 /all/;

Solve Avion2 using nlp minimize f;

display f.l;
