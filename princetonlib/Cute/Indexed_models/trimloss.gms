*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Convex Square Root formulation of a nonconvex MINLP arising from
*   trim loss minimization in the paper industry. The problem is to
*   produce a set of product paper rolls from raw paper rolls such that
*   a cost function including the trim loss and the overall production cost
*   is minimized.
*
*   SMALLER PROBLEM
*   Source: I. Harjunkoski, T. Westerlund, R. P\"{o}rn and H. Skrifvars
*   "Different transformations for solving non--convex trim loss problems
*   by MINLP", Report, Process Design Laboratory at Abo Akademi University,
*   Finland, Jan. 1996.
*   SIF input: S. Leyffer, November 1997
*   classification LOR2-AN-142-75
* PROBLEM SPECIFI CONSTANTS
* ... cost coefficients
* ... objective / cost function (1)
* ... constraint (2)
* ... constraint set (3)
* ... constraint set (4)
* ... constraint set (5)
* ... constraint set (6)
* ... constraint set (7)
* ... constraint set (8)
* ... constraint set (9)
* ... constraint set (12)
* ... constraint set (13)
* ... constraint set (14)
* ... constraint set (15)
* ... constraint set (16)
* ... nonlinear constraints (17) LINEAR PART

Parameter      ii  ;         ii  =     4  ;
Parameter      jj  ;         jj  =     4  ;
Parameter    nmax  ;       nmax  =     5  ;
Parameter   nord1  ;      nord1  =    12.0;
Parameter   nord2  ;      nord2  =     6.0;
Parameter   nord3  ;      nord3  =    15.0;
Parameter   nord4  ;      nord4  =     9.0;
Parameter     ll1  ;        ll1  =    15.0;
Parameter     ll2  ;        ll2  =    12.0;
Parameter     ll3  ;        ll3  =     9.0;
Parameter     ll4  ;        ll4  =     6.0;
Parameter     kk1  ;        kk1  =     5.0;
Parameter     kk2  ;        kk2  =     5.0;
Parameter     kk3  ;        kk3  =     5.0;
Parameter     kk4  ;        kk4  =     4.0;
Parameter     ten  ;        ten  =    10.0;
Parameter    bmax  ;       bmax  =  2000.0;
Parameter   delta  ;      delta  =   200.0;
Parameter      b1  ;         b1  =   330.0;
Parameter      b2  ;         b2  =   365.0;
Parameter      b3  ;         b3  =   390.0;
Parameter      b4  ;         b4  =   435.0;
Parameter   count  ;      count  =  4;
Parameter     cc1  ;        cc1  =  1 / 10.0 ;
Parameter      c1  ;         c1  =  1.0;
Parameter     cc2  ;        cc2  =  2 / 10.0 ;
Parameter      c2  ;         c2  =  1.0;
Parameter     cc3  ;        cc3  =  3 / 10.0 ;
Parameter      c3  ;         c3  =  1.0;
Parameter     cc4  ;        cc4  =  4 / 10.0 ;
Parameter      c4  ;         c4  =  1.0;
Parameter    lljr  ;       lljr  =  6.0;
Parameter     llj  ;        llj  =  6;
Parameter     ind  ;        ind  =  6;
Parameter  ccc1_1  ;     ccc1_1  =  (( 1)) * (1.0);
Parameter  ccc1_2  ;     ccc1_2  =  (( 2)) * (1.0);
Parameter  ccc1_3  ;     ccc1_3  =  (( 3)) * (1.0);
Parameter  ccc1_4  ;     ccc1_4  =  (( 4)) * (1.0);
Parameter  ccc1_5  ;     ccc1_5  =  (( 5)) * (1.0);
Parameter  ccc1_6  ;     ccc1_6  =  (( 6)) * (1.0);
Parameter  ccc1_7  ;     ccc1_7  =  (( 7)) * (1.0);
Parameter  ccc1_8  ;     ccc1_8  =  (( 8)) * (1.0);
Parameter  ccc1_9  ;     ccc1_9  =  (( 9)) * (1.0);
Parameter ccc1_10  ;    ccc1_10  =  ((10)) * (1.0);
Parameter ccc1_11  ;    ccc1_11  =  ((11)) * (1.0);
Parameter ccc1_12  ;    ccc1_12  =  ((12)) * (1.0);
Parameter ccc1_13  ;    ccc1_13  =  ((13)) * (1.0);
Parameter ccc1_14  ;    ccc1_14  =  ((14)) * (1.0);
Parameter ccc1_15  ;    ccc1_15  =  ((15)) * (1.0);
Parameter  ccc2_1  ;     ccc2_1  =  (( 1)) * (1.0);
Parameter  ccc2_2  ;     ccc2_2  =  (( 2)) * (1.0);
Parameter  ccc2_3  ;     ccc2_3  =  (( 3)) * (1.0);
Parameter  ccc2_4  ;     ccc2_4  =  (( 4)) * (1.0);
Parameter  ccc2_5  ;     ccc2_5  =  (( 5)) * (1.0);
Parameter  ccc2_6  ;     ccc2_6  =  (( 6)) * (1.0);
Parameter  ccc2_7  ;     ccc2_7  =  (( 7)) * (1.0);
Parameter  ccc2_8  ;     ccc2_8  =  (( 8)) * (1.0);
Parameter  ccc2_9  ;     ccc2_9  =  (( 9)) * (1.0);
Parameter ccc2_10  ;    ccc2_10  =  ((10)) * (1.0);
Parameter ccc2_11  ;    ccc2_11  =  ((11)) * (1.0);
Parameter ccc2_12  ;    ccc2_12  =  ((12)) * (1.0);
Parameter  ccc3_1  ;     ccc3_1  =  (( 1)) * (1.0);
Parameter  ccc3_2  ;     ccc3_2  =  (( 2)) * (1.0);
Parameter  ccc3_3  ;     ccc3_3  =  (( 3)) * (1.0);
Parameter  ccc3_4  ;     ccc3_4  =  (( 4)) * (1.0);
Parameter  ccc3_5  ;     ccc3_5  =  (( 5)) * (1.0);
Parameter  ccc3_6  ;     ccc3_6  =  (( 6)) * (1.0);
Parameter  ccc3_7  ;     ccc3_7  =  (( 7)) * (1.0);
Parameter  ccc3_8  ;     ccc3_8  =  (( 8)) * (1.0);
Parameter  ccc3_9  ;     ccc3_9  =  (( 9)) * (1.0);
Parameter  ccc4_1  ;     ccc4_1  =  (( 1)) * (1.0);
Parameter  ccc4_2  ;     ccc4_2  =  (( 2)) * (1.0);
Parameter  ccc4_3  ;     ccc4_3  =  (( 3)) * (1.0);
Parameter  ccc4_4  ;     ccc4_4  =  (( 4)) * (1.0);
Parameter  ccc4_5  ;     ccc4_5  =  (( 5)) * (1.0);
Parameter  ccc4_6  ;     ccc4_6  =  (( 6)) * (1.0);
Parameter    kkir  ;       kkir  =  4.0;
Parameter     kki  ;        kki  =  4.0;
Parameter    temp  ;       temp  =  4;
Parameter      lr  ;         lr  =  6;
Parameter      kr  ;         kr  =  4;
Parameter     jp1  ;        jp1  =  1 + (3);
Parameter  lljp1r  ;     lljp1r  =  6.0;
Parameter   lljp1  ;      lljp1  =  6  ;
Parameter     rhs  ;        rhs  =  ((0.0) - (9.0)) - (4);

Positive Variable      y1  ,       y2  ,       y3  ,       y4  ,  beta1_1  ,
                  beta1_2  ,  beta1_3  ,  beta1_4  ,  beta1_5  ,  beta1_6  ,
                  beta1_7  ,  beta1_8  ,  beta1_9  , beta1_10  , beta1_11  ,
                 beta1_12  , beta1_13  , beta1_14  , beta1_15  ,  beta2_1  ,
                  beta2_2  ,  beta2_3  ,  beta2_4  ,  beta2_5  ,  beta2_6  ,
                  beta2_7  ,  beta2_8  ,  beta2_9  , beta2_10  , beta2_11  ,
                 beta2_12  ,  beta3_1  ,  beta3_2  ,  beta3_3  ,  beta3_4  ,
                  beta3_5  ,  beta3_6  ,  beta3_7  ,  beta3_8  ,  beta3_9  ,
                  beta4_1  ,  beta4_2  ,  beta4_3  ,  beta4_4  ,  beta4_5  ,
                  beta4_6  ,   z1_1_1  ,   z1_1_2  ,   z1_1_3  ,   z1_1_4  ,
                   z1_1_5  ,   z1_2_1  ,   z1_2_2  ,   z1_2_3  ,   z1_2_4  ,
                   z1_2_5  ,   z1_3_1  ,   z1_3_2  ,   z1_3_3  ,   z1_3_4  ,
                   z1_3_5  ,   z1_4_1  ,   z1_4_2  ,   z1_4_3  ,   z1_4_4  ,
                   z1_4_5  ,   z2_1_1  ,   z2_1_2  ,   z2_1_3  ,   z2_1_4  ,
                   z2_1_5  ,   z2_2_1  ,   z2_2_2  ,   z2_2_3  ,   z2_2_4  ,
                   z2_2_5  ,   z2_3_1  ,   z2_3_2  ,   z2_3_3  ,   z2_3_4  ,
                   z2_3_5  ,   z2_4_1  ,   z2_4_2  ,   z2_4_3  ,   z2_4_4  ,
                   z2_4_5  ,   z3_1_1  ,   z3_1_2  ,   z3_1_3  ,   z3_1_4  ,
                   z3_1_5  ,   z3_2_1  ,   z3_2_2  ,   z3_2_3  ,   z3_2_4  ,
                   z3_2_5  ,   z3_3_1  ,   z3_3_2  ,   z3_3_3  ,   z3_3_4  ,
                   z3_3_5  ,   z3_4_1  ,   z3_4_2  ,   z3_4_3  ,   z3_4_4  ,
                   z3_4_5  ,   z4_1_1  ,   z4_1_2  ,   z4_1_3  ,   z4_1_4  ,
                   z4_2_1  ,   z4_2_2  ,   z4_2_3  ,   z4_2_4  ,   z4_3_1  ,
                   z4_3_2  ,   z4_3_3  ,   z4_3_4  ,   z4_4_1  ,   z4_4_2  ,
                   z4_4_3  ,   z4_4_4  ,       m1  ,       m2  ,       m3  ,
                       m4  ,     n1_1  ,     n1_2  ,     n1_3  ,     n1_4  ,
                     n2_1  ,     n2_2  ,     n2_3  ,     n2_4  ,     n3_1  ,
                     n3_2  ,     n3_3  ,     n3_4  ,     n4_1  ,     n4_2  ,
                     n4_3  ,     n4_4  ;
Variable obj ;
Equation     lin2  ,  lin31  ,  lin32  ,  lin33  ,  lin34  ,
            lin41  ,  lin42  ,  lin43  ,  lin44  ,  lin51  ,
            lin52  ,  lin53  ,  lin54  ,  lin61  ,  lin62  ,
            lin63  ,  lin64  ,  lin71  ,  lin72  ,  lin73  ,
            lin74  ,  lin81  ,  lin82  ,  lin83  ,  lin84  ,
            l91_1  ,  l91_2  ,  l91_3  ,  l91_4  ,  l92_1  ,
            l92_2  ,  l92_3  ,  l92_4  ,  l93_1  ,  l93_2  ,
            l93_3  ,  l93_4  ,  l94_1  ,  l94_2  ,  l94_3  ,
            l94_4  , l121_1  , l121_2  , l121_3  , l121_4  ,
           l122_1  , l122_2  , l122_3  , l122_4  , l123_1  ,
           l123_2  , l123_3  , l123_4  , l124_1  , l124_2  ,
           l124_3  , l124_4  , lin131  , lin132  , lin133  ,
           lin134  , lin141  , lin142  , lin143  , lin151  ,
           lin152  , lin153  , lin161  , lin162  , lin163  ,
           lin164  ,  nln171  ,nln172  , nln173  , nln174  , Def_obj ;

 lin2..   0  =g=  -beta1_1 - 2.0*beta1_2 - 3.0*beta1_3 - 4.0*beta1_4 -
                   5.0*beta1_5 - 6.0*beta1_6 - 7.0*beta1_7 - 8.0*beta1_8 -
                   9.0*beta1_9 - 10.0*beta1_10 - 11.0*beta1_11 - 12.0*beta1_12 -
                   13.0*beta1_13 - 14.0*beta1_14 - 15.0*beta1_15 - beta2_1 -
                   2.0*beta2_2 - 3.0*beta2_3 - 4.0*beta2_4 - 5.0*beta2_5 -
                   6.0*beta2_6 - 7.0*beta2_7 - 8.0*beta2_8 - 9.0*beta2_9 -
                   10.0*beta2_10 - 11.0*beta2_11 - 12.0*beta2_12 - beta3_1 -
                   2.0*beta3_2 - 3.0*beta3_3 - 4.0*beta3_4 - 5.0*beta3_5 -
                   6.0*beta3_6 - 7.0*beta3_7 - 8.0*beta3_8 - 9.0*beta3_9 -
                   beta4_1 - 2.0*beta4_2 - 3.0*beta4_3 - 4.0*beta4_4 -
                   5.0*beta4_5 - 6.0*beta4_6 + 9.0;

 lin31..   0  =g=  z1_1_1 + 2.0*z1_1_2 + 3.0*z1_1_3 + 4.0*z1_1_4 +
                   5.0*z1_1_5 - 5.0*y1 + z2_1_1 + 2.0*z2_1_2 + 3.0*z2_1_3 +
                   4.0*z2_1_4 + 5.0*z2_1_5 - 5.0*y1 + z3_1_1 + 2.0*z3_1_2 +
                   3.0*z3_1_3 + 4.0*z3_1_4 + 5.0*z3_1_5 - 5.0*y1 + z4_1_1 +
                   2.0*z4_1_2 + 3.0*z4_1_3 + 4.0*z4_1_4 - 4.0*y1;

 lin32..   0  =g=  z1_2_1 + 2.0*z1_2_2 + 3.0*z1_2_3 + 4.0*z1_2_4 +
                   5.0*z1_2_5 - 5.0*y2 + z2_2_1 + 2.0*z2_2_2 + 3.0*z2_2_3 +
                   4.0*z2_2_4 + 5.0*z2_2_5 - 5.0*y2 + z3_2_1 + 2.0*z3_2_2 +
                   3.0*z3_2_3 + 4.0*z3_2_4 + 5.0*z3_2_5 - 5.0*y2 + z4_2_1 +
                   2.0*z4_2_2 + 3.0*z4_2_3 + 4.0*z4_2_4 - 4.0*y2;

 lin33..   0  =g=  z1_3_1 + 2.0*z1_3_2 + 3.0*z1_3_3 + 4.0*z1_3_4 +
                   5.0*z1_3_5 - 5.0*y3 + z2_3_1 + 2.0*z2_3_2 + 3.0*z2_3_3 +
                   4.0*z2_3_4 + 5.0*z2_3_5 - 5.0*y3 + z3_3_1 + 2.0*z3_3_2 +
                   3.0*z3_3_3 + 4.0*z3_3_4 + 5.0*z3_3_5 - 5.0*y3 + z4_3_1 +
                   2.0*z4_3_2 + 3.0*z4_3_3 + 4.0*z4_3_4 - 4.0*y3;

 lin34..   0  =g=  z1_4_1 + 2.0*z1_4_2 + 3.0*z1_4_3 + 4.0*z1_4_4 +
                   5.0*z1_4_5 - 5.0*y4 + z2_4_1 + 2.0*z2_4_2 + 3.0*z2_4_3 +
                   4.0*z2_4_4 + 5.0*z2_4_5 - 5.0*y4 + z3_4_1 + 2.0*z3_4_2 +
                   3.0*z3_4_3 + 4.0*z3_4_4 + 5.0*z3_4_5 - 5.0*y4 + z4_4_1 +
                   2.0*z4_4_2 + 3.0*z4_4_3 + 4.0*z4_4_4 - 4.0*y4;

 lin41..   0  =g=  330.0*z1_1_1 + 660.0*z1_1_2 + 990.0*z1_1_3 +
                   1320.0*z1_1_4 + 1650.0*z1_1_5 + 365.0*z2_1_1 + 730.0*z2_1_2 +
                   1095.0*z2_1_3 + 1460.0*z2_1_4 + 1825.0*z2_1_5 + 390.0*z3_1_1
                   + 780.0*z3_1_2 + 1170.0*z3_1_3 + 1560.0*z3_1_4 +
                   1950.0*z3_1_5 + 435.0*z4_1_1 + 870.0*z4_1_2 + 1305.0*z4_1_3 +
                   1740.0*z4_1_4 - 2000.0*y1;

 lin42..   0  =g=  330.0*z1_2_1 + 660.0*z1_2_2 + 990.0*z1_2_3 +
                   1320.0*z1_2_4 + 1650.0*z1_2_5 + 365.0*z2_2_1 + 730.0*z2_2_2 +
                   1095.0*z2_2_3 + 1460.0*z2_2_4 + 1825.0*z2_2_5 + 390.0*z3_2_1
                   + 780.0*z3_2_2 + 1170.0*z3_2_3 + 1560.0*z3_2_4 +
                   1950.0*z3_2_5 + 435.0*z4_2_1 + 870.0*z4_2_2 + 1305.0*z4_2_3 +
                   1740.0*z4_2_4 - 2000.0*y2;

 lin43..   0  =g=  330.0*z1_3_1 + 660.0*z1_3_2 + 990.0*z1_3_3 +
                   1320.0*z1_3_4 + 1650.0*z1_3_5 + 365.0*z2_3_1 + 730.0*z2_3_2 +
                   1095.0*z2_3_3 + 1460.0*z2_3_4 + 1825.0*z2_3_5 + 390.0*z3_3_1
                   + 780.0*z3_3_2 + 1170.0*z3_3_3 + 1560.0*z3_3_4 +
                   1950.0*z3_3_5 + 435.0*z4_3_1 + 870.0*z4_3_2 + 1305.0*z4_3_3 +
                   1740.0*z4_3_4 - 2000.0*y3;

 lin44..   0  =g=  330.0*z1_4_1 + 660.0*z1_4_2 + 990.0*z1_4_3 +
                   1320.0*z1_4_4 + 1650.0*z1_4_5 + 365.0*z2_4_1 + 730.0*z2_4_2 +
                   1095.0*z2_4_3 + 1460.0*z2_4_4 + 1825.0*z2_4_5 + 390.0*z3_4_1
                   + 780.0*z3_4_2 + 1170.0*z3_4_3 + 1560.0*z3_4_4 +
                   1950.0*z3_4_5 + 435.0*z4_4_1 + 870.0*z4_4_2 + 1305.0*z4_4_3 +
                   1740.0*z4_4_4 - 2000.0*y4;

 lin51..   0  =g=  -330.0*z1_1_1 - 660.0*z1_1_2 - 990.0*z1_1_3 -
                   1320.0*z1_1_4 - 1650.0*z1_1_5 - 365.0*z2_1_1 - 730.0*z2_1_2 -
                   1095.0*z2_1_3 - 1460.0*z2_1_4 - 1825.0*z2_1_5 - 390.0*z3_1_1
                   - 780.0*z3_1_2 - 1170.0*z3_1_3 - 1560.0*z3_1_4 -
                   1950.0*z3_1_5 - 435.0*z4_1_1 - 870.0*z4_1_2 - 1305.0*z4_1_3 -
                   1740.0*z4_1_4 + 1800.0*y1;

 lin52..   0  =g=  -330.0*z1_2_1 - 660.0*z1_2_2 - 990.0*z1_2_3 -
                   1320.0*z1_2_4 - 1650.0*z1_2_5 - 365.0*z2_2_1 - 730.0*z2_2_2 -
                   1095.0*z2_2_3 - 1460.0*z2_2_4 - 1825.0*z2_2_5 - 390.0*z3_2_1
                   - 780.0*z3_2_2 - 1170.0*z3_2_3 - 1560.0*z3_2_4 -
                   1950.0*z3_2_5 - 435.0*z4_2_1 - 870.0*z4_2_2 - 1305.0*z4_2_3 -
                   1740.0*z4_2_4 + 1800.0*y2;

 lin53..   0  =g=  -330.0*z1_3_1 - 660.0*z1_3_2 - 990.0*z1_3_3 -
                   1320.0*z1_3_4 - 1650.0*z1_3_5 - 365.0*z2_3_1 - 730.0*z2_3_2 -
                   1095.0*z2_3_3 - 1460.0*z2_3_4 - 1825.0*z2_3_5 - 390.0*z3_3_1
                   - 780.0*z3_3_2 - 1170.0*z3_3_3 - 1560.0*z3_3_4 -
                   1950.0*z3_3_5 - 435.0*z4_3_1 - 870.0*z4_3_2 - 1305.0*z4_3_3 -
                   1740.0*z4_3_4 + 1800.0*y3;

 lin54..   0  =g=  -330.0*z1_4_1 - 660.0*z1_4_2 - 990.0*z1_4_3 -
                   1320.0*z1_4_4 - 1650.0*z1_4_5 - 365.0*z2_4_1 - 730.0*z2_4_2 -
                   1095.0*z2_4_3 - 1460.0*z2_4_4 - 1825.0*z2_4_5 - 390.0*z3_4_1
                   - 780.0*z3_4_2 - 1170.0*z3_4_3 - 1560.0*z3_4_4 -
                   1950.0*z3_4_5 - 435.0*z4_4_1 - 870.0*z4_4_2 - 1305.0*z4_4_3 -
                   1740.0*z4_4_4 + 1800.0*y4;

 lin61..   0  =g=  -beta1_1 - 2.0*beta1_2 - 3.0*beta1_3 - 4.0*beta1_4 -
                   5.0*beta1_5 - 6.0*beta1_6 - 7.0*beta1_7 - 8.0*beta1_8 -
                   9.0*beta1_9 - 10.0*beta1_10 - 11.0*beta1_11 - 12.0*beta1_12 -
                   13.0*beta1_13 - 14.0*beta1_14 - 15.0*beta1_15 + y1;

 lin62..   0  =g=  -beta2_1 - 2.0*beta2_2 - 3.0*beta2_3 - 4.0*beta2_4 -
                   5.0*beta2_5 - 6.0*beta2_6 - 7.0*beta2_7 - 8.0*beta2_8 -
                   9.0*beta2_9 - 10.0*beta2_10 - 11.0*beta2_11 - 12.0*beta2_12 +
                   y2;

 lin63..   0  =g=  -beta3_1 - 2.0*beta3_2 - 3.0*beta3_3 - 4.0*beta3_4 -
                   5.0*beta3_5 - 6.0*beta3_6 - 7.0*beta3_7 - 8.0*beta3_8 -
                   9.0*beta3_9 + y3;

 lin64..   0  =g=  -beta4_1 - 2.0*beta4_2 - 3.0*beta4_3 - 4.0*beta4_4 -
                   5.0*beta4_5 - 6.0*beta4_6 + y4;

 lin71..   0  =g=  beta1_1 + 2.0*beta1_2 + 3.0*beta1_3 + 4.0*beta1_4 +
                   5.0*beta1_5 + 6.0*beta1_6 + 7.0*beta1_7 + 8.0*beta1_8 +
                   9.0*beta1_9 + 10.0*beta1_10 + 11.0*beta1_11 + 12.0*beta1_12 +
                   13.0*beta1_13 + 14.0*beta1_14 + 15.0*beta1_15 - 15.0*y1;

 lin72..   0  =g=  beta2_1 + 2.0*beta2_2 + 3.0*beta2_3 + 4.0*beta2_4 +
                   5.0*beta2_5 + 6.0*beta2_6 + 7.0*beta2_7 + 8.0*beta2_8 +
                   9.0*beta2_9 + 10.0*beta2_10 + 11.0*beta2_11 + 12.0*beta2_12 -
                   12.0*y2;

 lin73..   0  =g=  beta3_1 + 2.0*beta3_2 + 3.0*beta3_3 + 4.0*beta3_4 +
                   5.0*beta3_5 + 6.0*beta3_6 + 7.0*beta3_7 + 8.0*beta3_8 +
                   9.0*beta3_9 - 9.0*y3;

 lin74..   0  =g=  beta4_1 + 2.0*beta4_2 + 3.0*beta4_3 + 4.0*beta4_4 +
                   5.0*beta4_5 + 6.0*beta4_6 - 6.0*y4;

 lin81..   -3.0*beta1_1 - 8.0*beta1_2 - 15.0*beta1_3 - 24.0*beta1_4 -
                   35.0*beta1_5 - 48.0*beta1_6 - 63.0*beta1_7 - 80.0*beta1_8 -
                   99.0*beta1_9 - 120.0*beta1_10 - 143.0*beta1_11 -
                   168.0*beta1_12 - 195.0*beta1_13 - 224.0*beta1_14 -
                   255.0*beta1_15 + m1 - 1.0 =e= 0;

 lin82..   -3.0*beta2_1 - 8.0*beta2_2 - 15.0*beta2_3 - 24.0*beta2_4 -
                   35.0*beta2_5 - 48.0*beta2_6 - 63.0*beta2_7 - 80.0*beta2_8 -
                   99.0*beta2_9 - 120.0*beta2_10 - 143.0*beta2_11 -
                   168.0*beta2_12 + m2 - 1.0 =e= 0;

 lin83..   -3.0*beta3_1 - 8.0*beta3_2 - 15.0*beta3_3 - 24.0*beta3_4 -
                   35.0*beta3_5 - 48.0*beta3_6 - 63.0*beta3_7 - 80.0*beta3_8 -
                   99.0*beta3_9 + m3 - 1.0 =e= 0;

 lin84..   -3.0*beta4_1 - 8.0*beta4_2 - 15.0*beta4_3 - 24.0*beta4_4 -
                   35.0*beta4_5 - 48.0*beta4_6 + m4 - 1.0 =e= 0;

 l91_1..   -3.0*z1_1_1 - 8.0*z1_1_2 - 15.0*z1_1_3 - 24.0*z1_1_4 -
                   35.0*z1_1_5 + n1_1 - 1.0 =e= 0;

 l91_2..   -3.0*z1_2_1 - 8.0*z1_2_2 - 15.0*z1_2_3 - 24.0*z1_2_4 -
                   35.0*z1_2_5 + n1_2 - 1.0 =e= 0;

 l91_3..   -3.0*z1_3_1 - 8.0*z1_3_2 - 15.0*z1_3_3 - 24.0*z1_3_4 -
                   35.0*z1_3_5 + n1_3 - 1.0 =e= 0;

 l91_4..   -3.0*z1_4_1 - 8.0*z1_4_2 - 15.0*z1_4_3 - 24.0*z1_4_4 -
                   35.0*z1_4_5 + n1_4 - 1.0 =e= 0;

 l92_1..   -3.0*z2_1_1 - 8.0*z2_1_2 - 15.0*z2_1_3 - 24.0*z2_1_4 -
                   35.0*z2_1_5 + n2_1 - 1.0 =e= 0;

 l92_2..   -3.0*z2_2_1 - 8.0*z2_2_2 - 15.0*z2_2_3 - 24.0*z2_2_4 -
                   35.0*z2_2_5 + n2_2 - 1.0 =e= 0;

 l92_3..   -3.0*z2_3_1 - 8.0*z2_3_2 - 15.0*z2_3_3 - 24.0*z2_3_4 -
                   35.0*z2_3_5 + n2_3 - 1.0 =e= 0;

 l92_4..   -3.0*z2_4_1 - 8.0*z2_4_2 - 15.0*z2_4_3 - 24.0*z2_4_4 -
                   35.0*z2_4_5 + n2_4 - 1.0 =e= 0;

 l93_1..   -3.0*z3_1_1 - 8.0*z3_1_2 - 15.0*z3_1_3 - 24.0*z3_1_4 -
                   35.0*z3_1_5 + n3_1 - 1.0 =e= 0;

 l93_2..   -3.0*z3_2_1 - 8.0*z3_2_2 - 15.0*z3_2_3 - 24.0*z3_2_4 -
                   35.0*z3_2_5 + n3_2 - 1.0 =e= 0;

 l93_3..   -3.0*z3_3_1 - 8.0*z3_3_2 - 15.0*z3_3_3 - 24.0*z3_3_4 -
                   35.0*z3_3_5 + n3_3 - 1.0 =e= 0;

 l93_4..   -3.0*z3_4_1 - 8.0*z3_4_2 - 15.0*z3_4_3 - 24.0*z3_4_4 -
                   35.0*z3_4_5 + n3_4 - 1.0 =e= 0;

 l94_1..   -3.0*z4_1_1 - 8.0*z4_1_2 - 15.0*z4_1_3 - 24.0*z4_1_4 + n4_1 -
                   1.0 =e= 0;

 l94_2..   -3.0*z4_2_1 - 8.0*z4_2_2 - 15.0*z4_2_3 - 24.0*z4_2_4 + n4_2 -
                   1.0 =e= 0;

 l94_3..   -3.0*z4_3_1 - 8.0*z4_3_2 - 15.0*z4_3_3 - 24.0*z4_3_4 + n4_3 -
                   1.0 =e= 0;

 l94_4..   -3.0*z4_4_1 - 8.0*z4_4_2 - 15.0*z4_4_3 - 24.0*z4_4_4 + n4_4 -
                   1.0 =e= 0;

 l121_1..   0  =g=  z1_1_1 + z1_1_2 + z1_1_3 + z1_1_4 + z1_1_5 - 1.0;

 l121_2..   0  =g=  z1_2_1 + z1_2_2 + z1_2_3 + z1_2_4 + z1_2_5 - 1.0;

 l121_3..   0  =g=  z1_3_1 + z1_3_2 + z1_3_3 + z1_3_4 + z1_3_5 - 1.0;

 l121_4..   0  =g=  z1_4_1 + z1_4_2 + z1_4_3 + z1_4_4 + z1_4_5 - 1.0;

 l122_1..   0  =g=  z2_1_1 + z2_1_2 + z2_1_3 + z2_1_4 + z2_1_5 - 1.0;

 l122_2..   0  =g=  z2_2_1 + z2_2_2 + z2_2_3 + z2_2_4 + z2_2_5 - 1.0;

 l122_3..   0  =g=  z2_3_1 + z2_3_2 + z2_3_3 + z2_3_4 + z2_3_5 - 1.0;

 l122_4..   0  =g=  z2_4_1 + z2_4_2 + z2_4_3 + z2_4_4 + z2_4_5 - 1.0;

 l123_1..   0  =g=  z3_1_1 + z3_1_2 + z3_1_3 + z3_1_4 + z3_1_5 - 1.0;

 l123_2..   0  =g=  z3_2_1 + z3_2_2 + z3_2_3 + z3_2_4 + z3_2_5 - 1.0;

 l123_3..   0  =g=  z3_3_1 + z3_3_2 + z3_3_3 + z3_3_4 + z3_3_5 - 1.0;

 l123_4..   0  =g=  z3_4_1 + z3_4_2 + z3_4_3 + z3_4_4 + z3_4_5 - 1.0;

 l124_1..   0  =g=  z4_1_1 + z4_1_2 + z4_1_3 + z4_1_4 - 1.0;

 l124_2..   0  =g=  z4_2_1 + z4_2_2 + z4_2_3 + z4_2_4 - 1.0;

 l124_3..   0  =g=  z4_3_1 + z4_3_2 + z4_3_3 + z4_3_4 - 1.0;

 l124_4..   0  =g=  z4_4_1 + z4_4_2 + z4_4_3 + z4_4_4 - 1.0;

 lin131..   0  =g=  beta1_1 + beta1_2 + beta1_3 + beta1_4 + beta1_5 +
                   beta1_6 + beta1_7 + beta1_8 + beta1_9 + beta1_10 + beta1_11 +
                   beta1_12 + beta1_13 + beta1_14 + beta1_15 - 1.0;

 lin132..   0  =g=  beta2_1 + beta2_2 + beta2_3 + beta2_4 + beta2_5 +
                   beta2_6 + beta2_7 + beta2_8 + beta2_9 + beta2_10 + beta2_11 +
                   beta2_12 - 1.0;

 lin133..   0  =g=  beta3_1 + beta3_2 + beta3_3 + beta3_4 + beta3_5 +
                   beta3_6 + beta3_7 + beta3_8 + beta3_9 - 1.0;

 lin134..   0  =g=  beta4_1 + beta4_2 + beta4_3 + beta4_4 + beta4_5 +
                   beta4_6 - 1.0;

 lin141..   0  =g=  beta1_1 + beta1_2 + beta1_3 + beta1_4 + beta1_5 +
                   beta1_6 + beta1_7 + beta1_8 + beta1_9 + beta1_10 + beta1_11 +
                   beta1_12 - beta1_1 - beta1_2 - beta1_3 - beta1_4 - beta1_5 -
                   beta1_6 - beta1_7 - beta1_8 - beta1_9 - beta1_10 - beta1_11 -
                   beta1_12 - beta1_13 - beta1_14 - beta1_15;

 lin142..   0  =g=  beta2_1 + beta2_2 + beta2_3 + beta2_4 + beta2_5 +
                   beta2_6 + beta2_7 + beta2_8 + beta2_9 - beta2_1 - beta2_2 -
                   beta2_3 - beta2_4 - beta2_5 - beta2_6 - beta2_7 - beta2_8 -
                   beta2_9 - beta2_10 - beta2_11 - beta2_12;

 lin143..   0  =g=  beta3_1 + beta3_2 + beta3_3 + beta3_4 + beta3_5 +
                   beta3_6 - beta3_1 - beta3_2 - beta3_3 - beta3_4 - beta3_5 -
                   beta3_6 - beta3_7 - beta3_8 - beta3_9;

 lin151..   0  =g=  y2 - y1;

 lin152..   0  =g=  y3 - y2;

 lin153..   0  =g=  y4 - y3;

 lin161..   0  =g=  beta1_1 + 2.0*beta1_2 + 3.0*beta1_3 + 4.0*beta1_4 +
                   5.0*beta1_5 + 6.0*beta1_6 + 7.0*beta1_7 + 8.0*beta1_8 +
                   9.0*beta1_9 + 10.0*beta1_10 + 11.0*beta1_11 + 12.0*beta1_12 +
                   13.0*beta1_13 + 14.0*beta1_14 + 15.0*beta1_15 - 15.0;

 lin162..   0  =g=  beta2_1 + 2.0*beta2_2 + 3.0*beta2_3 + 4.0*beta2_4 +
                   5.0*beta2_5 + 6.0*beta2_6 + 7.0*beta2_7 + 8.0*beta2_8 +
                   9.0*beta2_9 + 10.0*beta2_10 + 11.0*beta2_11 + 12.0*beta2_12 -
                   12.0;

 lin163..   0  =g=  beta3_1 + 2.0*beta3_2 + 3.0*beta3_3 + 4.0*beta3_4 +
                   5.0*beta3_5 + 6.0*beta3_6 + 7.0*beta3_7 + 8.0*beta3_8 +
                   9.0*beta3_9 - 9.0;

 lin164..   0  =g=  beta4_1 + 2.0*beta4_2 + 3.0*beta4_3 + 4.0*beta4_4 +
                   5.0*beta4_5 + 6.0*beta4_6 - 6.0;

 nln171..   0  =g=  -(sqrt((m1*n1_1))) - (sqrt((m2*n1_2))) -
                   (sqrt((m3*n1_3))) - (sqrt((m4*n1_4))) + beta1_1 + 2.0*beta1_2
                   + 3.0*beta1_3 + 4.0*beta1_4 + 5.0*beta1_5 + 6.0*beta1_6 +
                   7.0*beta1_7 + 8.0*beta1_8 + 9.0*beta1_9 + 10.0*beta1_10 +
                   11.0*beta1_11 + 12.0*beta1_12 + 13.0*beta1_13 + 14.0*beta1_14
                   + 15.0*beta1_15 + z1_1_1 + 2.0*z1_1_2 + 3.0*z1_1_3 +
                   4.0*z1_1_4 + 5.0*z1_1_5 + beta2_1 + 2.0*beta2_2 + 3.0*beta2_3
                   + 4.0*beta2_4 + 5.0*beta2_5 + 6.0*beta2_6 + 7.0*beta2_7 +
                   8.0*beta2_8 + 9.0*beta2_9 + 10.0*beta2_10 + 11.0*beta2_11 +
                   12.0*beta2_12 + z1_2_1 + 2.0*z1_2_2 + 3.0*z1_2_3 + 4.0*z1_2_4
                   + 5.0*z1_2_5 + beta3_1 + 2.0*beta3_2 + 3.0*beta3_3 +
                   4.0*beta3_4 + 5.0*beta3_5 + 6.0*beta3_6 + 7.0*beta3_7 +
                   8.0*beta3_8 + 9.0*beta3_9 + z1_3_1 + 2.0*z1_3_2 + 3.0*z1_3_3
                   + 4.0*z1_3_4 + 5.0*z1_3_5 + beta4_1 + 2.0*beta4_2 +
                   3.0*beta4_3 + 4.0*beta4_4 + 5.0*beta4_5 + 6.0*beta4_6 +
                   z1_4_1 + 2.0*z1_4_2 + 3.0*z1_4_3 + 4.0*z1_4_4 + 5.0*z1_4_5 +
                   12.0;

 nln172..   0  =g=  -(sqrt((m1*n2_1))) - (sqrt((m2*n2_2))) -
                   (sqrt((m3*n2_3))) - (sqrt((m4*n2_4))) + beta1_1 + 2.0*beta1_2
                   + 3.0*beta1_3 + 4.0*beta1_4 + 5.0*beta1_5 + 6.0*beta1_6 +
                   7.0*beta1_7 + 8.0*beta1_8 + 9.0*beta1_9 + 10.0*beta1_10 +
                   11.0*beta1_11 + 12.0*beta1_12 + 13.0*beta1_13 + 14.0*beta1_14
                   + 15.0*beta1_15 + z2_1_1 + 2.0*z2_1_2 + 3.0*z2_1_3 +
                   4.0*z2_1_4 + 5.0*z2_1_5 + beta2_1 + 2.0*beta2_2 + 3.0*beta2_3
                   + 4.0*beta2_4 + 5.0*beta2_5 + 6.0*beta2_6 + 7.0*beta2_7 +
                   8.0*beta2_8 + 9.0*beta2_9 + 10.0*beta2_10 + 11.0*beta2_11 +
                   12.0*beta2_12 + z2_2_1 + 2.0*z2_2_2 + 3.0*z2_2_3 + 4.0*z2_2_4
                   + 5.0*z2_2_5 + beta3_1 + 2.0*beta3_2 + 3.0*beta3_3 +
                   4.0*beta3_4 + 5.0*beta3_5 + 6.0*beta3_6 + 7.0*beta3_7 +
                   8.0*beta3_8 + 9.0*beta3_9 + z2_3_1 + 2.0*z2_3_2 + 3.0*z2_3_3
                   + 4.0*z2_3_4 + 5.0*z2_3_5 + beta4_1 + 2.0*beta4_2 +
                   3.0*beta4_3 + 4.0*beta4_4 + 5.0*beta4_5 + 6.0*beta4_6 +
                   z2_4_1 + 2.0*z2_4_2 + 3.0*z2_4_3 + 4.0*z2_4_4 + 5.0*z2_4_5 +
                   6.0;

 nln173..   0  =g=  -(sqrt((m1*n3_1))) - (sqrt((m2*n3_2))) -
                   (sqrt((m3*n3_3))) - (sqrt((m4*n3_4))) + beta1_1 + 2.0*beta1_2
                   + 3.0*beta1_3 + 4.0*beta1_4 + 5.0*beta1_5 + 6.0*beta1_6 +
                   7.0*beta1_7 + 8.0*beta1_8 + 9.0*beta1_9 + 10.0*beta1_10 +
                   11.0*beta1_11 + 12.0*beta1_12 + 13.0*beta1_13 + 14.0*beta1_14
                   + 15.0*beta1_15 + z3_1_1 + 2.0*z3_1_2 + 3.0*z3_1_3 +
                   4.0*z3_1_4 + 5.0*z3_1_5 + beta2_1 + 2.0*beta2_2 + 3.0*beta2_3
                   + 4.0*beta2_4 + 5.0*beta2_5 + 6.0*beta2_6 + 7.0*beta2_7 +
                   8.0*beta2_8 + 9.0*beta2_9 + 10.0*beta2_10 + 11.0*beta2_11 +
                   12.0*beta2_12 + z3_2_1 + 2.0*z3_2_2 + 3.0*z3_2_3 + 4.0*z3_2_4
                   + 5.0*z3_2_5 + beta3_1 + 2.0*beta3_2 + 3.0*beta3_3 +
                   4.0*beta3_4 + 5.0*beta3_5 + 6.0*beta3_6 + 7.0*beta3_7 +
                   8.0*beta3_8 + 9.0*beta3_9 + z3_3_1 + 2.0*z3_3_2 + 3.0*z3_3_3
                   + 4.0*z3_3_4 + 5.0*z3_3_5 + beta4_1 + 2.0*beta4_2 +
                   3.0*beta4_3 + 4.0*beta4_4 + 5.0*beta4_5 + 6.0*beta4_6 +
                   z3_4_1 + 2.0*z3_4_2 + 3.0*z3_4_3 + 4.0*z3_4_4 + 5.0*z3_4_5 +
                   15.0;

 nln174..   0  =g=  -(sqrt((m1*n4_1))) - (sqrt((m2*n4_2))) -
                   (sqrt((m3*n4_3))) - (sqrt((m4*n4_4))) + beta1_1 + 2.0*beta1_2
                   + 3.0*beta1_3 + 4.0*beta1_4 + 5.0*beta1_5 + 6.0*beta1_6 +
                   7.0*beta1_7 + 8.0*beta1_8 + 9.0*beta1_9 + 10.0*beta1_10 +
                   11.0*beta1_11 + 12.0*beta1_12 + 13.0*beta1_13 + 14.0*beta1_14
                   + 15.0*beta1_15 + z4_1_1 + 2.0*z4_1_2 + 3.0*z4_1_3 +
                   4.0*z4_1_4 + beta2_1 + 2.0*beta2_2 + 3.0*beta2_3 +
                   4.0*beta2_4 + 5.0*beta2_5 + 6.0*beta2_6 + 7.0*beta2_7 +
                   8.0*beta2_8 + 9.0*beta2_9 + 10.0*beta2_10 + 11.0*beta2_11 +
                   12.0*beta2_12 + z4_2_1 + 2.0*z4_2_2 + 3.0*z4_2_3 + 4.0*z4_2_4
                   + beta3_1 + 2.0*beta3_2 + 3.0*beta3_3 + 4.0*beta3_4 +
                   5.0*beta3_5 + 6.0*beta3_6 + 7.0*beta3_7 + 8.0*beta3_8 +
                   9.0*beta3_9 + z4_3_1 + 2.0*z4_3_2 + 3.0*z4_3_3 + 4.0*z4_3_4 +
                   beta4_1 + 2.0*beta4_2 + 3.0*beta4_3 + 4.0*beta4_4 +
                   5.0*beta4_5 + 6.0*beta4_6 + z4_4_1 + 2.0*z4_4_2 + 3.0*z4_4_3
                   + 4.0*z4_4_4 + 9.0;

Def_obj..  obj =e=      0.1*y1    + 0.2*y2        + 0.3*y3 + 0.4*y4+
                        beta1_1   +  2.0*beta1_2   +  3.0*beta1_3  +
                    4.0*beta1_4   +  5.0*beta1_5   +  6.0*beta1_6  +
                    7.0*beta1_7   +  8.0*beta1_8   +  9.0*beta1_9  +
                   10.0*beta1_10  + 11.0*beta1_11  + 12.0*beta1_12 +
                   13.0*beta1_13  + 14.0*beta1_14  + 15.0*beta1_15 +
                        beta2_1   +  2.0*beta2_2   +  3.0*beta2_3  +
                    4.0*beta2_4   +  5.0*beta2_5   +  6.0*beta2_6  +
                    7.0*beta2_7   +  8.0*beta2_8   +  9.0*beta2_9  +
                   10.0*beta2_10  + 11.0*beta2_11  + 12.0*beta2_12 +
                        beta3_1   +  2.0*beta3_2   +  3.0*beta3_3  +
                    4.0*beta3_4   +  5.0*beta3_5   +  6.0*beta3_6  +
                    7.0*beta3_7   +  8.0*beta3_8   +  9.0*beta3_9  +
                        beta4_1   +  2.0*beta4_2   +  3.0*beta4_3  +
                    4.0*beta4_4   +  5.0*beta4_5   +  6.0*beta4_6   ;


      m1.l   = 1.0 ;   m2.l   = 1.0 ;   m3.l   = 1.0 ;
      m4.l   = 1.0 ; n1_1.l   = 1.0 ; n1_2.l   = 1.0 ;
    n1_3.l   = 1.0 ; n1_4.l   = 1.0 ; n2_1.l   = 1.0 ;
    n2_2.l   = 1.0 ; n2_3.l   = 1.0 ; n2_4.l   = 1.0 ;
    n3_1.l   = 1.0 ; n3_2.l   = 1.0 ; n3_3.l   = 1.0 ;
    n3_4.l   = 1.0 ; n4_1.l   = 1.0 ; n4_2.l   = 1.0 ;
    n4_3.l   = 1.0 ; n4_4.l   = 1.0 ;

      y1.up = 1.0 ;       y2.up = 1.0 ;       y3.up = 1.0 ;
      y4.up = 1.0 ;  beta1_1.up = 1.0 ;  beta1_2.up = 1.0 ;
 beta1_3.up = 1.0 ;  beta1_4.up = 1.0 ;  beta1_5.up = 1.0 ;
 beta1_6.up = 1.0 ;  beta1_7.up = 1.0 ;  beta1_8.up = 1.0 ;
 beta1_9.up = 1.0 ; beta1_10.up = 1.0 ; beta1_11.up = 1.0 ;
beta1_12.up = 1.0 ; beta1_13.up = 1.0 ; beta1_14.up = 1.0 ;
beta1_15.up = 1.0 ;  beta2_1.up = 1.0 ;  beta2_2.up = 1.0 ;
 beta2_3.up = 1.0 ;  beta2_4.up = 1.0 ;  beta2_5.up = 1.0 ;
 beta2_6.up = 1.0 ;  beta2_7.up = 1.0 ;  beta2_8.up = 1.0 ;
 beta2_9.up = 1.0 ; beta2_10.up = 1.0 ; beta2_11.up = 1.0 ;
beta2_12.up = 1.0 ;  beta3_1.up = 1.0 ;  beta3_2.up = 1.0 ;
 beta3_3.up = 1.0 ;  beta3_4.up = 1.0 ;  beta3_5.up = 1.0 ;
 beta3_6.up = 1.0 ;  beta3_7.up = 1.0 ;  beta3_8.up = 1.0 ;
 beta3_9.up = 1.0 ;  beta4_1.up = 1.0 ;  beta4_2.up = 1.0 ;
 beta4_3.up = 1.0 ;  beta4_4.up = 1.0 ;  beta4_5.up = 1.0 ;
 beta4_6.up = 1.0 ;   z1_1_1.up = 1.0 ;   z1_1_2.up = 1.0 ;
  z1_1_3.up = 1.0 ;   z1_1_4.up = 1.0 ;   z1_1_5.up = 1.0 ;
  z1_2_1.up = 1.0 ;   z1_2_2.up = 1.0 ;   z1_2_3.up = 1.0 ;
  z1_2_4.up = 1.0 ;   z1_2_5.up = 1.0 ;   z1_3_1.up = 1.0 ;
  z1_3_2.up = 1.0 ;   z1_3_3.up = 1.0 ;   z1_3_4.up = 1.0 ;
  z1_3_5.up = 1.0 ;   z1_4_1.up = 1.0 ;   z1_4_2.up = 1.0 ;
  z1_4_3.up = 1.0 ;   z1_4_4.up = 1.0 ;   z1_4_5.up = 1.0 ;
  z2_1_1.up = 1.0 ;   z2_1_2.up = 1.0 ;   z2_1_3.up = 1.0 ;
  z2_1_4.up = 1.0 ;   z2_1_5.up = 1.0 ;   z2_2_1.up = 1.0 ;
  z2_2_2.up = 1.0 ;   z2_2_3.up = 1.0 ;   z2_2_4.up = 1.0 ;
  z2_2_5.up = 1.0 ;   z2_3_1.up = 1.0 ;   z2_3_2.up = 1.0 ;
  z2_3_3.up = 1.0 ;   z2_3_4.up = 1.0 ;   z2_3_5.up = 1.0 ;
  z2_4_1.up = 1.0 ;   z2_4_2.up = 1.0 ;   z2_4_3.up = 1.0 ;
  z2_4_4.up = 1.0 ;   z2_4_5.up = 1.0 ;   z3_1_1.up = 1.0 ;
  z3_1_2.up = 1.0 ;   z3_1_3.up = 1.0 ;   z3_1_4.up = 1.0 ;
  z3_1_5.up = 1.0 ;   z3_2_1.up = 1.0 ;   z3_2_2.up = 1.0 ;
  z3_2_3.up = 1.0 ;   z3_2_4.up = 1.0 ;   z3_2_5.up = 1.0 ;
  z3_3_1.up = 1.0 ;   z3_3_2.up = 1.0 ;   z3_3_3.up = 1.0 ;
  z3_3_4.up = 1.0 ;   z3_3_5.up = 1.0 ;   z3_4_1.up = 1.0 ;
  z3_4_2.up = 1.0 ;   z3_4_3.up = 1.0 ;   z3_4_4.up = 1.0 ;
  z3_4_5.up = 1.0 ;   z4_1_1.up = 1.0 ;   z4_1_2.up = 1.0 ;
  z4_1_3.up = 1.0 ;   z4_1_4.up = 1.0 ;   z4_2_1.up = 1.0 ;
  z4_2_2.up = 1.0 ;   z4_2_3.up = 1.0 ;   z4_2_4.up = 1.0 ;
  z4_3_1.up = 1.0 ;   z4_3_2.up = 1.0 ;   z4_3_3.up = 1.0 ;
  z4_3_4.up = 1.0 ;   z4_4_1.up = 1.0 ;   z4_4_2.up = 1.0 ;
  z4_4_3.up = 1.0 ;   z4_4_4.up = 1.0 ;


Model trimloss /all/ ;

Solve trimloss  using nlp minimazing obj ;

display       y1.l  ;  display       y2.l  ;        display y3.l  ;
display       y4.l  ;  display  beta1_1.l  ;   display beta1_2.l  ;
display  beta1_3.l  ;  display  beta1_4.l  ;   display beta1_5.l  ;
display  beta1_6.l  ;  display  beta1_7.l  ;   display beta1_8.l  ;
display  beta1_9.l  ;  display beta1_10.l  ;  display beta1_11.l  ;
display beta1_12.l  ;  display beta1_13.l  ;  display beta1_14.l  ;
display beta1_15.l  ;  display  beta2_1.l  ;  display  beta2_2.l  ;
display  beta2_3.l  ;  display  beta2_4.l  ;  display  beta2_5.l  ;
display  beta2_6.l  ;  display  beta2_7.l  ;  display  beta2_8.l  ;
display  beta2_9.l  ;  display beta2_10.l  ;  display beta2_11.l  ;
display beta2_12.l  ;  display  beta3_1.l  ;  display  beta3_2.l  ;
display  beta3_3.l  ;  display  beta3_4.l  ;  display  beta3_5.l  ;
display  beta3_6.l  ;  display  beta3_7.l  ;  display  beta3_8.l  ;
display  beta3_9.l  ;  display  beta4_1.l  ;  display  beta4_2.l  ;
display  beta4_3.l  ;  display  beta4_4.l  ;  display  beta4_5.l  ;
display  beta4_6.l  ;  display   z1_1_1.l  ;  display   z1_1_2.l  ;
display   z1_1_3.l  ;  display   z1_1_4.l  ;  display   z1_1_5.l  ;
display   z1_2_1.l  ;  display   z1_2_2.l  ;  display   z1_2_3.l  ;
display   z1_2_4.l  ;  display   z1_2_5.l  ;  display   z1_3_1.l  ;
display   z1_3_2.l  ;  display   z1_3_3.l  ;  display   z1_3_4.l  ;
display   z1_3_5.l  ;  display   z1_4_1.l  ;  display   z1_4_2.l  ;
display   z1_4_3.l  ;  display   z1_4_4.l  ;  display   z1_4_5.l  ;
display   z2_1_1.l  ;  display   z2_1_2.l  ;  display   z2_1_3.l  ;
display   z2_1_4.l  ;  display   z2_1_5.l  ;  display   z2_2_1.l  ;
display   z2_2_2.l  ;  display   z2_2_3.l  ;  display   z2_2_4.l  ;
display   z2_2_5.l  ;  display   z2_3_1.l  ;  display   z2_3_2.l  ;
display   z2_3_3.l  ;  display   z2_3_4.l  ;  display   z2_3_5.l  ;
display   z2_4_1.l  ;  display   z2_4_2.l  ;  display   z2_4_3.l  ;
display   z2_4_4.l  ;  display   z2_4_5.l  ;  display   z3_1_1.l  ;
display   z3_1_2.l  ;  display   z3_1_3.l  ;  display   z3_1_4.l  ;
display   z3_1_5.l  ;  display   z3_2_1.l  ;  display   z3_2_2.l  ;
display   z3_2_3.l  ;  display   z3_2_4.l  ;  display   z3_2_5.l  ;
display   z3_3_1.l  ;  display   z3_3_2.l  ;  display   z3_3_3.l  ;
display   z3_3_4.l  ;  display   z3_3_5.l  ;  display   z3_4_1.l  ;
display   z3_4_2.l  ;  display   z3_4_3.l  ;  display   z3_4_4.l  ;
display   z3_4_5.l  ;  display   z4_1_1.l  ;  display   z4_1_2.l  ;
display   z4_1_3.l  ;  display   z4_1_4.l  ;  display   z4_2_1.l  ;
display   z4_2_2.l  ;  display   z4_2_3.l  ;  display   z4_2_4.l  ;
display   z4_3_1.l  ;  display   z4_3_2.l  ;  display   z4_3_3.l  ;
display   z4_3_4.l  ;  display   z4_4_1.l  ;  display   z4_4_2.l  ;
display   z4_4_3.l  ;  display   z4_4_4.l  ;  display       m1.l  ;
display       m2.l  ;  display       m3.l  ;  display      m4.l  ;
display     n1_1.l  ;  display     n1_2.l  ;  display    n1_3.l  ;
display     n1_4.l  ;  display     n2_1.l  ;  display    n2_2.l  ;
display     n2_3.l  ;  display     n2_4.l  ;  display    n3_1.l  ;
display     n3_2.l  ;  display     n3_3.l  ;  display    n3_4.l  ;
display     n4_1.l  ;  display     n4_2.l  ;  display    n4_3.l  ;
display     n4_4.l  ;  display      obj.l  ;
