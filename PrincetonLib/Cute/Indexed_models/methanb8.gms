* Cute AMPL model  (translation to GAMS)
*
*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem:
*   ********
*   The methanol-8 problem by Fletcher, with ti values from Table 2.7
*   Source: Problem 2d in
*   J.J. More',"A collection of nonlinear model problems"
*   Proceedings of the AMS-SIAM Summer Seminar on the Computational
*   Solution of Nonlinear Systems of Equations, Colorado, 1988.
*   Argonne National Laboratory MCS-P60-0289, 1989.
*   SIF input: N. Gould and Ph. Toint, Feb 1991.
*   classification NOR2-MN-31-31
*   Least square problems are bounded below by zero
*   Solution

$offdigit ;

parameter      n ;        n = 8;
parameter      m ;        m = 2;
parameter      k ;        k = 2;
parameter    nm1 ;      nm1 = -1 + (8);
parameter    nm2 ;      nm2 = -2 + (8);
parameter     km ;       km = -1 + (2);
parameter     kp ;       kp = 1 + (2);
parameter     a1 ;       a1 = 18.5751;
parameter     b1 ;       b1 = -3632.649;
parameter     c1 ;       c1 = 239.2;
parameter     a2 ;       a2 = 18.3443;
parameter     b2 ;       b2 = -3841.2203;
parameter     c2 ;       c2 = 228.0;
parameter    al1 ;      al1 = 0.0;
parameter    al2 ;      al2 = 0.0;
parameter    fl1 ;      fl1 = 451.25;
parameter    fl2 ;      fl2 = 684.25;
parameter    fv1 ;      fv1 = 0.0;
parameter    fv2 ;      fv2 = 0.0;
parameter     tf ;       tf = 89.0;
parameter      b ;        b = 693.37;
parameter      d ;        d = 442.13;
parameter      q ;        q = 8386200.0;
parameter    pi0 ;      pi0 = 1210.0;
parameter    pi1 ;      pi1 = 1200.0;
parameter    pi2 ;      pi2 = 1190.0;
parameter    pi3 ;      pi3 = 1180.0;
parameter    pi4 ;      pi4 = 1170.0;
parameter    pi5 ;      pi5 = 1160.0;
parameter    pi6 ;      pi6 = 1150.0;
parameter    pi7 ;      pi7 = 1140.0;
parameter invpi0 ;   invpi0 = 1.0 / (1210.0);
parameter invpi1 ;   invpi1 = 1.0 / (1200.0);
parameter invpi2 ;   invpi2 = 1.0 / (1190.0);
parameter invpi3 ;   invpi3 = 1.0 / (1180.0);
parameter invpi4 ;   invpi4 = 1.0 / (1170.0);
parameter invpi5 ;   invpi5 = 1.0 / (1160.0);
parameter invpi6 ;   invpi6 = 1.0 / (1150.0);
parameter invpi7 ;   invpi7 = 1.0 / (1140.0);
parameter  temp2 ;    temp2 = (89.0) * (8.74);
parameter    im1 ;      im1 = -1 + (6);
parameter    ip1 ;      ip1 = 1 + (6);
parameter   tftf ;     tftf = (89.0) * (89.0);

parameter smallhf;smallhf  = ((0.0) + ((((((89.0) * (89.0)) * (0.0422)) +
                             ((89.0) *(15.97))) + (0.0)) * (451.25))) +
                             ((((((89.0) * (89.0)) * (0.0)) + ((89.0) *
                             (18.1))) + (0.0)) * (684.25));
parameter   bighf;  bighf  = ((0.0) + ((((((89.0) * (89.0)) * (0.0422)) +
                             ((89.0) * (-1.59))) + (9566.67)) * (0.0))) +
                             ((((((89.0) * (89.0)) * (0.0)) + ((89.0) *
                             (8.74))) + (10834.67)) * (0.0));
parameter   temp1;  temp1  = (((((89.0) * (89.0)) * (0.0)) + ((89.0) *
                                 (8.74))) + (10834.67)) * (0.0);

Variable t0 , x0_1 , x0_2 , t1 , x1_1 , x1_2 ,
         t2 , x2_1 , x2_2 , t3 , x3_1 , x3_2 ,
         t4 , x4_1 , x4_2 , t5 , x5_1 , x5_2 ,
         t6 , x6_1 , x6_2 , t7 , x7_1 , x7_2 ,
         v0 ,   v1 ,   v2 , v3 ,   v4 ,   v5 , v6 , obj ;

Equation Def_obj ;

Def_obj..

obj =e= sqr(((-1.0 * x1_1 * (v0 + 693.37 )
     +(v0*x0_1*1.0*8.264462809917355e-4*exp(18.5751+(-3632.649/(t0+239.2))))
     +693.37*x0_1)/100.0))

+ sqr((x6_1*1.0*8.695652173913045e-4*exp(18.5751+(-3632.649/(t6+239.2)))) -
     x7_1)

+ sqr(((-1.0 * x2_1 * (v1 + 693.37 ) +
     (v0*x0_1*(-1.0)*8.264462809917355e-4*exp(18.5751+(-3632.649/(t0+239.2)))) +
     1.0 *x1_1 * (v0 + 693.37 )
     +(v1*x1_1*1.0*8.333333333333334e-4*exp(18.5751+(-3632.649/(t1+239.2)))))/100.0))

+ sqr(((-1.0 * x3_1 * (v2 -442.13 ) +
     (v1*x1_1*(-1.0)*8.333333333333334e-4*exp(18.5751+(- 3632.649/(t1+239.2)))) +
     1.0 * x2_1 * (v1 + 693.37 ) +
     (v2*x2_1*1.0*8.403361344537816e-4*exp(18.5751+(- 3632.649/(t2+239.2)))) -
     451.25)/100.0))

+ sqr(((-1.0 * x4_1 * (v3 -442.13 ) +
     (v2*x2_1*(-1.0)*8.403361344537816e-4*exp(18.5751+(- 3632.649/(t2+239.2)))) +
     1.0 * x3_1 * (v2 -442.13 ) +
     (v3*x3_1*1.0*8.474576271186439e-4*exp(18.5751+(-
     3632.649/(t3+239.2)))))/100.0))

+ sqr(((-1.0 * x5_1 * (v4 -442.13 ) +
     (v3*x3_1*(-1.0)*8.474576271186439e-4*exp(18.5751+(- 3632.649/(t3+239.2)))) +
     1.0 * x4_1 * (v3 -442.13 ) +
     (v4*x4_1*1.0*8.547008547008547e-4*exp(18.5751+(-
     3632.649/(t4+239.2)))))/100.0))

+ sqr(((-1.0 * x6_1 * (v5 -442.13 ) +
     (v4*x4_1*(-1.0)*8.547008547008547e-4*exp(18.5751+(- 3632.649/(t4+239.2)))) +
     1.0 * x5_1 * (v4 -442.13 ) +
     (v5*x5_1*1.0*8.620689655172415e-4*exp(18.5751+(-
     3632.649/(t5+239.2)))))/100.0))

+ sqr(((-1.0 * x7_1 * (v6 -442.13 ) +
     (v5*x5_1*(-1.0)*8.620689655172415e-4*exp(18.5751+(- 3632.649/(t5+239.2)))) +
     1.0 * x6_1 * (v5 -442.13 ) +
     (v6*x6_1*1.0*8.695652173913045e-4*exp(18.5751+(-
     3632.649/(t6+239.2)))))/100.0))

+ sqr(((-1.0 * x1_2 * (v0 + 693.37 ) + (v0*x0_2*
     1.0*8.264462809917355e-4*exp(18.3443+(- 3841.2203/(t0+228.0)))) +
     693.37*x0_2)/100.0))

+ sqr((x6_2*1.0*8.695652173913045e-4*exp(18.3443+(- 3841.2203/(t6+228.0)))) -
     x7_2)

+ sqr(((-1.0 * x2_2 * (v1 + 693.37 ) +
     (v0*x0_2*(-1.0)*8.264462809917355e-4*exp(18.3443+(- 3841.2203/(t0+228.0))))
     + 1.0 * x1_2 * (v0 + 693.37 ) +
     (v1*x1_2*1.0*8.333333333333334e-4*exp(18.3443+(-
     3841.2203/(t1+228.0)))))/100.0))

+ sqr(((-1.0 * x3_2 * (v2 - 442.13 ) +
     (v1*x1_2*(-1.0)*8.333333333333334e-4*exp(18.3443+(- 3841.2203/(t1+228.0))))
     + 1.0 * x2_2 * (v1 + 693.37 ) +
     (v2*x2_2*1.0*8.403361344537816e-4*exp(18.3443+(- 3841.2203/(t2+228.0)))) -
     684.25)/100.0))

+ sqr(((-1.0 * x4_2 * (v3 - 442.13 ) +
     (v2*x2_2*(-1.0)*8.403361344537816e-4*exp(18.3443+(- 3841.2203/(t2+228.0))))
     + 1.0 * x3_2 * (v2 -442.13 ) +
     (v3*x3_2*1.0*8.474576271186439e-4*exp(18.3443+(-
     3841.2203/(t3+228.0)))))/100.0))

+ sqr(((-1.0 * x5_2 * (v4 - 442.13 ) +
     (v3*x3_2*(-1.0)*8.474576271186439e-4*exp(18.3443+(- 3841.2203/(t3+228.0))))
     + 1.0 * x4_2 * (v3 -442.13 ) +
     (v4*x4_2*1.0*8.547008547008547e-4*exp(18.3443+(-
     3841.2203/(t4+228.0)))))/100.0))

+ sqr(((-1.0 * x6_2 * (v5 - 442.13 ) +
     (v4*x4_2*(-1.0)*8.547008547008547e-4*exp(18.3443+(- 3841.2203/(t4+228.0))))
     + 1.0 * x5_2 * (v4 -442.13 ) +
     (v5*x5_2*1.0*8.620689655172415e-4*exp(18.3443+(-
     3841.2203/(t5+228.0)))))/100.0))

+ sqr(((-1.0 * x7_2 * (v6 - 442.13 ) +
     (v5*x5_2*(-1.0)*8.620689655172415e-4*exp(18.3443+(- 3841.2203/(t5+228.0))))
     + 1.0 * x6_2 * (v5 -442.13 ) +
     (v6*x6_2*1.0*8.695652173913045e-4*exp(18.3443+(-
     3841.2203/(t6+228.0)))))/100.0))

+ sqr((x0_1*1.0*8.264462809917355e-4*exp(18.5751+(-3632.649/(t0+239.2)))) +
     (x0_2*1.0*8.264462809917355e-4*exp(18.3443+(- 3841.2203/(t0+228.0)))) -
     1.0)

+ sqr((x1_1*1.0*8.333333333333334e-4*exp(18.5751+(- 3632.649/(t1+239.2)))) +
     (x1_2*1.0*8.333333333333334e-4*exp(18.3443+(- 3841.2203/(t1+228.0)))) -
     1.0)

+ sqr((x2_1*1.0*8.403361344537816e-4*exp(18.5751+(- 3632.649/(t2+239.2)))) +
     (x2_2*1.0*8.403361344537816e-4*exp(18.3443+(- 3841.2203/(t2+228.0)))) -
     1.0)

+ sqr((x3_1*1.0*8.474576271186439e-4*exp(18.5751+(- 3632.649/(t3+239.2)))) +
     (x3_2*1.0*8.474576271186439e-4*exp(18.3443+(- 3841.2203/(t3+228.0)))) -
     1.0)

+ sqr((x4_1*1.0*8.547008547008547e-4*exp(18.5751+(- 3632.649/(t4+239.2)))) +
     (x4_2*1.0*8.547008547008547e-4*exp(18.3443+(- 3841.2203/(t4+228.0)))) -
     1.0)

+ sqr((x5_1*1.0*8.620689655172415e-4*exp(18.5751+(- 3632.649/(t5+239.2)))) +
     (x5_2*1.0*8.620689655172415e-4*exp(18.3443+(- 3841.2203/(t5+228.0)))) -
     1.0)

+ sqr((x6_1*1.0*8.695652173913045e-4*exp(18.5751+(- 3632.649/(t6+239.2)))) +
     (x6_2*1.0*8.695652173913045e-4*exp(18.3443+(- 3841.2203/(t6+228.0)))) -
     1.0)

+ sqr((x7_1*1.0*8.771929824561405e-4*exp(18.5751+(- 3632.649/(t7+239.2)))) +
     (x7_2*1.0*8.771929824561405e-4*exp(18.3443+(- 3841.2203/(t7+228.0)))) -
     1.0)

+ sqr((((v0*x0_1*1.0*8.264462809917355e-4*exp(18.5751+(- 3632.649/(t0+239.2))))
     * (9566.67-1.59*t0+0.0422*t0*t0) + 693.37 * x0_1 *
     (0.0+15.97*t0+0.0422*t0*t0) -1.0 * x1_1 * (693.37 + v0 )
     *(0.0+15.97*t1+0.0422*t1*t1) +
     (v0*x0_2*1.0*8.264462809917355e-4*exp(18.3443+(- 3841.2203/(t0+228.0)))) *
     (10834.67+8.74*t0+0.0*t0*t0) + 693.37 * x0_2 * (0.0+18.1*t0+0.0*t0*t0)
     -1.0 * x1_2 * (693.37 + v0 ) *(0.0+18.1*t1+0.0*t1*t1) -
     8386200.0)/100000.0))

+ sqr((((v1*x1_1*1.0*8.333333333333334e-4*exp(18.5751+(- 3632.649/(t1+239.2))))
     * (9566.67-1.59*t1+0.0422*t1*t1) + 1.0 * x1_1 * (693.37 + v0 )
     *(0.0+15.97*t1+0.0422*t1*t1) +
     (v0*x0_1*(-1.0)*8.264462809917355e-4*exp(18.5751+(- 3632.649/(t0+239.2)))) *
     (9566.67-1.59*t0+0.0422*t0*t0) -1.0 * x2_1 * (693.37 + v1 )
     *(0.0+15.97*t2+0.0422*t2*t2) +
     (v1*x1_2*1.0*8.333333333333334e-4*exp(18.3443+(- 3841.2203/(t1+228.0)))) *
     (10834.67+8.74*t1+0.0*t1*t1) + 1.0 * x1_2 * (693.37 + v0 )
     *(0.0+18.1*t1+0.0*t1*t1) +
     (v0*x0_2*(-1.0)*8.264462809917355e-4*exp(18.3443+(- 3841.2203/(t0+228.0))))
     * (10834.67+8.74*t0+0.0*t0*t0) -1.0 * x2_2 * (693.37 + v1 )
     *(0.0+18.1*t2+0.0*t2*t2))/100000.0))

+ sqr((((v2*x2_1*1.0*8.403361344537816e-4*exp(18.5751+(- 3632.649/(t2+239.2))))
     * (9566.67-1.59*t2+0.0422*t2*t2) + 1.0 * x2_1 * (693.37 + v1 )
     *(0.0+15.97*t2+0.0422*t2*t2) +
     (v1*x1_1*(-1.0)*8.333333333333334e-4*exp(18.5751+(- 3632.649/(t1+239.2)))) *
     (9566.67-1.59*t1+0.0422*t1*t1) -1.0 * x3_1 * (-442.13 + v2 )
     *(0.0+15.97*t3+0.0422*t3*t3) +
     (v2*x2_2*1.0*8.403361344537816e-4*exp(18.3443+(- 3841.2203/(t2+228.0)))) *
     (10834.67+8.74*t2+0.0*t2*t2) + 1.0 * x2_2 * (693.37 + v1 )
     *(0.0+18.1*t2+0.0*t2*t2) +
     (v1*x1_2*(-1.0)*8.333333333333334e-4*exp(18.3443+(- 3841.2203/(t1+228.0))))
     * (10834.67+8.74*t1+0.0*t1*t1) -1.0 * x3_2 * (-442.13 + v2 )
     *(0.0+18.1*t3+0.0*t3*t3) - 1894471.11025)/100000.0))

+ sqr((((v3*x3_1*1.0*8.474576271186439e-4*exp(18.5751+(- 3632.649/(t3+239.2))))
     * (9566.67-1.59*t3+0.0422*t3*t3) + 1.0 * x3_1 * (-442.13 + v2 )
     *(0.0+15.97*t3+0.0422*t3*t3) +
     (v2*x2_1*(-1.0)*8.403361344537816e-4*exp(18.5751+(- 3632.649/(t2+239.2)))) *
     (9566.67-1.59*t2+0.0422*t2*t2) -1.0 * x4_1 * (-442.13 + v3 )
     *(0.0+15.97*t4+0.0422*t4*t4) +
     (v3*x3_2*1.0*8.474576271186439e-4*exp(18.3443+(- 3841.2203/(t3+228.0)))) *
     (10834.67+8.74*t3+0.0*t3*t3) + 1.0 * x3_2 * (-442.13 + v2 )
     *(0.0+18.1*t3+0.0*t3*t3) +
     (v2*x2_2*(-1.0)*8.403361344537816e-4*exp(18.3443+(- 3841.2203/(t2+228.0))))
     * (10834.67+8.74*t2+0.0*t2*t2) -1.0 * x4_2 * (-442.13 + v3 )
     *(0.0+18.1*t4+0.0*t4*t4))/100000.0))

+ sqr((((v4*x4_1*1.0*8.547008547008547e-4*exp(18.5751+(- 3632.649/(t4+239.2))))
     * (9566.67-1.59*t4+0.0422*t4*t4) + 1.0 * x4_1 * (-442.13 + v3 )
     *(0.0+15.97*t4+0.0422*t4*t4) +
     (v3*x3_1*(-1.0)*8.474576271186439e-4*exp(18.5751+(- 3632.649/(t3+239.2)))) *
     (9566.67-1.59*t3+0.0422*t3*t3) -1.0 * x5_1 * (-442.13 + v4 )
     *(0.0+15.97*t5+0.0422*t5*t5) +
     (v4*x4_2*1.0*8.547008547008547e-4*exp(18.3443+(- 3841.2203/(t4+228.0)))) *
     (10834.67+8.74*t4+0.0*t4*t4) + 1.0 * x4_2 * (-442.13 + v3 )
     *(0.0+18.1*t4+0.0*t4*t4) +
     (v3*x3_2*(-1.0)*8.474576271186439e-4*exp(18.3443+(- 3841.2203/(t3+228.0))))
     * (10834.67+8.74*t3+0.0*t3*t3) -1.0 * x5_2 * (-442.13 + v4 )
     *(0.0+18.1*t5+0.0*t5*t5))/100000.0))

+ sqr((((v5*x5_1*1.0*8.620689655172415e-4*exp(18.5751+(- 3632.649/(t5+239.2))))
     * (9566.67-1.59*t5+0.0422*t5*t5) + 1.0 * x5_1 * (-442.13 + v4 )
     *(0.0+15.97*t5+0.0422*t5*t5) +
     (v4*x4_1*(-1.0)*8.547008547008547e-4*exp(18.5751+(- 3632.649/(t4+239.2)))) *
     (9566.67-1.59*t4+0.0422*t4*t4) -1.0 * x6_1 * (-442.13 + v5 )
     *(0.0+15.97*t6+0.0422*t6*t6) +
     (v5*x5_2*1.0*8.620689655172415e-4*exp(18.3443+(- 3841.2203/(t5+228.0)))) *
     (10834.67+8.74*t5+0.0*t5*t5) + 1.0 * x5_2 * (-442.13 + v4 )
     *(0.0+18.1*t5+0.0*t5*t5) +
     (v4*x4_2*(-1.0)*8.547008547008547e-4*exp(18.3443+(- 3841.2203/(t4+228.0))))
     * (10834.67+8.74*t4+0.0*t4*t4) -1.0 * x6_2 * (-442.13 + v5 )
     *(0.0+18.1*t6+0.0*t6*t6))/100000.0))

+ sqr((((v6*x6_1*1.0*8.695652173913045e-4*exp(18.5751+(- 3632.649/(t6+239.2))))
     * (9566.67-1.59*t6+0.0422*t6*t6) + 1.0 * x6_1 * (-442.13 + v5 )
     *(0.0+15.97*t6+0.0422*t6*t6) +
     (v5*x5_1*(-1.0)*8.620689655172415e-4*exp(18.5751+(- 3632.649/(t5+239.2)))) *
     (9566.67-1.59*t5+0.0422*t5*t5) -1.0 * x7_1 * (-442.13 + v6 )
     *(0.0+15.97*t7+0.0422*t7*t7) +
     (v6*x6_2*1.0*8.695652173913045e-4*exp(18.3443+(- 3841.2203/(t6+228.0)))) *
     (10834.67+8.74*t6+0.0*t6*t6) + 1.0 * x6_2 * (-442.13 + v5 )
     *(0.0+18.1*t6+0.0*t6*t6) +
     (v5*x5_2*(-1.0)*8.620689655172415e-4*exp(18.3443+(- 3841.2203/(t5+228.0))))
     * (10834.67+8.74*t5+0.0*t5*t5) -1.0 * x7_2 * (-442.13 + v6 )
     *(0.0+18.1*t7+0.0*t7*t7))/100000.0)) ;

   t0.l = 107.47  ;
 x0_1.l = 0.09203 ;
 x0_2.l = 0.908   ;
   t1.l = 102.4   ;
 x1_1.l = 0.1819  ;
 x1_2.l = 0.8181  ;
   t2.l = 97.44   ;
 x2_1.l = 0.284   ;
 x2_2.l = 0.716   ;
   t3.l = 96.3    ;
 x3_1.l = 0.3051  ;
 x3_2.l = 0.6949  ;
   t4.l = 93.99   ;
 x4_1.l = 0.3566  ;
 x4_2.l = 0.6434  ;
   t5.l = 89.72   ;
 x5_1.l = 0.468   ;
 x5_2.l = 0.532   ;
   t6.l = 83.71   ;
 x6_1.l = 0.6579  ;
 x6_2.l = 0.3421  ;
   t7.l = 78.31   ;
 x7_1.l = 0.8763  ;
 x7_2.l = 0.1237  ;
   v0.l = 886.37  ;
   v1.l = 910.01  ;
   v2.l = 922.52  ;
   v3.l = 926.46  ;
   v4.l = 935.56  ;
   v5.l = 952.83  ;
   v6.l = 975.73  ;

Model methanb8 /all/;

Solve methanb8  using nlp minimize obj ;

    display t0.l ;
    display x0_1.l ;
    display x0_2.l ;
    display t1.l ;
    display x1_1.l ;
    display x1_2.l ;
    display t2.l ;
    display x2_1.l ;
    display x2_2.l ;
    display t3.l ;
    display x3_1.l ;
    display x3_2.l ;
    display t4.l ;
    display x4_1.l ;
    display x4_2.l ;
    display t5.l ;
    display x5_1.l ;
    display x5_2.l ;
    display t6.l ;
    display x6_1.l ;
    display x6_2.l ;
    display t7.l ;
    display x7_1.l ;
    display x7_2.l ;
    display v0.l ;
    display v1.l ;
    display v2.l ;
    display v3.l ;
    display v4.l ;
    display v5.l ;
    display v6.l ;
    display obj.l ;
