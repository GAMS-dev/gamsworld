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

*   classification NOR2-MN-20-14

Variable  L0 ,  N ,  F ,     K ,     LB ,
           L , DE , DI ,    TO ,    TOB ,
          NU ,  D ,  P ,     E ,     P0 ,
           G , DM , FR , TOLIM , TOBLIM , obj ;

Equation  cons1 ,  cons2 ,  cons3 ,  cons4 ,  cons5 ,
          cons6 ,  cons7 ,  cons8 ,  cons9 , cons10 ,
         cons11 , cons12 , cons13 , cons14 ,Def_obj ;

  cons1..   (-F)         =e= 0 ;
  cons2..   (-K)         =e= 0 ;
  cons3..   (DE-D-DM)    =e= 0 ;
  cons4..   (DI+D-DM)    =e= 0 ;
  cons5..   (D-P+E)      =e= 0 ;
  cons6..   (NU-N+2)     =e= 0 ;
  cons7..   (1.5*D-L0)   =e= 0 ;
  cons8..   (L-LB-FR)    =e= 0 ;
  cons9..   (LB)         =e= 0 ;
 cons10..   (L-L0+F)     =e= 0 ;
 cons11..   (TO)         =e= 0 ;
 cons12..   (TOB)        =e= 0 ;
 cons13..   TO-TOLIM     =l= 0 ;
 cons14..   TOB-TOBLIM   =l= 0 ;

Def_obj..  obj =e= 0 ;

    L0.up =   100;     L0.lo =   0.0;     L0.l = 1.5000e-01 ;
     N.up =   100;      N.lo =   0.0;      N.l = 2.4079e+01 ;
     F.up =    30;      F.lo =   0.0;      F.l = 9.2459e-15 ;
     K.up =   100;      K.lo =   0.0;      K.l = 0.0000e+00 ;
    LB.up =    50;     LB.lo =   0.0;     LB.l = 0.0000e+00 ;
     L.up =    50;      L.lo =   0.0;      L.l = 1.5000e-01 ;
    DE.up =    30;     DE.lo =   0.0;     DE.l = 6.8120e+00 ;
    DI.up =    30;     DI.lo =   0.0;     DI.l = 6.6120e+00 ;
    TO.up =   800;     TO.lo =   0.0;     TO.l = 0.0000e+00 ;
   TOB.up =   800;    TOB.lo =   0.0;    TOB.l = 0.0000e+00 ;
    NU.up =    50;     NU.lo =   0.5;     NU.l = 2.2079e+01 ;
     D.up =    10;      D.lo =   0.1;      D.l = 1.0000e-01 ;
     P.up =    20;      P.lo =   0.0;      P.l = 6.5268e-01 ;
     E.up =    10;      E.lo =   0.0;      E.l = 5.5268e-01 ;
    P0.up =  1000;     P0.lo =   1.0;     P0.l = 6.5887e+02 ;
     G.up = 80000;      G.lo = 40000;      G.l = 6.5887e+04 ;
    DM.up =    30;     DM.lo =   0.1;     DM.l = 6.7120e+00 ;
    FR.up =    50;     FR.lo =   0.0;     FR.l = 1.5000e-01 ;
 TOLIM.up =  1000;  TOLIM.lo =   100;  TOLIM.l = 1.0000e+02 ;
TOBLIM.up =  1000; TOBLIM.lo =   100; TOBLIM.l = 1.0000e+02 ;

Model res /all/ ;

Solve res using nlp minimazing obj ;

display obj.l;

display     L0.l ; display      N.l ; display      F.l;
display      K.l ; display     LB.l ; display      L.l;
display     DE.l ; display     DI.l ; display     TO.l;
display    TOB.l ; display     NU.l ; display      D.l;
display      P.l ; display      E.l ; display     P0.l;
display      G.l ; display     DM.l ; display     FR.l;
display  TOLIM.l ; display TOBLIM.l ;
