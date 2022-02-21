*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   The Power Generation problem for the SSGB
*   with the nonlinear constraints removed.
*   Source:
*   N. Gould, private communication.
*   SIF input: Nick Gould, 26 February 1990.
*   classification LLR2-MN-194-72
*   period is the number of time periods
*   Define a few helpful parameters
*   set the influx z (MW) and demands d (MW)
*   day 1
*   day 2
*   day 3
*   day 4
*   day 5
*   day 6
*   day 7
*   Define the problem variables
*  power output oil (MW)
*  power output coal (MW)
*  power generated  (MW)
*  spillage  (MW)
*  Flow per unit time from pump storage - generating (MW)
*  Flow per unit time from pump storage - pumping (MW)
*  Volume of hydro power (MWh)
*  Volume of pump-storage power (MWh)
*   Define objective function group, cost of generation (MW)
*   Define the hydro-power constraints
*   Define the power-storage reservoir constraints
*   Define the demand constraints
*   The constant for the hydro-power constraints are nonzero.
*   The constant for the reservoir constraints are nonzero.
*   The constant for all the demand constraints are nonzero.
*   Solution

  Parameter  hours ; hours =  24   ;
  Parameter   days ;  days =   1   ;
  Parameter   d1_1 ;  d1_1 = 578.0 ;
  Parameter   d1_2 ;  d1_2 = 517.0 ;
  Parameter   d1_3 ;  d1_3 = 461.0 ;
  Parameter   d1_4 ;  d1_4 = 369.0 ;
  Parameter   d1_5 ;  d1_5 = 299.0 ;
  Parameter   d1_6 ;  d1_6 = 269.0 ;
  Parameter   d1_7 ;  d1_7 = 370.0 ;
  Parameter   d1_8 ;  d1_8 = 559.0 ;
  Parameter   d1_9 ;  d1_9 = 689.0 ;
  Parameter  d1_10 ; d1_10 = 728.0 ;
  Parameter  d1_11 ; d1_11 = 683.0 ;
  Parameter  d1_12 ; d1_12 = 626.0 ;
  Parameter  d1_13 ; d1_13 = 619.0 ;
  Parameter  d1_14 ; d1_14 = 586.0 ;
  Parameter  d1_15 ; d1_15 = 582.0 ;
  Parameter  d1_16 ; d1_16 = 625.0 ;
  Parameter  d1_17 ; d1_17 = 821.0 ;
  Parameter  d1_18 ; d1_18 = 883.0 ;
  Parameter  d1_19 ; d1_19 = 768.0 ;
  Parameter  d1_20 ; d1_20 = 711.0 ;
  Parameter  d1_21 ; d1_21 = 677.0 ;
  Parameter  d1_22 ; d1_22 = 630.0 ;
  Parameter  d1_23 ; d1_23 = 545.0 ;
  Parameter  d1_24 ; d1_24 = 565.0 ;
  Parameter     z2 ;    z2 = 400.0 ;
  Parameter   d2_1 ;  d2_1 = 631.0 ;
  Parameter   d2_2 ;  d2_2 = 574.0 ;
  Parameter   d2_3 ;  d2_3 = 521.0 ;
  Parameter   d2_4 ;  d2_4 = 446.0 ;
  Parameter   d2_5 ;  d2_5 = 359.0 ;
  Parameter   d2_6 ;  d2_6 = 336.0 ;
  Parameter   d2_7 ;  d2_7 = 420.0 ;
  Parameter   d2_8 ;  d2_8 = 588.0 ;
  Parameter   d2_9 ;  d2_9 = 697.0 ;
  Parameter  d2_10 ; d2_10 = 732.0 ;
  Parameter  d2_11 ; d2_11 = 713.0 ;
  Parameter  d2_12 ; d2_12 = 682.0 ;
  Parameter  d2_13 ; d2_13 = 695.0 ;
  Parameter  d2_14 ; d2_14 = 651.0 ;
  Parameter  d2_15 ; d2_15 = 645.0 ;
  Parameter  d2_16 ; d2_16 = 664.0 ;
  Parameter  d2_17 ; d2_17 = 816.0 ;
  Parameter  d2_18 ; d2_18 = 858.0 ;
  Parameter  d2_19 ; d2_19 = 760.0 ;
  Parameter  d2_20 ; d2_20 = 700.0 ;
  Parameter  d2_21 ; d2_21 = 659.0 ;
  Parameter  d2_22 ; d2_22 = 623.0 ;
  Parameter  d2_23 ; d2_23 = 517.0 ;
  Parameter  d2_24 ; d2_24 = 542.0 ;
  Parameter     z3 ;    z3 =1017.0 ;
  Parameter   d3_1 ;  d3_1 = 582.0 ;
  Parameter   d3_2 ;  d3_2 = 501.0 ;
  Parameter   d3_3 ;  d3_3 = 443.0 ;
  Parameter   d3_4 ;  d3_4 = 367.0 ;
  Parameter   d3_5 ;  d3_5 = 288.0 ;
  Parameter   d3_6 ;  d3_6 = 265.0 ;
  Parameter   d3_7 ;  d3_7 = 349.0 ;
  Parameter   d3_8 ;  d3_8 = 503.0 ;
  Parameter   d3_9 ;  d3_9 = 663.0 ;
  Parameter  d3_10 ; d3_10 = 651.0 ;
  Parameter  d3_11 ; d3_11 = 625.0 ;
  Parameter  d3_12 ; d3_12 = 596.0 ;
  Parameter  d3_13 ; d3_13 = 608.0 ;
  Parameter  d3_14 ; d3_14 = 566.0 ;
  Parameter  d3_15 ; d3_15 = 555.0 ;
  Parameter  d3_16 ; d3_16 = 584.0 ;
  Parameter  d3_17 ; d3_17 = 763.0 ;
  Parameter  d3_18 ; d3_18 = 803.0 ;
  Parameter  d3_19 ; d3_19 = 710.0 ;
  Parameter  d3_20 ; d3_20 = 648.0 ;
  Parameter  d3_21 ; d3_21 = 626.0 ;
  Parameter  d3_22 ; d3_22 = 590.0 ;
  Parameter  d3_23 ; d3_23 = 486.0 ;
  Parameter  d3_24 ; d3_24 = 540.0 ;
  Parameter     z4 ;    z4 = 667.0 ;
  Parameter   d4_1 ;  d4_1 = 602.0 ;
  Parameter   d4_2 ;  d4_2 = 533.0 ;
  Parameter   d4_3 ;  d4_3 = 450.0 ;
  Parameter   d4_4 ;  d4_4 = 378.0 ;
  Parameter   d4_5 ;  d4_5 = 298.0 ;
  Parameter   d4_6 ;  d4_6 = 272.0 ;
  Parameter   d4_7 ;  d4_7 = 369.0 ;
  Parameter   d4_8 ;  d4_8 = 539.0 ;
  Parameter   d4_9 ;  d4_9 = 647.0 ;
  Parameter  d4_10 ; d4_10 = 652.0 ;
  Parameter  d4_11 ; d4_11 = 607.0 ;
  Parameter  d4_12 ; d4_12 = 585.0 ;
  Parameter  d4_13 ; d4_13 = 587.0 ;
  Parameter  d4_14 ; d4_14 = 549.0 ;
  Parameter  d4_15 ; d4_15 = 535.0 ;
  Parameter  d4_16 ; d4_16 = 564.0 ;
  Parameter  d4_17 ; d4_17 = 748.0 ;
  Parameter  d4_18 ; d4_18 = 808.0 ;
  Parameter  d4_19 ; d4_19 = 710.0 ;
  Parameter  d4_20 ; d4_20 = 646.0 ;
  Parameter  d4_21 ; d4_21 = 620.0 ;
  Parameter  d4_22 ; d4_22 = 581.0 ;
  Parameter  d4_23 ; d4_23 = 483.0 ;
  Parameter  d4_24 ; d4_24 = 514.0 ;
  Parameter     z5 ;    z5 = 600.0 ;
  Parameter   d5_1 ;  d5_1 = 579.0 ;
  Parameter   d5_2 ;  d5_2 = 518.0 ;
  Parameter   d5_3 ;  d5_3 = 447.0 ;
  Parameter   d5_4 ;  d5_4 = 355.0 ;
  Parameter   d5_5 ;  d5_5 = 284.0 ;
  Parameter   d5_6 ;  d5_6 = 261.0 ;
  Parameter   d5_7 ;  d5_7 = 348.0 ;
  Parameter   d5_8 ;  d5_8 = 530.0 ;
  Parameter   d5_9 ;  d5_9 = 644.0 ;
  Parameter  d5_10 ; d5_10 = 648.0 ;
  Parameter  d5_11 ; d5_11 = 607.0 ;
  Parameter  d5_12 ; d5_12 = 570.0 ;
  Parameter  d5_13 ; d5_13 = 577.0 ;
  Parameter  d5_14 ; d5_14 = 536.0 ;
  Parameter  d5_15 ; d5_15 = 544.0 ;
  Parameter  d5_16 ; d5_16 = 554.0 ;
  Parameter  d5_17 ; d5_17 = 716.0 ;
  Parameter  d5_18 ; d5_18 = 765.0 ;
  Parameter  d5_19 ; d5_19 = 676.0 ;
  Parameter  d5_20 ; d5_20 = 631.0 ;
  Parameter  d5_21 ; d5_21 = 576.0 ;
  Parameter  d5_22 ; d5_22 = 528.0 ;
  Parameter  d5_23 ; d5_23 = 445.0 ;
  Parameter  d5_24 ; d5_24 = 520.0 ;
  Parameter     z6 ;    z6 = 421.0 ;
  Parameter   d6_1 ;  d6_1 = 618.0 ;
  Parameter   d6_2 ;  d6_2 = 547.0 ;
  Parameter   d6_3 ;  d6_3 = 430.0 ;
  Parameter   d6_4 ;  d6_4 = 327.0 ;
  Parameter   d6_5 ;  d6_5 = 249.0 ;
  Parameter   d6_6 ;  d6_6 = 211.0 ;
  Parameter   d6_7 ;  d6_7 = 227.0 ;
  Parameter   d6_8 ;  d6_8 = 258.0 ;
  Parameter   d6_9 ;  d6_9 = 347.0 ;
  Parameter  d6_10 ; d6_10 = 491.0 ;
  Parameter  d6_11 ; d6_11 = 524.0 ;
  Parameter  d6_12 ; d6_12 = 492.0 ;
  Parameter  d6_13 ; d6_13 = 467.0 ;
  Parameter  d6_14 ; d6_14 = 418.0 ;
  Parameter  d6_15 ; d6_15 = 358.0 ;
  Parameter  d6_16 ; d6_16 = 378.0 ;
  Parameter  d6_17 ; d6_17 = 544.0 ;
  Parameter  d6_18 ; d6_18 = 666.0 ;
  Parameter  d6_19 ; d6_19 = 589.0 ;
  Parameter  d6_20 ; d6_20 = 533.0 ;
  Parameter  d6_21 ; d6_21 = 494.0 ;
  Parameter  d6_22 ; d6_22 = 460.0 ;
  Parameter  d6_23 ; d6_23 = 404.0 ;
  Parameter  d6_24 ; d6_24 = 512.0 ;
  Parameter     z7 ;    z7 = 425.0 ;
  Parameter   d7_1 ;  d7_1 = 615.0 ;
  Parameter   d7_2 ;  d7_2 = 587.0 ;
  Parameter   d7_3 ;  d7_3 = 450.0 ;
  Parameter   d7_4 ;  d7_4 = 320.0 ;
  Parameter   d7_5 ;  d7_5 = 235.0 ;
  Parameter   d7_6 ;  d7_6 = 198.0 ;
  Parameter   d7_7 ;  d7_7 = 195.0 ;
  Parameter   d7_8 ;  d7_8 = 173.0 ;
  Parameter   d7_9 ;  d7_9 = 197.0 ;
  Parameter  d7_10 ; d7_10 = 349.0 ;
  Parameter  d7_11 ; d7_11 = 441.0 ;
  Parameter  d7_12 ; d7_12 = 459.0 ;
  Parameter  d7_13 ; d7_13 = 485.0 ;
  Parameter  d7_14 ; d7_14 = 445.0 ;
  Parameter  d7_15 ; d7_15 = 410.0 ;
  Parameter  d7_16 ; d7_16 = 421.0 ;
  Parameter  d7_17 ; d7_17 = 568.0 ;
  Parameter  d7_18 ; d7_18 = 643.0 ;
  Parameter  d7_19 ; d7_19 = 596.0 ;
  Parameter  d7_20 ; d7_20 = 566.0 ;
  Parameter  d7_21 ; d7_21 = 541.0 ;
  Parameter  d7_22 ; d7_22 = 532.0 ;
  Parameter  d7_23 ; d7_23 = 454.0 ;
  Parameter  d7_24 ; d7_24 = 511.0 ;
  Parameter      p ;     p = -1 + (1);
  Parameter   ihm1 ;  ihm1 = -1 + (24);

Variable v0_24  ,  r0_24  ,   p11_1  ,   p21_1  ,   qh1_1  ,
          s1_1  ,  qg1_1  ,   qp1_1  ,    v1_1  ,    r1_1  ,
         p11_2  ,  p21_2  ,   qh1_2  ,    s1_2  ,   qg1_2  ,
         qp1_2  ,   v1_2  ,    r1_2  ,   p11_3  ,   p21_3  ,
         qh1_3  ,   s1_3  ,   qg1_3  ,   qp1_3  ,    v1_3  ,
          r1_3  ,  p11_4  ,   p21_4  ,   qh1_4  ,    s1_4  ,
         qg1_4  ,  qp1_4  ,    v1_4  ,    r1_4  ,   p11_5  ,
         p21_5  ,  qh1_5  ,    s1_5  ,   qg1_5  ,   qp1_5  ,
          v1_5  ,   r1_5  ,   p11_6  ,   p21_6  ,   qh1_6  ,
          s1_6  ,  qg1_6  ,   qp1_6  ,    v1_6  ,    r1_6  ,
         p11_7  ,  p21_7  ,   qh1_7  ,    s1_7  ,   qg1_7  ,
         qp1_7  ,   v1_7  ,    r1_7  ,   p11_8  ,   p21_8  ,
         qh1_8  ,   s1_8  ,   qg1_8  ,   qp1_8  ,    v1_8  ,
          r1_8  ,  p11_9  ,   p21_9  ,   qh1_9  ,    s1_9  ,
         qg1_9  ,  qp1_9  ,    v1_9  ,    r1_9  ,  p11_10  ,
        p21_10  , qh1_10  ,   s1_10  ,  qg1_10  ,  qp1_10  ,
         v1_10  ,  r1_10  ,  p11_11  ,  p21_11  ,  qh1_11  ,
         s1_11  , qg1_11  ,  qp1_11  ,   v1_11  ,   r1_11  ,
        p11_12  , p21_12  ,  qh1_12  ,   s1_12  ,  qg1_12  ,
        qp1_12  ,  v1_12  ,   r1_12  ,  p11_13  ,  p21_13  ,
        qh1_13  ,  s1_13  ,  qg1_13  ,  qp1_13  ,   v1_13  ,
         r1_13  , p11_14  ,  p21_14  ,  qh1_14  ,   s1_14  ,
        qg1_14  , qp1_14  ,   v1_14  ,   r1_14  ,  p11_15  ,
        p21_15  , qh1_15  ,   s1_15  ,  qg1_15  ,  qp1_15  ,
         v1_15  ,  r1_15  ,  p11_16  ,  p21_16  ,  qh1_16  ,
         s1_16  , qg1_16  ,  qp1_16  ,   v1_16  ,   r1_16  ,
        p11_17  , p21_17  ,  qh1_17  ,   s1_17  ,  qg1_17  ,
        qp1_17  ,  v1_17  ,   r1_17  ,  p11_18  ,  p21_18  ,
        qh1_18  ,  s1_18  ,  qg1_18  ,  qp1_18  ,   v1_18  ,
         r1_18  , p11_19  ,  p21_19  ,  qh1_19  ,   s1_19  ,
        qg1_19  , qp1_19  ,   v1_19  ,   r1_19  ,  p11_20  ,
        p21_20  , qh1_20  ,   s1_20  ,  qg1_20  ,  qp1_20  ,
         v1_20  ,  r1_20  ,  p11_21  ,  p21_21  ,  qh1_21  ,
         s1_21  , qg1_21  ,  qp1_21  ,   v1_21  ,   r1_21  ,
        p11_22  , p21_22  ,  qh1_22  ,   s1_22  ,  qg1_22  ,
        qp1_22  ,  v1_22  ,   r1_22  ,  p11_23  ,  p21_23  ,
        qh1_23  ,  s1_23  ,  qg1_23  ,  qp1_23  ,   v1_23  ,
         r1_23  , p11_24  ,  p21_24  ,  qh1_24  ,   s1_24  ,
        qg1_24  , qp1_24  ,   v1_24  ,   r1_24  , obj ;


Equation cons_h1_1  ,   cons_h1_2  ,   cons_h1_3  ,   cons_h1_4  ,
         cons_h1_5  ,   cons_h1_6  ,   cons_h1_7  ,   cons_h1_8  ,
         cons_h1_9  ,  cons_h1_10  ,  cons_h1_11  ,  cons_h1_12  ,
        cons_h1_13  ,  cons_h1_14  ,  cons_h1_15  ,  cons_h1_16  ,
        cons_h1_17  ,  cons_h1_18  ,  cons_h1_19  ,  cons_h1_20  ,
        cons_h1_21  ,  cons_h1_22  ,  cons_h1_23  ,  cons_h1_24  ,
         cons_r1_1  ,   cons_r1_2  ,   cons_r1_3  ,   cons_r1_4  ,
         cons_r1_5  ,   cons_r1_6  ,   cons_r1_7  ,   cons_r1_8  ,
         cons_r1_9  ,  cons_r1_10  ,  cons_r1_11  ,  cons_r1_12  ,
        cons_r1_13  ,  cons_r1_14  ,  cons_r1_15  ,  cons_r1_16  ,
        cons_r1_17  ,  cons_r1_18  ,  cons_r1_19  ,  cons_r1_20  ,
        cons_r1_21  ,  cons_r1_22  ,  cons_r1_23  ,  cons_r1_24  ,
         cons_d1_1  ,   cons_d1_2  ,   cons_d1_3  ,   cons_d1_4  ,
         cons_d1_5  ,   cons_d1_6  ,   cons_d1_7  ,   cons_d1_8  ,
         cons_d1_9  ,  cons_d1_10  ,  cons_d1_11  ,  cons_d1_12  ,
        cons_d1_13  ,  cons_d1_14  ,  cons_d1_15  ,  cons_d1_16  ,
        cons_d1_17  ,  cons_d1_18  ,  cons_d1_19  ,  cons_d1_20  ,
        cons_d1_21  ,  cons_d1_22  ,  cons_d1_23  ,  cons_d1_24  , Def_obj ;

cons_h1_1..   v1_1 - v0_24 + s1_1 + qh1_1 - 517.0=e=0 ;
cons_h1_2..   v1_2 - v1_1 + s1_2 + qh1_2 - 517.0=e=0 ;
cons_h1_3..   v1_3 - v1_2 + s1_3 + qh1_3 - 517.0=e=0 ;
cons_h1_4..   v1_4 - v1_3 + s1_4 + qh1_4 - 517.0=e=0 ;
cons_h1_5..   v1_5 - v1_4 + s1_5 + qh1_5 - 517.0=e=0 ;
cons_h1_6..   v1_6 - v1_5 + s1_6 + qh1_6 - 517.0=e=0 ;
cons_h1_7..   v1_7 - v1_6 + s1_7 + qh1_7 - 517.0=e=0 ;
cons_h1_8..   v1_8 - v1_7 + s1_8 + qh1_8 - 517.0=e=0 ;
cons_h1_9..   v1_9 - v1_8 + s1_9 + qh1_9 - 517.0=e=0 ;
cons_h1_10..   v1_10 - v1_9 + s1_10 + qh1_10 - 517.0=e=0 ;
cons_h1_11..   v1_11 - v1_10 + s1_11 + qh1_11 - 517.0=e=0 ;
cons_h1_12..   v1_12 - v1_11 + s1_12 + qh1_12 - 517.0=e=0 ;
cons_h1_13..   v1_13 - v1_12 + s1_13 + qh1_13 - 517.0=e=0 ;
cons_h1_14..   v1_14 - v1_13 + s1_14 + qh1_14 - 517.0=e=0 ;
cons_h1_15..   v1_15 - v1_14 + s1_15 + qh1_15 - 517.0=e=0 ;
cons_h1_16..   v1_16 - v1_15 + s1_16 + qh1_16 - 517.0=e=0 ;
cons_h1_17..   v1_17 - v1_16 + s1_17 + qh1_17 - 517.0=e=0 ;
cons_h1_18..   v1_18 - v1_17 + s1_18 + qh1_18 - 517.0=e=0 ;
cons_h1_19..   v1_19 - v1_18 + s1_19 + qh1_19 - 517.0=e=0 ;
cons_h1_20..   v1_20 - v1_19 + s1_20 + qh1_20 - 517.0=e=0 ;
cons_h1_21..   v1_21 - v1_20 + s1_21 + qh1_21 - 517.0=e=0 ;
cons_h1_22..   v1_22 - v1_21 + s1_22 + qh1_22 - 517.0=e=0 ;
cons_h1_23..   v1_23 - v1_22 + s1_23 + qh1_23 - 517.0=e=0 ;
cons_h1_24..   v1_24 - v1_23 + s1_24 + qh1_24 - 517.0=e=0 ;
cons_r1_1..   r1_1 - r0_24 + qg1_1 - qp1_1 - 5.17=e=0 ;
cons_r1_2..   r1_2 - r1_1 + qg1_2 - qp1_2 - 5.17=e=0 ;
cons_r1_3..   r1_3 - r1_2 + qg1_3 - qp1_3 - 5.17=e=0 ;
cons_r1_4..   r1_4 - r1_3 + qg1_4 - qp1_4 - 5.17=e=0 ;
cons_r1_5..   r1_5 - r1_4 + qg1_5 - qp1_5 - 5.17=e=0 ;
cons_r1_6..   r1_6 - r1_5 + qg1_6 - qp1_6 - 5.17=e=0 ;
cons_r1_7..   r1_7 - r1_6 + qg1_7 - qp1_7 - 5.17=e=0 ;
cons_r1_8..   r1_8 - r1_7 + qg1_8 - qp1_8 - 5.17=e=0 ;
cons_r1_9..   r1_9 - r1_8 + qg1_9 - qp1_9 - 5.17=e=0 ;
cons_r1_10..   r1_10 - r1_9 + qg1_10 - qp1_10 - 5.17=e=0 ;
cons_r1_11..   r1_11 - r1_10 + qg1_11 - qp1_11 - 5.17=e=0 ;
cons_r1_12..   r1_12 - r1_11 + qg1_12 - qp1_12 - 5.17=e=0 ;
cons_r1_13..   r1_13 - r1_12 + qg1_13 - qp1_13 - 5.17=e=0 ;
cons_r1_14..   r1_14 - r1_13 + qg1_14 - qp1_14 - 5.17=e=0 ;
cons_r1_15..   r1_15 - r1_14 + qg1_15 - qp1_15 - 5.17=e=0 ;
cons_r1_16..   r1_16 - r1_15 + qg1_16 - qp1_16 - 5.17=e=0 ;
cons_r1_17..   r1_17 - r1_16 + qg1_17 - qp1_17 - 5.17=e=0 ;
cons_r1_18..   r1_18 - r1_17 + qg1_18 - qp1_18 - 5.17=e=0 ;
cons_r1_19..   r1_19 - r1_18 + qg1_19 - qp1_19 - 5.17=e=0 ;
cons_r1_20..   r1_20 - r1_19 + qg1_20 - qp1_20 - 5.17=e=0 ;
cons_r1_21..   r1_21 - r1_20 + qg1_21 - qp1_21 - 5.17=e=0 ;
cons_r1_22..   r1_22 - r1_21 + qg1_22 - qp1_22 - 5.17=e=0 ;
cons_r1_23..   r1_23 - r1_22 + qg1_23 - qp1_23 - 5.17=e=0 ;
cons_r1_24..   r1_24 - r1_23 + qg1_24 - qp1_24 - 5.17=e=0 ;
cons_d1_1..   0=l= p11_1 + p21_1 + qh1_1 + qg1_1 - 1.33*qp1_1 - 578.0 ;
cons_d1_2..   0=l= p11_2 + p21_2 + qh1_2 + qg1_2 - 1.33*qp1_2 - 517.0 ;
cons_d1_3..   0=l= p11_3 + p21_3 + qh1_3 + qg1_3 - 1.33*qp1_3 - 461.0 ;
cons_d1_4..   0=l= p11_4 + p21_4 + qh1_4 + qg1_4 - 1.33*qp1_4 - 369.0 ;
cons_d1_5..   0=l= p11_5 + p21_5 + qh1_5 + qg1_5 - 1.33*qp1_5 - 299.0 ;
cons_d1_6..   0=l= p11_6 + p21_6 + qh1_6 + qg1_6 - 1.33*qp1_6 - 269.0 ;
cons_d1_7..   0=l= p11_7 + p21_7 + qh1_7 + qg1_7 - 1.33*qp1_7 - 370.0 ;
cons_d1_8..   0=l= p11_8 + p21_8 + qh1_8 + qg1_8 - 1.33*qp1_8 - 559.0 ;
cons_d1_9..   0=l= p11_9 + p21_9 + qh1_9 + qg1_9 - 1.33*qp1_9 - 689.0 ;
cons_d1_10..   0=l= p11_10 + p21_10 + qh1_10 + qg1_10 - 1.33*qp1_10 - 728.0 ;
cons_d1_11..   0=l= p11_11 + p21_11 + qh1_11 + qg1_11 - 1.33*qp1_11 - 683.0 ;
cons_d1_12..   0=l= p11_12 + p21_12 + qh1_12 + qg1_12 - 1.33*qp1_12 - 626.0 ;
cons_d1_13..   0=l= p11_13 + p21_13 + qh1_13 + qg1_13 - 1.33*qp1_13 - 619.0 ;
cons_d1_14..   0=l= p11_14 + p21_14 + qh1_14 + qg1_14 - 1.33*qp1_14 - 586.0 ;
cons_d1_15..   0=l= p11_15 + p21_15 + qh1_15 + qg1_15 - 1.33*qp1_15 - 582.0 ;
cons_d1_16..   0=l= p11_16 + p21_16 + qh1_16 + qg1_16 - 1.33*qp1_16 - 625.0 ;
cons_d1_17..   0=l= p11_17 + p21_17 + qh1_17 + qg1_17 - 1.33*qp1_17 - 821.0 ;
cons_d1_18..   0=l= p11_18 + p21_18 + qh1_18 + qg1_18 - 1.33*qp1_18 - 883.0 ;
cons_d1_19..   0=l= p11_19 + p21_19 + qh1_19 + qg1_19 - 1.33*qp1_19 - 768.0 ;
cons_d1_20..   0=l= p11_20 + p21_20 + qh1_20 + qg1_20 - 1.33*qp1_20 - 711.0 ;
cons_d1_21..   0=l= p11_21 + p21_21 + qh1_21 + qg1_21 - 1.33*qp1_21 - 677.0 ;
cons_d1_22..   0=l= p11_22 + p21_22 + qh1_22 + qg1_22 - 1.33*qp1_22 - 630.0 ;
cons_d1_23..   0=l= p11_23 + p21_23 + qh1_23 + qg1_23 - 1.33*qp1_23 - 545.0 ;
cons_d1_24..   0=l= p11_24 + p21_24 + qh1_24 + qg1_24 - 1.33*qp1_24 - 565.0 ;

Def_obj..
 obj =e= 1000.0*p11_1  + 1500.0*p21_1  + 1200.0*qh1_1  + 1200.0*s1_1   +
         1200.0*qg1_1  - 1200.0*qp1_1  + 1000.0*p11_2  + 1500.0*p21_2  +
         1200.0*qh1_2  + 1200.0*s1_2   + 1200.0*qg1_2  - 1200.0*qp1_2  +
         1000.0*p11_3  + 1500.0*p21_3  + 1200.0*qh1_3  + 1200.0*s1_3   +
         1200.0*qg1_3  - 1200.0*qp1_3  + 1000.0*p11_4  + 1500.0*p21_4  +
         1200.0*qh1_4  + 1200.0*s1_4   + 1200.0*qg1_4  - 1200.0*qp1_4  +
         1000.0*p11_5  + 1500.0*p21_5  + 1200.0*qh1_5  + 1200.0*s1_5   +
         1200.0*qg1_5  - 1200.0*qp1_5  + 1000.0*p11_6  + 1500.0*p21_6  +
         1200.0*qh1_6  + 1200.0*s1_6   + 1200.0*qg1_6  - 1200.0*qp1_6  +
         1000.0*p11_7  + 1500.0*p21_7  + 1200.0*qh1_7  + 1200.0*s1_7   +
         1200.0*qg1_7  - 1200.0*qp1_7  + 1000.0*p11_8  + 1500.0*p21_8  +
         1200.0*qh1_8  + 1200.0*s1_8   + 1200.0*qg1_8  - 1200.0*qp1_8  +
         1000.0*p11_9  + 1500.0*p21_9  + 1200.0*qh1_9  + 1200.0*s1_9   +
         1200.0*qg1_9  - 1200.0*qp1_9  + 1000.0*p11_10 + 1500.0*p21_10 +
         1200.0*qh1_10 + 1200.0*s1_10  + 1200.0*qg1_10 - 1200.0*qp1_10 +
         1000.0*p11_11 + 1500.0*p21_11 + 1200.0*qh1_11 + 1200.0*s1_11  +
         1200.0*qg1_11 - 1200.0*qp1_11 + 1000.0*p11_12 + 1500.0*p21_12 +
         1200.0*qh1_12 + 1200.0*s1_12  + 1200.0*qg1_12 - 1200.0*qp1_12 +
         1000.0*p11_13 + 1500.0*p21_13 + 1200.0*qh1_13 + 1200.0*s1_13  +
         1200.0*qg1_13 - 1200.0*qp1_13 + 1000.0*p11_14 + 1500.0*p21_14 +
         1200.0*qh1_14 + 1200.0*s1_14  + 1200.0*qg1_14 - 1200.0*qp1_14 +
         1000.0*p11_15 + 1500.0*p21_15 + 1200.0*qh1_15 + 1200.0*s1_15  +
         1200.0*qg1_15 - 1200.0*qp1_15 + 1000.0*p11_16 + 1500.0*p21_16 +
         1200.0*qh1_16 + 1200.0*s1_16  + 1200.0*qg1_16 - 1200.0*qp1_16 +
         1000.0*p11_17 + 1500.0*p21_17 + 1200.0*qh1_17 + 1200.0*s1_17  +
         1200.0*qg1_17 - 1200.0*qp1_17 + 1000.0*p11_18 + 1500.0*p21_18 +
         1200.0*qh1_18 + 1200.0*s1_18  + 1200.0*qg1_18 - 1200.0*qp1_18 +
         1000.0*p11_19 + 1500.0*p21_19 + 1200.0*qh1_19 + 1200.0*s1_19  +
         1200.0*qg1_19 - 1200.0*qp1_19 + 1000.0*p11_20 + 1500.0*p21_20 +
         1200.0*qh1_20 + 1200.0*s1_20  + 1200.0*qg1_20 - 1200.0*qp1_20 +
         1000.0*p11_21 + 1500.0*p21_21 + 1200.0*qh1_21 + 1200.0*s1_21  +
         1200.0*qg1_21 - 1200.0*qp1_21 + 1000.0*p11_22 + 1500.0*p21_22 +
         1200.0*qh1_22 + 1200.0*s1_22  + 1200.0*qg1_22 - 1200.0*qp1_22 +
         1000.0*p11_23 + 1500.0*p21_23 + 1200.0*qh1_23 + 1200.0*s1_23  +
         1200.0*qg1_23 - 1200.0*qp1_23 + 1000.0*p11_24 + 1500.0*p21_24 +
         1200.0*qh1_24 + 1200.0*s1_24  + 1200.0*qg1_24 - 1200.0*qp1_24 ;

  v0_24.lo = 240000.0 ;     v0_24.up = 240000.0 ;       v0_24.l = 240000.0 ;
  r0_24.lo =   3500.0 ;     r0_24.up =   3500.0 ;       r0_24.l =   3500.0 ;
  p11_1.lo =     70.0 ;     p11_1.up =    325.0 ;       p11_1.l =     70.0 ;
  p21_1.lo =     90.0 ;     p21_1.up =    290.0 ;       p21_1.l =     90.0 ;
  qh1_1.lo =     25.0 ;     qh1_1.up =    500.0 ;       qh1_1.l =     25.0 ;
   s1_1.lo =      0.0 ;
  qg1_1.lo =      0.0 ;     qg1_1.up =    300.0;
  qp1_1.lo =      0.0 ;     qp1_1.up =    225.0 ;       qp1_1.l =    225.0 ;
   v1_1.lo = 180000.0 ;      v1_1.up = 280000.0 ;        v1_1.l = 240000.0 ;
   r1_1.lo =      0.0 ;      r1_1.up =   6000.0 ;        r1_1.l =   3500.0 ;
  p11_2.lo =     70.0 ;     p11_2.up =    325.0 ;       p11_2.l =     70.0 ;
  p21_2.lo =     90.0 ;     p21_2.up =    290.0 ;       p21_2.l =     90.0 ;
  qh1_2.lo =     25.0 ;     qh1_2.up =    500.0 ;       qh1_2.l =     25.0 ;
   s1_2.lo =      0.0 ;
  qg1_2.lo =      0.0 ;     qg1_2.up =    300.0;
  qp1_2.lo =      0.0 ;     qp1_2.up =    225.0 ;       qp1_2.l =    225.0 ;
   v1_2.lo = 180000.0 ;      v1_2.up = 280000.0 ;        v1_2.l = 240000.0 ;
   r1_2.lo =      0.0 ;      r1_2.up =   6000.0 ;        r1_2.l =   3500.0 ;
  p11_3.lo =     70.0 ;     p11_3.up =    325.0 ;       p11_3.l =     70.0 ;
  p21_3.lo =     90.0 ;     p21_3.up =    290.0 ;       p21_3.l =     90.0 ;
  qh1_3.lo =     25.0 ;     qh1_3.up =    500.0 ;       qh1_3.l =     25.0 ;
   s1_3.lo =      0.0 ;
  qg1_3.lo =      0.0 ;     qg1_3.up =    300.0;
  qp1_3.lo =      0.0 ;     qp1_3.up =    225.0 ;       qp1_3.l =    225.0 ;
   v1_3.lo = 180000.0 ;      v1_3.up = 280000.0 ;        v1_3.l = 240000.0 ;
   r1_3.lo =      0.0 ;      r1_3.up =   6000.0 ;        r1_3.l =   3500.0 ;
  p11_4.lo =     70.0 ;     p11_4.up =    325.0 ;       p11_4.l =     70.0 ;
  p21_4.lo =     90.0 ;     p21_4.up =    290.0 ;       p21_4.l =     90.0 ;
  qh1_4.lo =     25.0 ;     qh1_4.up =    500.0 ;       qh1_4.l =     25.0 ;
   s1_4.lo =      0.0 ;
  qg1_4.lo =      0.0 ;     qg1_4.up =    300.0;
  qp1_4.lo =      0.0 ;     qp1_4.up =    225.0 ;       qp1_4.l =    225.0 ;
   v1_4.lo = 180000.0 ;      v1_4.up = 280000.0 ;        v1_4.l = 240000.0 ;
   r1_4.lo =      0.0 ;      r1_4.up =   6000.0 ;        r1_4.l =   3500.0 ;
  p11_5.lo =     70.0 ;     p11_5.up =    325.0 ;       p11_5.l =     70.0 ;
  p21_5.lo =     90.0 ;     p21_5.up =    290.0 ;       p21_5.l =     90.0 ;
  qh1_5.lo =     25.0 ;     qh1_5.up =    500.0 ;       qh1_5.l =     25.0 ;
   s1_5.lo =      0.0 ;
  qg1_5.lo =      0.0 ;     qg1_5.up =    300.0;
  qp1_5.lo =      0.0 ;     qp1_5.up =    225.0 ;       qp1_5.l =    225.0 ;
   v1_5.lo = 180000.0 ;      v1_5.up = 280000.0 ;        v1_5.l = 240000.0 ;
   r1_5.lo =      0.0 ;      r1_5.up =   6000.0 ;        r1_5.l =   3500.0 ;
  p11_6.lo =     70.0 ;     p11_6.up =    325.0 ;       p11_6.l =     70.0 ;
  p21_6.lo =     90.0 ;     p21_6.up =    290.0 ;       p21_6.l =     90.0 ;
  qh1_6.lo =     25.0 ;     qh1_6.up =    500.0 ;       qh1_6.l =     25.0 ;
   s1_6.lo =      0.0 ;
  qg1_6.lo =      0.0 ;     qg1_6.up =    300.0;
  qp1_6.lo =      0.0 ;     qp1_6.up =    225.0 ;       qp1_6.l =    225.0 ;
   v1_6.lo = 180000.0 ;      v1_6.up = 280000.0 ;        v1_6.l = 240000.0 ;
   r1_6.lo =      0.0 ;      r1_6.up =   6000.0 ;        r1_6.l =   3500.0 ;
  p11_7.lo =     70.0 ;     p11_7.up =    325.0 ;       p11_7.l =     70.0 ;
  p21_7.lo =     90.0 ;     p21_7.up =    290.0 ;       p21_7.l =     90.0 ;
  qh1_7.lo =     25.0 ;     qh1_7.up =    500.0 ;       qh1_7.l =     25.0 ;
   s1_7.lo =      0.0 ;
  qg1_7.lo =      0.0 ;     qg1_7.up =    300.0;       
  qp1_7.lo =      0.0 ;     qp1_7.up =    225.0 ;       qp1_7.l =    225.0 ;
   v1_7.lo = 180000.0 ;      v1_7.up = 280000.0 ;        v1_7.l = 240000.0 ;
   r1_7.lo =      0.0 ;      r1_7.up =   6000.0 ;        r1_7.l =   3500.0 ;
  p11_8.lo =     70.0 ;     p11_8.up =    325.0 ;       p11_8.l =     70.0 ;
  p21_8.lo =     90.0 ;     p21_8.up =    290.0 ;       p21_8.l =     90.0 ;
  qh1_8.lo =     25.0 ;     qh1_8.up =    500.0 ;       qh1_8.l =     25.0 ;
   s1_8.lo =      0.0 ;
  qg1_8.lo =      0.0 ;     qg1_8.up =    300.0;
  qp1_8.lo =      0.0 ;     qp1_8.up =    225.0 ;       qp1_8.l =    225.0 ;
   v1_8.lo = 180000.0 ;      v1_8.up = 280000.0 ;        v1_8.l = 240000.0 ;
   r1_8.lo =      0.0 ;      r1_8.up =   6000.0 ;        r1_8.l =   3500.0 ;
  p11_9.lo =     70.0 ;     p11_9.up =    325.0 ;       p11_9.l =     70.0 ;
  p21_9.lo =     90.0 ;     p21_9.up =    290.0 ;       p21_9.l =     90.0 ;
  qh1_9.lo =     25.0 ;     qh1_9.up =    500.0 ;       qh1_9.l =     25.0 ;
   s1_9.lo =      0.0 ;
  qg1_9.lo =      0.0 ;     qg1_9.up =    300.0;
  qp1_9.lo =      0.0 ;     qp1_9.up =    225.0 ;       qp1_9.l =    225.0 ;
   v1_9.lo = 180000.0 ;      v1_9.up = 280000.0 ;        v1_9.l = 240000.0 ;
   r1_9.lo =      0.0 ;      r1_9.up =   6000.0 ;        r1_9.l =   3500.0 ;
 p11_10.lo =     70.0 ;    p11_10.up =    325.0 ;      p11_10.l =     70.0 ;
 p21_10.lo =     90.0 ;    p21_10.up =    290.0 ;      p21_10.l =     90.0 ;
 qh1_10.lo =     25.0 ;    qh1_10.up =    500.0 ;      qh1_10.l =     25.0 ;
  s1_10.lo =      0.0 ;
 qg1_10.lo =      0.0 ;    qg1_10.up =    300.0;
 qp1_10.lo =      0.0 ;    qp1_10.up =    225.0 ;      qp1_10.l =    225.0 ;
  v1_10.lo = 180000.0 ;     v1_10.up = 280000.0 ;       v1_10.l = 240000.0 ;
  r1_10.lo =      0.0 ;     r1_10.up =   6000.0 ;       r1_10.l =   3500.0 ;
 p11_11.lo =     70.0 ;    p11_11.up =    325.0 ;      p11_11.l =     70.0 ;
 p21_11.lo =     90.0 ;    p21_11.up =    290.0 ;      p21_11.l =     90.0 ;
 qh1_11.lo =     25.0 ;    qh1_11.up =    500.0 ;      qh1_11.l =     25.0 ;
  s1_11.lo =      0.0 ;
 qg1_11.lo =      0.0 ;    qg1_11.up =    300.0;
 qp1_11.lo =      0.0 ;    qp1_11.up =    225.0 ;      qp1_11.l =    225.0 ;
  v1_11.lo = 180000.0 ;     v1_11.up = 280000.0 ;       v1_11.l = 240000.0 ;
  r1_11.lo =      0.0 ;     r1_11.up =   6000.0 ;       r1_11.l =   3500.0 ;
 p11_12.lo =     70.0 ;    p11_12.up =    325.0 ;      p11_12.l =     70.0 ;
 p21_12.lo =     90.0 ;    p21_12.up =    290.0 ;      p21_12.l =     90.0 ;
 qh1_12.lo =     25.0 ;    qh1_12.up =    500.0 ;      qh1_12.l =     25.0 ;
  s1_12.lo =      0.0 ;
 qg1_12.lo =      0.0 ;    qg1_12.up =    300.0;
 qp1_12.lo =      0.0 ;    qp1_12.up =    225.0 ;      qp1_12.l =    225.0 ;
  v1_12.lo = 180000.0 ;     v1_12.up = 280000.0 ;       v1_12.l = 240000.0 ;
  r1_12.lo =      0.0 ;     r1_12.up =   6000.0 ;       r1_12.l =   3500.0 ;
 p11_13.lo =     70.0 ;    p11_13.up =    325.0 ;      p11_13.l =     70.0 ;
 p21_13.lo =     90.0 ;    p21_13.up =    290.0 ;      p21_13.l =     90.0 ;
 qh1_13.lo =     25.0 ;    qh1_13.up =    500.0 ;      qh1_13.l =     25.0 ;
  s1_13.lo =      0.0 ;
 qg1_13.lo =      0.0 ;    qg1_13.up =    300.0;
 qp1_13.lo =      0.0 ;    qp1_13.up =    225.0 ;      qp1_13.l =    225.0 ;
  v1_13.lo = 180000.0 ;     v1_13.up = 280000.0 ;       v1_13.l = 240000.0 ;
  r1_13.lo =      0.0 ;     r1_13.up =   6000.0 ;       r1_13.l =   3500.0 ;
 p11_14.lo =     70.0 ;    p11_14.up =    325.0 ;      p11_14.l =     70.0 ;
 p21_14.lo =     90.0 ;    p21_14.up =    290.0 ;      p21_14.l =     90.0 ;
 qh1_14.lo =     25.0 ;    qh1_14.up =    500.0 ;      qh1_14.l =     25.0 ;
  s1_14.lo =      0.0 ;
 qg1_14.lo =      0.0 ;    qg1_14.up =    300.0;
 qp1_14.lo =      0.0 ;    qp1_14.up =    225.0 ;      qp1_14.l =    225.0 ;
  v1_14.lo = 180000.0 ;     v1_14.up = 280000.0 ;       v1_14.l = 240000.0 ;
  r1_14.lo =      0.0 ;     r1_14.up =   6000.0 ;       r1_14.l =   3500.0 ;
 p11_15.lo =     70.0 ;    p11_15.up =    325.0 ;      p11_15.l =     70.0 ;
 p21_15.lo =     90.0 ;    p21_15.up =    290.0 ;      p21_15.l =     90.0 ;
 qh1_15.lo =     25.0 ;    qh1_15.up =    500.0 ;      qh1_15.l =     25.0 ;
  s1_15.lo =      0.0 ;
 qg1_15.lo =      0.0 ;    qg1_15.up =    300.0;
 qp1_15.lo =      0.0 ;    qp1_15.up =    225.0 ;      qp1_15.l =    225.0 ;
  v1_15.lo = 180000.0 ;     v1_15.up = 280000.0 ;       v1_15.l = 240000.0 ;
  r1_15.lo =      0.0 ;     r1_15.up =   6000.0 ;       r1_15.l =   3500.0 ;
 p11_16.lo =     70.0 ;    p11_16.up =    325.0 ;      p11_16.l =     70.0 ;
 p21_16.lo =     90.0 ;    p21_16.up =    290.0 ;      p21_16.l =     90.0 ;
 qh1_16.lo =     25.0 ;    qh1_16.up =    500.0 ;      qh1_16.l =     25.0 ;
  s1_16.lo =      0.0 ;
 qg1_16.lo =      0.0 ;    qg1_16.up =    300.0;
 qp1_16.lo =      0.0 ;    qp1_16.up =    225.0 ;      qp1_16.l =    225.0 ;
  v1_16.lo = 180000.0 ;     v1_16.up = 280000.0 ;       v1_16.l = 240000.0 ;
  r1_16.lo =      0.0 ;     r1_16.up =   6000.0 ;       r1_16.l =   3500.0 ;
 p11_17.lo =     70.0 ;    p11_17.up =    325.0 ;      p11_17.l =     70.0 ;
 p21_17.lo =     90.0 ;    p21_17.up =    290.0 ;      p21_17.l =     90.0 ;
 qh1_17.lo =     25.0 ;    qh1_17.up =    500.0 ;      qh1_17.l =     25.0 ;
  s1_17.lo =      0.0 ;
 qg1_17.lo =      0.0 ;    qg1_17.up =    300.0;
 qp1_17.lo =      0.0 ;    qp1_17.up =    225.0 ;      qp1_17.l =    225.0 ;
  v1_17.lo = 180000.0 ;     v1_17.up = 280000.0 ;       v1_17.l = 240000.0 ;
  r1_17.lo =      0.0 ;     r1_17.up =   6000.0 ;       r1_17.l =   3500.0 ;
 p11_18.lo =     70.0 ;    p11_18.up =    325.0 ;      p11_18.l =     70.0 ;
 p21_18.lo =     90.0 ;    p21_18.up =    290.0 ;      p21_18.l =     90.0 ;
 qh1_18.lo =     25.0 ;    qh1_18.up =    500.0 ;      qh1_18.l =     25.0 ;
  s1_18.lo =      0.0 ;
 qg1_18.lo =      0.0 ;    qg1_18.up =    300.0;
 qp1_18.lo =      0.0 ;    qp1_18.up =    225.0 ;      qp1_18.l =    225.0 ;
  v1_18.lo = 180000.0 ;     v1_18.up = 280000.0 ;       v1_18.l = 240000.0 ;
  r1_18.lo =      0.0 ;     r1_18.up =   6000.0 ;       r1_18.l =   3500.0 ;
 p11_19.lo =     70.0 ;    p11_19.up =    325.0 ;      p11_19.l =     70.0 ;
 p21_19.lo =     90.0 ;    p21_19.up =    290.0 ;      p21_19.l =     90.0 ;
 qh1_19.lo =     25.0 ;    qh1_19.up =    500.0 ;      qh1_19.l =     25.0 ;
  s1_19.lo =      0.0 ;
 qg1_19.lo =      0.0 ;    qg1_19.up =    300.0;
 qp1_19.lo =      0.0 ;    qp1_19.up =    225.0 ;      qp1_19.l =    225.0 ;
  v1_19.lo = 180000.0 ;     v1_19.up = 280000.0 ;       v1_19.l = 240000.0 ;
  r1_19.lo =      0.0 ;     r1_19.up =   6000.0 ;       r1_19.l =   3500.0 ;
 p11_20.lo =     70.0 ;    p11_20.up =    325.0 ;      p11_20.l =     70.0 ;
 p21_20.lo =     90.0 ;    p21_20.up =    290.0 ;      p21_20.l =     90.0 ;
 qh1_20.lo =     25.0 ;    qh1_20.up =    500.0 ;      qh1_20.l =     25.0 ;
  s1_20.lo =      0.0 ;
 qg1_20.lo =      0.0 ;    qg1_20.up =    300.0;
 qp1_20.lo =      0.0 ;    qp1_20.up =    225.0 ;      qp1_20.l =    225.0 ;
  v1_20.lo = 180000.0 ;     v1_20.up = 280000.0 ;       v1_20.l = 240000.0 ;
  r1_20.lo =      0.0 ;     r1_20.up =   6000.0 ;       r1_20.l =   3500.0 ;
 p11_21.lo =     70.0 ;    p11_21.up =    325.0 ;      p11_21.l =     70.0 ;
 p21_21.lo =     90.0 ;    p21_21.up =    290.0 ;      p21_21.l =     90.0 ;
 qh1_21.lo =     25.0 ;    qh1_21.up =    500.0 ;      qh1_21.l =     25.0 ;
  s1_21.lo =      0.0 ;
 qg1_21.lo =      0.0 ;    qg1_21.up =    300.0;
 qp1_21.lo =      0.0 ;    qp1_21.up =    225.0 ;      qp1_21.l =    225.0 ;
  v1_21.lo = 180000.0 ;     v1_21.up = 280000.0 ;       v1_21.l = 240000.0 ;
  r1_21.lo =      0.0 ;     r1_21.up =   6000.0 ;       r1_21.l =   3500.0 ;
 p11_22.lo =     70.0 ;    p11_22.up =    325.0 ;      p11_22.l =     70.0 ;
 p21_22.lo =     90.0 ;    p21_22.up =    290.0 ;      p21_22.l =     90.0 ;
 qh1_22.lo =     25.0 ;    qh1_22.up =    500.0 ;      qh1_22.l =     25.0 ;
  s1_22.lo =      0.0 ;
 qg1_22.lo =      0.0 ;    qg1_22.up =    300.0;
 qp1_22.lo =      0.0 ;    qp1_22.up =    225.0 ;      qp1_22.l =    225.0 ;
  v1_22.lo = 180000.0 ;     v1_22.up = 280000.0 ;       v1_22.l = 240000.0 ;
  r1_22.lo =      0.0 ;     r1_22.up =   6000.0 ;       r1_22.l =   3500.0 ;
 p11_23.lo =     70.0 ;    p11_23.up =    325.0 ;      p11_23.l =     70.0 ;
 p21_23.lo =     90.0 ;    p21_23.up =    290.0 ;      p21_23.l =     90.0 ;
 qh1_23.lo =     25.0 ;    qh1_23.up =    500.0 ;      qh1_23.l =     25.0 ;
  s1_23.lo =      0.0 ;
 qg1_23.lo =      0.0 ;    qg1_23.up =    300.0;
 qp1_23.lo =      0.0 ;    qp1_23.up =    225.0 ;      qp1_23.l =    225.0 ;
  v1_23.lo = 180000.0 ;     v1_23.up = 280000.0 ;       v1_23.l = 240000.0 ;
  r1_23.lo =      0.0 ;     r1_23.up =   6000.0 ;       r1_23.l =   3500.0 ;
 p11_24.lo =     70.0 ;    p11_24.up =    325.0 ;      p11_24.l =     70.0 ;
 p21_24.lo =     90.0 ;    p21_24.up =    290.0 ;      p21_24.l =     90.0 ;
 qh1_24.lo =     25.0 ;    qh1_24.up =    500.0 ;      qh1_24.l =     25.0 ;
  s1_24.lo =      0.0 ;
 qg1_24.lo =      0.0 ;    qg1_24.up =    300.0;
 qp1_24.lo =      0.0 ;    qp1_24.up =    225.0 ;      qp1_24.l =    225.0 ;
  v1_24.lo = 180000.0 ;     v1_24.up = 280000.0 ;       v1_24.l = 240000.0 ;
  r1_24.lo =      0.0 ;     r1_24.up =   6000.0 ;       r1_24.l =   3500.0 ;

Model sseblin / all / ;

Solve sseblin  using nlp minimazing obj ;

display  v0_24.l  ;  display  r0_24.l  ;  display  p11_1.l  ;
display  p21_1.l  ;  display  qh1_1.l  ;  display   s1_1.l  ;
display  qg1_1.l  ;  display  qp1_1.l  ;  display   v1_1.l  ;
display   r1_1.l  ;  display  p11_2.l  ;  display  p21_2.l  ;
display  qh1_2.l  ;  display   s1_2.l  ;  display  qg1_2.l  ;
display  qp1_2.l  ;  display   v1_2.l  ;  display   r1_2.l  ;
display  p11_3.l  ;  display  p21_3.l  ;  display  qh1_3.l  ;
display   s1_3.l  ;  display  qg1_3.l  ;  display  qp1_3.l  ;
display   v1_3.l  ;  display   r1_3.l  ;  display  p11_4.l  ;
display  p21_4.l  ;  display  qh1_4.l  ;  display   s1_4.l  ;
display  qg1_4.l  ;  display  qp1_4.l  ;  display   v1_4.l  ;
display   r1_4.l  ;  display  p11_5.l  ;  display  p21_5.l  ;
display  qh1_5.l  ;  display   s1_5.l  ;  display  qg1_5.l  ;
display  qp1_5.l  ;  display   v1_5.l  ;  display   r1_5.l  ;
display  p11_6.l  ;  display  p21_6.l  ;  display  qh1_6.l  ;
display   s1_6.l  ;  display  qg1_6.l  ;  display  qp1_6.l  ;
display   v1_6.l  ;  display   r1_6.l  ;  display  p11_7.l  ;
display  p21_7.l  ;  display  qh1_7.l  ;  display   s1_7.l  ;
display  qg1_7.l  ;  display  qp1_7.l  ;  display   v1_7.l  ;
display   r1_7.l  ;  display  p11_8.l  ;  display  p21_8.l  ;
display  qh1_8.l  ;  display   s1_8.l  ;  display  qg1_8.l  ;
display  qp1_8.l  ;  display   v1_8.l  ;  display   r1_8.l  ;
display  p11_9.l  ;  display  p21_9.l  ;  display  qh1_9.l  ;
display   s1_9.l  ;  display  qg1_9.l  ;  display  qp1_9.l  ;
display   v1_9.l  ;  display   r1_9.l  ;  display p11_10.l  ;
display p21_10.l  ;  display qh1_10.l  ;  display  s1_10.l  ;
display qg1_10.l  ;  display qp1_10.l  ;  display  v1_10.l  ;
display  r1_10.l  ;  display p11_11.l  ;  display p21_11.l  ;
display qh1_11.l  ;  display  s1_11.l  ;  display qg1_11.l  ;
display qp1_11.l  ;  display  v1_11.l  ;  display  r1_11.l  ;
display p11_12.l  ;  display p21_12.l  ;  display qh1_12.l  ;
display  s1_12.l  ;  display qg1_12.l  ;  display qp1_12.l  ;
display  v1_12.l  ;  display  r1_12.l  ;  display p11_13.l  ;
display p21_13.l  ;  display qh1_13.l  ;  display  s1_13.l  ;
display qg1_13.l  ;  display qp1_13.l  ;  display  v1_13.l  ;
display  r1_13.l  ;  display p11_14.l  ;  display p21_14.l  ;
display qh1_14.l  ;  display  s1_14.l  ;  display qg1_14.l  ;
display qp1_14.l  ;  display  v1_14.l  ;  display  r1_14.l  ;
display p11_15.l  ;  display p21_15.l  ;  display qh1_15.l  ;
display  s1_15.l  ;  display qg1_15.l  ;  display qp1_15.l  ;
display  v1_15.l  ;  display  r1_15.l  ;  display p11_16.l  ;
display p21_16.l  ;  display qh1_16.l  ;  display  s1_16.l  ;
display qg1_16.l  ;  display qp1_16.l  ;  display  v1_16.l  ;
display  r1_16.l  ;  display p11_17.l  ;  display p21_17.l  ;
display qh1_17.l  ;  display  s1_17.l  ;  display qg1_17.l  ;
display qp1_17.l  ;  display  v1_17.l  ;  display  r1_17.l  ;
display p11_18.l  ;  display p21_18.l  ;  display qh1_18.l  ;
display  s1_18.l  ;  display qg1_18.l  ;  display qp1_18.l  ;
display  v1_18.l  ;  display  r1_18.l  ;  display p11_19.l  ;
display p21_19.l  ;  display qh1_19.l  ;  display  s1_19.l  ;
display qg1_19.l  ;  display qp1_19.l  ;  display  v1_19.l  ;
display  r1_19.l  ;  display p11_20.l  ;  display p21_20.l  ;
display qh1_20.l  ;  display  s1_20.l  ;  display qg1_20.l  ;
display qp1_20.l  ;  display  v1_20.l  ;  display  r1_20.l  ;
display p11_21.l  ;  display p21_21.l  ;  display qh1_21.l  ;
display  s1_21.l  ;  display qg1_21.l  ;  display qp1_21.l  ;
display  v1_21.l  ;  display  r1_21.l  ;  display p11_22.l  ;
display p21_22.l  ;  display qh1_22.l  ;  display  s1_22.l  ;
display qg1_22.l  ;  display qp1_22.l  ;  display  v1_22.l  ;
display  r1_22.l  ;  display p11_23.l  ;  display p21_23.l  ;
display qh1_23.l  ;  display  s1_23.l  ;  display qg1_23.l  ;
display qp1_23.l  ;  display  v1_23.l  ;  display  r1_23.l  ;
display p11_24.l  ;  display p21_24.l  ;  display qh1_24.l  ;
display  s1_24.l  ;  display qg1_24.l  ;  display qp1_24.l  ;
display  v1_24.l  ;  display  r1_24.l  ;  display obj.l  ;
