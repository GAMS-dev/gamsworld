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

*   Source: problem MAXTPH in
*   Vasko and Stott
*   "Optimizing continuous caster product dimensions:
*    an example of a nonlinear design problem in the steel industry"
*   SIAM Review, Vol 37 No, 1 pp.82-84, 1995

*   SIF input: A.R. Conn April 1995

*   classification LOR2-RN-5-4

parameter density ;  density  =   0.284 ;
parameter lenmax  ;  lenmax   =  60.0   ;
parameter maxaspr ;  maxaspr  =   2.0   ;
parameter minthick;  minthick =   7.0   ;
parameter minarea ;  minarea  = 200.0   ;
parameter maxarea ;  maxarea  = 250.0   ;
parameter     k   ;      k    =   1.0   ;

Variable thick, wid  , len  , tph  , ipm  , f;

Equation Eq_1, Eq_2, Eq_3, Eq_4, Eq_5, Def_obj;


Eq_1..  117.370892*tph/(wid*thick)-ipm =e= 0.0             ;
Eq_2..  sqr(thick)*ipm/48.0-len        =e= 0.0             ;
Eq_3..  wid/thick                      =l= maxaspr         ;
Eq_4..  thick*wid - minarea            =l= maxarea-minarea ;
Eq_5..  thick*wid - minarea            =g= 0               ;


Def_obj.. f=e= -tph ;

thick.lo  = minthick;
wid.lo    = 0.0001  ;
len.lo    = 0       ;     len.up    = lenmax  ;
tph.lo    = 0       ;
ipm.lo    = 0       ;

thick.l   = 0.5     ;
wid.l     = 0.5     ;
len.l     = 0.5     ;
tph.l     = 0.5     ;
ipm.l     = 0.5     ;

Model csfi1 /all/;

Solve csfi1 using nlp minimize f;

display f.l;
display thick.l;
display wid.l  ;
display len.l  ;
display tph.l  ;
display ipm.l  ;
