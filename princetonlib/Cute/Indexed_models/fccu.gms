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

*   Source:
*   W. J. Korchinski, Profimatics, Inc,
*   325 Rolling Oaks Drive, Thousand Oaks, California, USA 91361-1200
*   Telephone: 1-805 496 6661, Fax: 1-805 373 5108

*   SIF input: W. Korchinski, Spring 1993.

*   classification SLR2-MN-19-8

$Set N 19
Set i /i1*i%N%/;

parameter w(i) / i1 0.2        , i2 1 , i3 1 , i4 0.33333333, i5 0.33333333  ,
                 i6 0.33333333 , i7 1 , i8 1 , i9 1         ,i10 1           ,
                i11 1          ,i12 1 ,i13 1 , i14 1        ,i15 0.33333333  ,
                i16 0.33333333 ,i17 1 ,i18 0.33333333       , i19 0.33333333 /;


parameter m(i) /i1 31   ,  i2 36   ,  i3 20   ,  i4 3   ,  i5 5   ,
                i6  3.5 ,  i7  4.2 ,  i8  0.9 ,  i9 3.9 , i10 2.2 ,
               i11 22.8 , i12  6.8 , i13 19   , i14 8.5 , i15 2.2 ,
               i16  2.5 , i17 10.8 , i18  6.5 , i19 6.5           / ;

Variable  Feed , Effluent, MF_ohd , HCN , LCO , HCO , MF_btms , Decant ,
          Dec_recy, Off_gas , DC4_feed, DC3_feed, DC4_btms, Lean_oil, Propane ,
          Butane , C8spl_fd, LCN , MCN , f ;

Equation cons1,cons2,cons3,cons4,cons5,cons6,cons7,cons8, Def_obj ;

 cons1.. Feed     + Dec_recy - Effluent                  =e= 0;
 cons2.. Effluent - MF_ohd   - HCN - LCO - HCO - MF_btms =e= 0;
 cons3.. MF_btms  - Decant   - Dec_recy                  =e= 0;
 cons4.. MF_ohd   + Lean_oil - Off_gas   - DC4_feed      =e= 0;
 cons5.. DC4_feed - DC3_feed - DC4_btms                  =e= 0;
 cons6.. DC4_btms - Lean_oil - C8spl_fd                  =e= 0;
 cons7.. DC3_feed - Propane  - Butane                    =e= 0;
 cons8.. C8spl_fd - LCN      - MCN                       =e= 0;

Def_obj..    f=e= sqr(Feed     - m['i1'])    /w['i1']
                 +sqr(Effluent - m['i2'])    /w['i2']
                 +sqr(MF_ohd   - m['i3'])    /w['i3']
                 +sqr(HCN      - m['i4'])    /w['i4']
                 +sqr(LCO      - m['i5'])    /w['i5']
                 +sqr(HCO      - m['i6'])    /w['i6']
                 +sqr(MF_btms  - m['i7'])    /w['i7']
                 +sqr(Decant   - m['i8'])    /w['i8']
                 +sqr(Dec_recy - m['i9'])    /w['i9']
                 +sqr(Off_gas  - m['i10'])   /w['i10']
                 +sqr(DC4_feed - m['i11'])   /w['i11']
                 +sqr(DC3_feed - m['i12'])   /w['i12']
                 +sqr(DC4_btms - m['i13'])   /w['i13']
                 +sqr(Lean_oil - m['i14'])   /w['i14']
                 +sqr(Propane  - m['i15'])   /w['i15']
                 +sqr(Butane   - m['i16'])   /w['i16']
                 +sqr(C8spl_fd - m['i17'])   /w['i17']
                 +sqr(LCN      - m['i18'])   /w['i18']
                 +sqr(MCN      - m['i19'])   /w['i19'] ;

Feed.l      = 1 ; Effluent.l   = 1 ; MF_ohd.l    = 1 ;
HCN.l       = 1 ; LCO.l        = 1 ; HCO.l       = 1 ;
MF_btms.l   = 1 ; Decant.l     = 1 ; Dec_recy.l  = 1 ;
Off_gas.l   = 1 ; DC4_feed.l   = 1 ; DC3_feed.l  = 1 ;
DC4_btms.l  = 1 ; Lean_oil.l   = 1 ; Propane.l   = 1 ;
Butane.l    = 1 ; C8spl_fd.l   = 1 ; LCN.l       = 1 ;
MCN.l       = 1 ;

Model fccu  /all/;

Solve fccu using nlp minimize f;

display f.l         ;
display Feed.l      ,
        Effluent.l  ,
        MF_ohd.l    ,
        HCN.l       ,
        LCO.l       ,
        HCO.l       ,
        MF_btms.l   ,
        Decant.l    ,
        Dec_recy.l  ,
        Off_gas.l   ,
        DC4_feed.l  ,
        DC3_feed.l  ,
        DC4_btms.l  ,
        Lean_oil.l  ,
        Propane.l   ,
        Butane.l    ,
        C8spl_fd.l  ,
        LCN.l       ,
        MCN.l       ;
