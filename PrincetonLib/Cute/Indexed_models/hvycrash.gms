*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   A problem freely inspired by the heavy spacecraft landing problem by
*   Ivashkevich, as reported by Tyatushkin, Zholudev and Erinchek.  The
*   modifications of the original problem involves dropping the final state
*   constraint on the second variable and the setting of EPS to zero
*   in the second constraint.
*   (No feasible point was found for the original formulation by any of the
*   packages at hand.)
*   This is a badly scaled degenerate nonlinear nonconvex optimal control
*   problem, with lots of negative curvature.
*   Source: inspired by
*   A.I Tyatushkin, A.I. Zholudev and N. M. Erinchek,
*   "The gradient method for solving optimal control problems with phase
*   constraints",
*   in "System Modelling and Optimization", P. Kall, ed., pp. 456--464,
*   Springer Verlag, Lecture Notes in Control and Information Sciences 180,1992.
*   This reference itself refers to:
*   A.K. Ivashkevich,
*   "Multistage US spacecraft Space Shuttle",
*   Survey of foreign papers (Part 11),  Orbital Craft, Moscow, 1976.
*   SIF input: Ph. Toint, February 1994.
*   classification LOR2-AN-V-V
*   Number of discretized points in (0,TT].
*   The number of variables is    4 * ( N + 1 )
*   The number of constraints is  3 * N
*IE N                   100            $ n =  404, m =  300
*IE N                   500            $ n = 2004, m = 1500
*IE N                   1000           $ n = 4004, m = 3000
*   Problem parameters
*   Mesh
*   Constants
*   State variables
*   Control variables
*   Objective function
*   State constraints
*   State constraints elements
*   State constraints
* ZE C(2,T)    E2(T)                    -H
* ZE C(2,T)    E3(T)                    -H
*   Solution
*LO SOLTN             -0.21850
*LO SOLTN(100)        3.26705331D-8
*LO SOLTN(500)        2.36171208D-8
*LO SOLTN(1000)       8.48265630D-8

Parameter      n ;     n = 50                ;
Parameter     tt ;    tt =  0.2185           ;
Parameter    epsi;   epsi=  0.1              ;
Parameter  alpha ; alpha =  1.62079          ;
Parameter    nm1 ;   nm1 = -1 + (50)         ;
Parameter     rn ;    rn = 50.0              ;
Parameter      h ;     h = (0.2185) / (50.0) ;
Parameter    tm1 ;   tm1 = -1 + (50)         ;

Variable     x1_0 ,  x2_0 ,  x3_0 ,  x1_1 ,  x2_1 ,  x3_1 ,
             x1_2 ,  x2_2 ,  x3_2 ,  x1_3 ,  x2_3 ,  x3_3 ,
             x1_4 ,  x2_4 ,  x3_4 ,  x1_5 ,  x2_5 ,  x3_5 ,
             x1_6 ,  x2_6 ,  x3_6 ,  x1_7 ,  x2_7 ,  x3_7 ,
             x1_8 ,  x2_8 ,  x3_8 ,  x1_9 ,  x2_9 ,  x3_9 ,
            x1_10 , x2_10 , x3_10 , x1_11 , x2_11 , x3_11 ,
            x1_12 , x2_12 , x3_12 , x1_13 , x2_13 , x3_13 ,
            x1_14 , x2_14 , x3_14 , x1_15 , x2_15 , x3_15 ,
            x1_16 , x2_16 , x3_16 , x1_17 , x2_17 , x3_17 ,
            x1_18 , x2_18 , x3_18 , x1_19 , x2_19 , x3_19 ,
            x1_20 , x2_20 , x3_20 , x1_21 , x2_21 , x3_21 ,
            x1_22 , x2_22 , x3_22 , x1_23 , x2_23 , x3_23 ,
            x1_24 , x2_24 , x3_24 , x1_25 , x2_25 , x3_25 ,
            x1_26 , x2_26 , x3_26 , x1_27 , x2_27 , x3_27 ,
            x1_28 , x2_28 , x3_28 , x1_29 , x2_29 , x3_29 ,
            x1_30 , x2_30 , x3_30 , x1_31 , x2_31 , x3_31 ,
            x1_32 , x2_32 , x3_32 , x1_33 , x2_33 , x3_33 ,
            x1_34 , x2_34 , x3_34 , x1_35 , x2_35 , x3_35 ,
            x1_36 , x2_36 , x3_36 , x1_37 , x2_37 , x3_37 ,
            x1_38 , x2_38 , x3_38 , x1_39 , x2_39 , x3_39 ,
            x1_40 , x2_40 , x3_40 , x1_41 , x2_41 , x3_41 ,
            x1_42 , x2_42 , x3_42 , x1_43 , x2_43 , x3_43 ,
            x1_44 , x2_44 , x3_44 , x1_45 , x2_45 , x3_45 ,
            x1_46 , x2_46 , x3_46 , x1_47 , x2_47 , x3_47 ,
            x1_48 , x2_48 , x3_48 , x1_49 , x2_49 , x3_49 ,
            x1_50 , x2_50 , x3_50 ,  u0   ,  u1   ,  u2   ,
             u3   ,  u4   ,  u5   ,  u6   ,  u7   ,  u8   ,
             u9   , u10   , u11   , u12   , u13   , u14   ,
            u15   , u16   , u17   , u18   , u19   , u20   ,
            u21   , u22   , u23   , u24   , u25   , u26   ,
            u27   , u28   , u29   , u30   , u31   , u32   ,
            u33   , u34   , u35   , u36   , u37   , u38   ,
            u39   , u40   , u41   , u42   , u43   , u44   ,
            u45   , u46   , u47   , u48   , u49   , u50   ,  obj ;

Equation    c1_1 ,  c2_1 ,  c3_1 ,  c1_2 ,  c2_2 ,  c3_2 ,
            c1_3 ,  c2_3 ,  c3_3 ,  c1_4 ,  c2_4 ,  c3_4 ,
            c1_5 ,  c2_5 ,  c3_5 ,  c1_6 ,  c2_6 ,  c3_6 ,
            c1_7 ,  c2_7 ,  c3_7 ,  c1_8 ,  c2_8 ,  c3_8 ,
            c1_9 ,  c2_9 ,  c3_9 , c1_10 , c2_10 , c3_10 ,
           c1_11 , c2_11 , c3_11 , c1_12 , c2_12 , c3_12 ,
           c1_13 , c2_13 , c3_13 , c1_14 , c2_14 , c3_14 ,
           c1_15 , c2_15 , c3_15 , c1_16 , c2_16 , c3_16 ,
           c1_17 , c2_17 , c3_17 , c1_18 , c2_18 , c3_18 ,
           c1_19 , c2_19 , c3_19 , c1_20 , c2_20 , c3_20 ,
           c1_21 , c2_21 , c3_21 , c1_22 , c2_22 , c3_22 ,
           c1_23 , c2_23 , c3_23 , c1_24 , c2_24 , c3_24 ,
           c1_25 , c2_25 , c3_25 , c1_26 , c2_26 , c3_26 ,
           c1_27 , c2_27 , c3_27 , c1_28 , c2_28 , c3_28 ,
           c1_29 , c2_29 , c3_29 , c1_30 , c2_30 , c3_30 ,
           c1_31 , c2_31 , c3_31 , c1_32 , c2_32 , c3_32 ,
           c1_33 , c2_33 , c3_33 , c1_34 , c2_34 , c3_34 ,
           c1_35 , c2_35 , c3_35 , c1_36 , c2_36 , c3_36 ,
           c1_37 , c2_37 , c3_37 , c1_38 , c2_38 , c3_38 ,
           c1_39 , c2_39 , c3_39 , c1_40 , c2_40 , c3_40 ,
           c1_41 , c2_41 , c3_41 , c1_42 , c2_42 , c3_42 ,
           c1_43 , c2_43 , c3_43 , c1_44 , c2_44 , c3_44 ,
           c1_45 , c2_45 , c3_45 , c1_46 , c2_46 , c3_46 ,
           c1_47 , c2_47 , c3_47 , c1_48 , c2_48 , c3_48 ,
           c1_49 , c2_49 , c3_49 , c1_50 , c2_50 , c3_50 , Def_obj ;


c1_1..  0.00437*(cos(x3_1)) /
         (1.62079*(0.01+0.3*u1*u1)*x2_1*x2_1) + x1_0 - x1_1=e= 0 ;

c2_1..  -1.0 / x2_1 - (cos(x3_1)) /
         (1.62079*(0.01+0.3*u1*u1)*(x2_1*x2_1)*x2_1)  =e= 0 ;

c3_1..  0.00437*u1 / ((0.01+0.3*u1*u1) * (x2_1*x2_1) ) -
         0.00437*(cos(x3_1))
         /(1.62079*(0.01+0.3*u1*u1)*(x2_1*x2_1)*x2_1*x2_1) +
         0.1*x3_0 - 0.1*x3_1  =e=  0 ;

c1_2..  0.00437*(cos(x3_2)) /
         (1.62079*(0.01+0.3*u2*u2)*x2_2*x2_2) + x1_1 - x1_2=e= 0 ;

c2_2..  -1.0 / x2_2 - (cos(x3_2)) /
         (1.62079*(0.01+0.3*u2*u2)*(x2_2*x2_2)*x2_2)  =e= 0 ;

c3_2..  0.00437*u2 / ((0.01+0.3*u2*u2) * (x2_2*x2_2) ) -
         0.00437*(cos(x3_2))
         /(1.62079*(0.01+0.3*u2*u2)*(x2_2*x2_2)*x2_2*x2_2) +
         0.1*x3_1 - 0.1*x3_2  =e=  0 ;

c1_3..  0.00437*(cos(x3_3)) /
         (1.62079*(0.01+0.3*u3*u3)*x2_3*x2_3) + x1_2 - x1_3=e= 0 ;

c2_3..  -1.0 / x2_3 - (cos(x3_3)) /
         (1.62079*(0.01+0.3*u3*u3)*(x2_3*x2_3)*x2_3)  =e= 0 ;

c3_3..  0.00437*u3 / ((0.01+0.3*u3*u3) * (x2_3*x2_3) ) -
         0.00437*(cos(x3_3))
         /(1.62079*(0.01+0.3*u3*u3)*(x2_3*x2_3)*x2_3*x2_3) +
         0.1*x3_2 - 0.1*x3_3  =e=  0 ;

c1_4..  0.00437*(cos(x3_4)) /
         (1.62079*(0.01+0.3*u4*u4)*x2_4*x2_4) + x1_3 - x1_4=e= 0 ;

c2_4..  -1.0 / x2_4 - (cos(x3_4)) /
         (1.62079*(0.01+0.3*u4*u4)*(x2_4*x2_4)*x2_4)  =e= 0 ;

c3_4..  0.00437*u4 / ((0.01+0.3*u4*u4) * (x2_4*x2_4) ) -
         0.00437*(cos(x3_4))
         /(1.62079*(0.01+0.3*u4*u4)*(x2_4*x2_4)*x2_4*x2_4) +
         0.1*x3_3 - 0.1*x3_4  =e=  0 ;

c1_5..  0.00437*(cos(x3_5)) /
         (1.62079*(0.01+0.3*u5*u5)*x2_5*x2_5) + x1_4 - x1_5=e= 0 ;

c2_5..  -1.0 / x2_5 - (cos(x3_5)) /
         (1.62079*(0.01+0.3*u5*u5)*(x2_5*x2_5)*x2_5)  =e= 0 ;

c3_5..  0.00437*u5 / ((0.01+0.3*u5*u5) * (x2_5*x2_5) ) -
         0.00437*(cos(x3_5))
         /(1.62079*(0.01+0.3*u5*u5)*(x2_5*x2_5)*x2_5*x2_5) +
         0.1*x3_4 - 0.1*x3_5  =e=  0 ;

c1_6..  0.00437*(cos(x3_6)) /
         (1.62079*(0.01+0.3*u6*u6)*x2_6*x2_6) + x1_5 - x1_6=e= 0 ;

c2_6..  -1.0 / x2_6 - (cos(x3_6)) /
         (1.62079*(0.01+0.3*u6*u6)*(x2_6*x2_6)*x2_6)  =e= 0 ;

c3_6..  0.00437*u6 / ((0.01+0.3*u6*u6) * (x2_6*x2_6) ) -
         0.00437*(cos(x3_6))
         /(1.62079*(0.01+0.3*u6*u6)*(x2_6*x2_6)*x2_6*x2_6) +
         0.1*x3_5 - 0.1*x3_6  =e=  0 ;

c1_7..  0.00437*(cos(x3_7)) /
         (1.62079*(0.01+0.3*u7*u7)*x2_7*x2_7) + x1_6 - x1_7=e= 0 ;

c2_7..  -1.0 / x2_7 - (cos(x3_7)) /
         (1.62079*(0.01+0.3*u7*u7)*(x2_7*x2_7)*x2_7)  =e= 0 ;

c3_7..  0.00437*u7 / ((0.01+0.3*u7*u7) * (x2_7*x2_7) ) -
         0.00437*(cos(x3_7))
         /(1.62079*(0.01+0.3*u7*u7)*(x2_7*x2_7)*x2_7*x2_7) +
         0.1*x3_6 - 0.1*x3_7  =e=  0 ;

c1_8..  0.00437*(cos(x3_8)) /
         (1.62079*(0.01+0.3*u8*u8)*x2_8*x2_8) + x1_7 - x1_8=e= 0 ;

c2_8..  -1.0 / x2_8 - (cos(x3_8)) /
         (1.62079*(0.01+0.3*u8*u8)*(x2_8*x2_8)*x2_8)  =e= 0 ;

c3_8..  0.00437*u8 / ((0.01+0.3*u8*u8) * (x2_8*x2_8) ) -
         0.00437*(cos(x3_8))
         /(1.62079*(0.01+0.3*u8*u8)*(x2_8*x2_8)*x2_8*x2_8) +
         0.1*x3_7 - 0.1*x3_8  =e=  0 ;

c1_9..  0.00437*(cos(x3_9)) /
         (1.62079*(0.01+0.3*u9*u9)*x2_9*x2_9) + x1_8 - x1_9=e= 0 ;

c2_9..  -1.0 / x2_9 - (cos(x3_9)) /
         (1.62079*(0.01+0.3*u9*u9)*(x2_9*x2_9)*x2_9)  =e= 0 ;

c3_9..  0.00437*u9 / ((0.01+0.3*u9*u9) * (x2_9*x2_9) ) -
         0.00437*(cos(x3_9))
         /(1.62079*(0.01+0.3*u9*u9)*(x2_9*x2_9)*x2_9*x2_9) +
         0.1*x3_8 - 0.1*x3_9  =e=  0 ;

c1_10..  0.00437*(cos(x3_10)) /
         (1.62079*(0.01+0.3*u10*u10)*x2_10*x2_10) + x1_9
         -x1_10  =e=  0 ;

c2_10..  -1.0 / x2_10 - (cos(x3_10))
         /(1.62079*(0.01+0.3*u10*u10)*(x2_10*x2_10)*x2_10)  =e=0 ;

c3_10..  0.00437*u10 / ((0.01+0.3*u10*u10) * (x2_10*x2_10) )
         -0.00437*(cos(x3_10)) /
         (1.62079*(0.01+0.3*u10*u10)*(x2_10*x2_10)*x2_10*x2_10)
         +0.1*x3_9 - 0.1*x3_10  =e=  0 ;

c1_11..  0.00437*(cos(x3_11)) /
         (1.62079*(0.01+0.3*u11*u11)*x2_11*x2_11) + x1_10
         -x1_11  =e=  0 ;

c2_11..  -1.0 / x2_11 - (cos(x3_11))
         /(1.62079*(0.01+0.3*u11*u11)*(x2_11*x2_11)*x2_11)  =e=0 ;

c3_11..  0.00437*u11 / ((0.01+0.3*u11*u11) * (x2_11*x2_11) )
         -0.00437*(cos(x3_11)) /
         (1.62079*(0.01+0.3*u11*u11)*(x2_11*x2_11)*x2_11*x2_11)
         +0.1*x3_10 - 0.1*x3_11  =e=  0 ;

c1_12..  0.00437*(cos(x3_12)) /
         (1.62079*(0.01+0.3*u12*u12)*x2_12*x2_12) + x1_11
         -x1_12  =e=  0 ;

c2_12..  -1.0 / x2_12 - (cos(x3_12))
         /(1.62079*(0.01+0.3*u12*u12)*(x2_12*x2_12)*x2_12)  =e=0 ;

c3_12..  0.00437*u12 / ((0.01+0.3*u12*u12) * (x2_12*x2_12) )
         -0.00437*(cos(x3_12)) /
         (1.62079*(0.01+0.3*u12*u12)*(x2_12*x2_12)*x2_12*x2_12)
         +0.1*x3_11 - 0.1*x3_12  =e=  0 ;

c1_13..  0.00437*(cos(x3_13)) /
         (1.62079*(0.01+0.3*u13*u13)*x2_13*x2_13) + x1_12
         -x1_13  =e=  0 ;

c2_13..  -1.0 / x2_13 - (cos(x3_13))
         /(1.62079*(0.01+0.3*u13*u13)*(x2_13*x2_13)*x2_13)  =e=
         0 ;

c3_13..  0.00437*u13 / ((0.01+0.3*u13*u13) * (x2_13*x2_13) )
         -0.00437*(cos(x3_13)) /
         (1.62079*(0.01+0.3*u13*u13)*(x2_13*x2_13)*x2_13*x2_13) +
         0.1*x3_12 - 0.1*x3_13  =e=  0 ;

c1_14..  0.00437*(cos(x3_14)) /
         (1.62079*(0.01+0.3*u14*u14)*x2_14*x2_14) + x1_13
         -x1_14  =e=  0 ;

c2_14..  -1.0 / x2_14 - (cos(x3_14))
         /(1.62079*(0.01+0.3*u14*u14)*(x2_14*x2_14)*x2_14)  =e=0 ;

c3_14..  0.00437*u14 / ((0.01+0.3*u14*u14) * (x2_14*x2_14) )
         -0.00437*(cos(x3_14)) /
         (1.62079*(0.01+0.3*u14*u14)*(x2_14*x2_14)*x2_14*x2_14)
         +0.1*x3_13 - 0.1*x3_14  =e=  0 ;

c1_15..  0.00437*(cos(x3_15)) /
         (1.62079*(0.01+0.3*u15*u15)*x2_15*x2_15) + x1_14
         -x1_15  =e=  0 ;

c2_15..  -1.0 / x2_15 - (cos(x3_15))
         /(1.62079*(0.01+0.3*u15*u15)*(x2_15*x2_15)*x2_15)  =e=0 ;

c3_15..  0.00437*u15 / ((0.01+0.3*u15*u15) * (x2_15*x2_15) )
         -0.00437*(cos(x3_15)) /
         (1.62079*(0.01+0.3*u15*u15)*(x2_15*x2_15)*x2_15*x2_15)
         +0.1*x3_14 - 0.1*x3_15  =e=  0 ;

c1_16..  0.00437*(cos(x3_16)) /
         (1.62079*(0.01+0.3*u16*u16)*x2_16*x2_16) + x1_15
         -x1_16  =e=  0 ;

c2_16..  -1.0 / x2_16 - (cos(x3_16))
         /(1.62079*(0.01+0.3*u16*u16)*(x2_16*x2_16)*x2_16)  =e=0 ;

c3_16..  0.00437*u16 / ((0.01+0.3*u16*u16) * (x2_16*x2_16) )
         -0.00437*(cos(x3_16)) /
         (1.62079*(0.01+0.3*u16*u16)*(x2_16*x2_16)*x2_16*x2_16)
         +0.1*x3_15 - 0.1*x3_16  =e=  0 ;

c1_17..  0.00437*(cos(x3_17)) /
         (1.62079*(0.01+0.3*u17*u17)*x2_17*x2_17) + x1_16
         -x1_17  =e=  0 ;

c2_17..  -1.0 / x2_17 - (cos(x3_17))
         /(1.62079*(0.01+0.3*u17*u17)*(x2_17*x2_17)*x2_17)  =e=0 ;

c3_17..  0.00437*u17 / ((0.01+0.3*u17*u17) * (x2_17*x2_17) )
         -0.00437*(cos(x3_17)) /
         (1.62079*(0.01+0.3*u17*u17)*(x2_17*x2_17)*x2_17*x2_17)
         +0.1*x3_16 - 0.1*x3_17  =e=  0 ;

c1_18..  0.00437*(cos(x3_18)) /
         (1.62079*(0.01+0.3*u18*u18)*x2_18*x2_18) + x1_17
         -x1_18  =e=  0 ;

c2_18..  -1.0 / x2_18 - (cos(x3_18))
         /(1.62079*(0.01+0.3*u18*u18)*(x2_18*x2_18)*x2_18)  =e=0 ;

c3_18..  0.00437*u18 / ((0.01+0.3*u18*u18) * (x2_18*x2_18) )
         -0.00437*(cos(x3_18)) /
         (1.62079*(0.01+0.3*u18*u18)*(x2_18*x2_18)*x2_18*x2_18)
         +0.1*x3_17 - 0.1*x3_18  =e=  0 ;

c1_19..  0.00437*(cos(x3_19)) /
         (1.62079*(0.01+0.3*u19*u19)*x2_19*x2_19) + x1_18 -x1_19 =e=0 ;

c2_19..  -1.0 / x2_19 - (cos(x3_19))
         /(1.62079*(0.01+0.3*u19*u19)*(x2_19*x2_19)*x2_19)  =e=0 ;

c3_19..  0.00437*u19 / ((0.01+0.3*u19*u19) * (x2_19*x2_19) )
         -0.00437*(cos(x3_19)) /
         (1.62079*(0.01+0.3*u19*u19)*(x2_19*x2_19)*x2_19*x2_19)
         +0.1*x3_18 - 0.1*x3_19  =e=  0 ;

c1_20..  0.00437*(cos(x3_20)) /
         (1.62079*(0.01+0.3*u20*u20)*x2_20*x2_20) + x1_19
         -x1_20  =e=  0 ;

c2_20..  -1.0 / x2_20 - (cos(x3_20))
         /(1.62079*(0.01+0.3*u20*u20)*(x2_20*x2_20)*x2_20)  =e=0 ;

c3_20..  0.00437*u20 / ((0.01+0.3*u20*u20) * (x2_20*x2_20) )
         -0.00437*(cos(x3_20)) /
         (1.62079*(0.01+0.3*u20*u20)*(x2_20*x2_20)*x2_20*x2_20)
         +0.1*x3_19 - 0.1*x3_20  =e=  0 ;

c1_21..  0.00437*(cos(x3_21)) /
         (1.62079*(0.01+0.3*u21*u21)*x2_21*x2_21) + x1_20
         -x1_21  =e=  0 ;

c2_21..  -1.0 / x2_21 - (cos(x3_21))
         /(1.62079*(0.01+0.3*u21*u21)*(x2_21*x2_21)*x2_21)  =e=0 ;

c3_21..  0.00437*u21 / ((0.01+0.3*u21*u21) * (x2_21*x2_21) )
         -0.00437*(cos(x3_21)) /
         (1.62079*(0.01+0.3*u21*u21)*(x2_21*x2_21)*x2_21*x2_21)
         +0.1*x3_20 - 0.1*x3_21  =e=  0 ;

c1_22..  0.00437*(cos(x3_22)) /
         (1.62079*(0.01+0.3*u22*u22)*x2_22*x2_22) + x1_21
         -x1_22  =e=  0 ;

c2_22..  -1.0 / x2_22 - (cos(x3_22))
         /(1.62079*(0.01+0.3*u22*u22)*(x2_22*x2_22)*x2_22)  =e=0 ;

c3_22..  0.00437*u22 / ((0.01+0.3*u22*u22) * (x2_22*x2_22) )
         -0.00437*(cos(x3_22)) /
         (1.62079*(0.01+0.3*u22*u22)*(x2_22*x2_22)*x2_22*x2_22)
          +0.1*x3_21 - 0.1*x3_22  =e=  0 ;

c1_23..  0.00437*(cos(x3_23)) /
         (1.62079*(0.01+0.3*u23*u23)*x2_23*x2_23) + x1_22
         -x1_23  =e=  0 ;

c2_23..  -1.0 / x2_23 - (cos(x3_23))
         /(1.62079*(0.01+0.3*u23*u23)*(x2_23*x2_23)*x2_23)  =e=0 ;

c3_23..  0.00437*u23 / ((0.01+0.3*u23*u23) * (x2_23*x2_23) )
         -0.00437*(cos(x3_23)) /
         (1.62079*(0.01+0.3*u23*u23)*(x2_23*x2_23)*x2_23*x2_23)
         +0.1*x3_22 - 0.1*x3_23  =e=  0 ;

c1_24..  0.00437*(cos(x3_24)) /
         (1.62079*(0.01+0.3*u24*u24)*x2_24*x2_24) + x1_23
         -x1_24  =e=  0 ;

c2_24..  -1.0 / x2_24 - (cos(x3_24))
         /(1.62079*(0.01+0.3*u24*u24)*(x2_24*x2_24)*x2_24)  =e=0 ;

c3_24..  0.00437*u24 / ((0.01+0.3*u24*u24) * (x2_24*x2_24) )
         -0.00437*(cos(x3_24)) /
         (1.62079*(0.01+0.3*u24*u24)*(x2_24*x2_24)*x2_24*x2_24)
          +0.1*x3_23 - 0.1*x3_24  =e=  0 ;

c1_25..  0.00437*(cos(x3_25)) /
         (1.62079*(0.01+0.3*u25*u25)*x2_25*x2_25) + x1_24
         -x1_25  =e=  0 ;

c2_25..  -1.0 / x2_25 - (cos(x3_25))
         /(1.62079*(0.01+0.3*u25*u25)*(x2_25*x2_25)*x2_25)  =e=0 ;

c3_25..  0.00437*u25 / ((0.01+0.3*u25*u25) * (x2_25*x2_25) )
         -0.00437*(cos(x3_25)) /
         (1.62079*(0.01+0.3*u25*u25)*(x2_25*x2_25)*x2_25*x2_25)
         +0.1*x3_24 - 0.1*x3_25  =e=  0 ;

c1_26..  0.00437*(cos(x3_26)) /
         (1.62079*(0.01+0.3*u26*u26)*x2_26*x2_26) + x1_25
         -x1_26  =e=  0 ;

c2_26..  -1.0 / x2_26 - (cos(x3_26))
         /(1.62079*(0.01+0.3*u26*u26)*(x2_26*x2_26)*x2_26)  =e=0 ;

c3_26..  0.00437*u26 / ((0.01+0.3*u26*u26) * (x2_26*x2_26) )
         -0.00437*(cos(x3_26)) /
         (1.62079*(0.01+0.3*u26*u26)*(x2_26*x2_26)*x2_26*x2_26)
         +0.1*x3_25 - 0.1*x3_26  =e=  0 ;

c1_27..  0.00437*(cos(x3_27)) /
         (1.62079*(0.01+0.3*u27*u27)*x2_27*x2_27) + x1_26
         -x1_27  =e=  0 ;

c2_27..  -1.0 / x2_27 - (cos(x3_27))
         /(1.62079*(0.01+0.3*u27*u27)*(x2_27*x2_27)*x2_27)  =e=0 ;

c3_27..  0.00437*u27 / ((0.01+0.3*u27*u27) * (x2_27*x2_27) )
         -0.00437*(cos(x3_27)) /
         (1.62079*(0.01+0.3*u27*u27)*(x2_27*x2_27)*x2_27*x2_27)
          +0.1*x3_26 - 0.1*x3_27  =e=  0 ;

c1_28..  0.00437*(cos(x3_28)) /
         (1.62079*(0.01+0.3*u28*u28)*x2_28*x2_28) + x1_27
         -x1_28  =e=  0 ;

c2_28..  -1.0 / x2_28 - (cos(x3_28))
         /(1.62079*(0.01+0.3*u28*u28)*(x2_28*x2_28)*x2_28)  =e=0 ;

c3_28..  0.00437*u28 / ((0.01+0.3*u28*u28) * (x2_28*x2_28) )
         -0.00437*(cos(x3_28)) /
         (1.62079*(0.01+0.3*u28*u28)*(x2_28*x2_28)*x2_28*x2_28)
         +0.1*x3_27 - 0.1*x3_28  =e=  0 ;

c1_29..  0.00437*(cos(x3_29)) /
         (1.62079*(0.01+0.3*u29*u29)*x2_29*x2_29) + x1_28
         -x1_29  =e=  0 ;

c2_29..  -1.0 / x2_29 - (cos(x3_29))
         /(1.62079*(0.01+0.3*u29*u29)*(x2_29*x2_29)*x2_29)  =e=0 ;

c3_29..  0.00437*u29 / ((0.01+0.3*u29*u29) * (x2_29*x2_29) )
         -0.00437*(cos(x3_29)) /
         (1.62079*(0.01+0.3*u29*u29)*(x2_29*x2_29)*x2_29*x2_29)
         +0.1*x3_28 - 0.1*x3_29  =e=  0 ;

c1_30..  0.00437*(cos(x3_30)) /
         (1.62079*(0.01+0.3*u30*u30)*x2_30*x2_30) + x1_29
         -x1_30  =e=  0 ;

c2_30..  -1.0 / x2_30 - (cos(x3_30))
         /(1.62079*(0.01+0.3*u30*u30)*(x2_30*x2_30)*x2_30)  =e=0 ;

c3_30..  0.00437*u30 / ((0.01+0.3*u30*u30) * (x2_30*x2_30) )
         -0.00437*(cos(x3_30)) /
         (1.62079*(0.01+0.3*u30*u30)*(x2_30*x2_30)*x2_30*x2_30)
         +0.1*x3_29 - 0.1*x3_30  =e=  0 ;

c1_31..  0.00437*(cos(x3_31)) /
         (1.62079*(0.01+0.3*u31*u31)*x2_31*x2_31) + x1_30
         -x1_31  =e=  0 ;

c2_31..  -1.0 / x2_31 - (cos(x3_31))
         /(1.62079*(0.01+0.3*u31*u31)*(x2_31*x2_31)*x2_31)  =e=0 ;

c3_31..  0.00437*u31 / ((0.01+0.3*u31*u31) * (x2_31*x2_31) )
         -0.00437*(cos(x3_31)) /
         (1.62079*(0.01+0.3*u31*u31)*(x2_31*x2_31)*x2_31*x2_31)
         +0.1*x3_30 - 0.1*x3_31  =e=  0 ;

c1_32..  0.00437*(cos(x3_32)) /
         (1.62079*(0.01+0.3*u32*u32)*x2_32*x2_32) + x1_31
         -x1_32  =e=  0 ;

c2_32..  -1.0 / x2_32 - (cos(x3_32))
         /(1.62079*(0.01+0.3*u32*u32)*(x2_32*x2_32)*x2_32)  =e=0 ;

c3_32..  0.00437*u32 / ((0.01+0.3*u32*u32) * (x2_32*x2_32) )
         -0.00437*(cos(x3_32)) /
         (1.62079*(0.01+0.3*u32*u32)*(x2_32*x2_32)*x2_32*x2_32)
         +0.1*x3_31 - 0.1*x3_32  =e=  0 ;

c1_33..  0.00437*(cos(x3_33)) /
         (1.62079*(0.01+0.3*u33*u33)*x2_33*x2_33) + x1_32
         -x1_33  =e=  0 ;

c2_33..  -1.0 / x2_33 - (cos(x3_33))
         /(1.62079*(0.01+0.3*u33*u33)*(x2_33*x2_33)*x2_33)  =e=0 ;

c3_33..  0.00437*u33 / ((0.01+0.3*u33*u33) * (x2_33*x2_33) )
         -0.00437*(cos(x3_33)) /
         (1.62079*(0.01+0.3*u33*u33)*(x2_33*x2_33)*x2_33*x2_33)
         +0.1*x3_32 - 0.1*x3_33  =e=  0 ;

c1_34..  0.00437*(cos(x3_34)) /
         (1.62079*(0.01+0.3*u34*u34)*x2_34*x2_34) + x1_33
         -x1_34  =e=  0 ;

c2_34..  -1.0 / x2_34 - (cos(x3_34))
         /(1.62079*(0.01+0.3*u34*u34)*(x2_34*x2_34)*x2_34)  =e=0 ;

c3_34..  0.00437*u34 / ((0.01+0.3*u34*u34) * (x2_34*x2_34) )
         -0.00437*(cos(x3_34)) /
         (1.62079*(0.01+0.3*u34*u34)*(x2_34*x2_34)*x2_34*x2_34)
         +0.1*x3_33 - 0.1*x3_34  =e=  0 ;

c1_35..  0.00437*(cos(x3_35)) /
         (1.62079*(0.01+0.3*u35*u35)*x2_35*x2_35) + x1_34
         -x1_35  =e=  0 ;

c2_35..  -1.0 / x2_35 - (cos(x3_35))
         /(1.62079*(0.01+0.3*u35*u35)*(x2_35*x2_35)*x2_35)  =e=0 ;

c3_35..  0.00437*u35 / ((0.01+0.3*u35*u35) * (x2_35*x2_35) )
         -0.00437*(cos(x3_35)) /
         (1.62079*(0.01+0.3*u35*u35)*(x2_35*x2_35)*x2_35*x2_35)
         +0.1*x3_34 - 0.1*x3_35  =e=  0 ;

c1_36..  0.00437*(cos(x3_36)) /
         (1.62079*(0.01+0.3*u36*u36)*x2_36*x2_36) + x1_35
         -x1_36  =e=  0 ;

c2_36..  -1.0 / x2_36 - (cos(x3_36))
         /(1.62079*(0.01+0.3*u36*u36)*(x2_36*x2_36)*x2_36)  =e=0 ;

c3_36..  0.00437*u36 / ((0.01+0.3*u36*u36) * (x2_36*x2_36) )
         -0.00437*(cos(x3_36)) /
         (1.62079*(0.01+0.3*u36*u36)*(x2_36*x2_36)*x2_36*x2_36)
         +0.1*x3_35 - 0.1*x3_36  =e=  0 ;

c1_37..  0.00437*(cos(x3_37)) /
         (1.62079*(0.01+0.3*u37*u37)*x2_37*x2_37) + x1_36
         -x1_37  =e=  0 ;

c2_37..  -1.0 / x2_37 - (cos(x3_37))
         /(1.62079*(0.01+0.3*u37*u37)*(x2_37*x2_37)*x2_37)  =e=0 ;

c3_37..  0.00437*u37 / ((0.01+0.3*u37*u37) * (x2_37*x2_37) )
         -0.00437*(cos(x3_37)) /
         (1.62079*(0.01+0.3*u37*u37)*(x2_37*x2_37)*x2_37*x2_37)
          +0.1*x3_36 - 0.1*x3_37  =e=  0 ;

c1_38..  0.00437*(cos(x3_38)) /
         (1.62079*(0.01+0.3*u38*u38)*x2_38*x2_38) + x1_37
         -x1_38  =e=  0 ;

c2_38..  -1.0 / x2_38 - (cos(x3_38))
         /(1.62079*(0.01+0.3*u38*u38)*(x2_38*x2_38)*x2_38)  =e=0 ;

c3_38..  0.00437*u38 / ((0.01+0.3*u38*u38) * (x2_38*x2_38) )
         -0.00437*(cos(x3_38)) /
         (1.62079*(0.01+0.3*u38*u38)*(x2_38*x2_38)*x2_38*x2_38)
         +0.1*x3_37 - 0.1*x3_38  =e=  0 ;

c1_39..  0.00437*(cos(x3_39)) /
         (1.62079*(0.01+0.3*u39*u39)*x2_39*x2_39) + x1_38
         -x1_39  =e=  0 ;

c2_39..  -1.0 / x2_39 - (cos(x3_39))
         /(1.62079*(0.01+0.3*u39*u39)*(x2_39*x2_39)*x2_39)  =e=0 ;

c3_39..  0.00437*u39 / ((0.01+0.3*u39*u39) * (x2_39*x2_39) )
         -0.00437*(cos(x3_39)) /
         (1.62079*(0.01+0.3*u39*u39)*(x2_39*x2_39)*x2_39*x2_39)
         +0.1*x3_38 - 0.1*x3_39  =e=  0 ;

c1_40..  0.00437*(cos(x3_40)) /
         (1.62079*(0.01+0.3*u40*u40)*x2_40*x2_40) + x1_39
         -x1_40  =e=  0 ;

c2_40..  -1.0 / x2_40 - (cos(x3_40))
         /(1.62079*(0.01+0.3*u40*u40)*(x2_40*x2_40)*x2_40)  =e=0 ;

c3_40..  0.00437*u40 / ((0.01+0.3*u40*u40) * (x2_40*x2_40) )
         -0.00437*(cos(x3_40)) /
         (1.62079*(0.01+0.3*u40*u40)*(x2_40*x2_40)*x2_40*x2_40)
         +0.1*x3_39 - 0.1*x3_40  =e=  0 ;

c1_41..  0.00437*(cos(x3_41)) /
         (1.62079*(0.01+0.3*u41*u41)*x2_41*x2_41) + x1_40
         -x1_41  =e=  0 ;

c2_41..  -1.0 / x2_41 - (cos(x3_41))
         /(1.62079*(0.01+0.3*u41*u41)*(x2_41*x2_41)*x2_41)  =e=0 ;

c3_41..  0.00437*u41 / ((0.01+0.3*u41*u41) * (x2_41*x2_41) )
         -0.00437*(cos(x3_41)) /
         (1.62079*(0.01+0.3*u41*u41)*(x2_41*x2_41)*x2_41*x2_41)
         +0.1*x3_40 - 0.1*x3_41  =e=  0 ;

c1_42..  0.00437*(cos(x3_42)) /
         (1.62079*(0.01+0.3*u42*u42)*x2_42*x2_42) + x1_41
         -x1_42  =e=  0 ;

c2_42..  -1.0 / x2_42 - (cos(x3_42))
         /(1.62079*(0.01+0.3*u42*u42)*(x2_42*x2_42)*x2_42)  =e=0 ;

c3_42..  0.00437*u42 / ((0.01+0.3*u42*u42) * (x2_42*x2_42) )
         -0.00437*(cos(x3_42)) /
         (1.62079*(0.01+0.3*u42*u42)*(x2_42*x2_42)*x2_42*x2_42)
         +0.1*x3_41 - 0.1*x3_42  =e=  0 ;

c1_43..  0.00437*(cos(x3_43)) /
         (1.62079*(0.01+0.3*u43*u43)*x2_43*x2_43) + x1_42
         -x1_43  =e=  0 ;

c2_43..  -1.0 / x2_43 - (cos(x3_43))
         /(1.62079*(0.01+0.3*u43*u43)*(x2_43*x2_43)*x2_43)  =e=0 ;

c3_43..  0.00437*u43 / ((0.01+0.3*u43*u43) * (x2_43*x2_43) )
         -0.00437*(cos(x3_43)) /
         (1.62079*(0.01+0.3*u43*u43)*(x2_43*x2_43)*x2_43*x2_43)
         +0.1*x3_42 - 0.1*x3_43  =e=  0 ;

c1_44..  0.00437*(cos(x3_44)) /
         (1.62079*(0.01+0.3*u44*u44)*x2_44*x2_44) + x1_43
         -x1_44  =e=  0 ;

c2_44..  -1.0 / x2_44 - (cos(x3_44))
         /(1.62079*(0.01+0.3*u44*u44)*(x2_44*x2_44)*x2_44)  =e=0 ;

c3_44..  0.00437*u44 / ((0.01+0.3*u44*u44) * (x2_44*x2_44) )
         -0.00437*(cos(x3_44)) /
         (1.62079*(0.01+0.3*u44*u44)*(x2_44*x2_44)*x2_44*x2_44)
         +0.1*x3_43 - 0.1*x3_44  =e=  0 ;

c1_45..  0.00437*(cos(x3_45)) /
         (1.62079*(0.01+0.3*u45*u45)*x2_45*x2_45) + x1_44
         -x1_45  =e=  0 ;

c2_45..  -1.0 / x2_45 - (cos(x3_45))
         /(1.62079*(0.01+0.3*u45*u45)*(x2_45*x2_45)*x2_45)  =e=0 ;

c3_45..  0.00437*u45 / ((0.01+0.3*u45*u45) * (x2_45*x2_45) )
         -0.00437*(cos(x3_45)) /
         (1.62079*(0.01+0.3*u45*u45)*(x2_45*x2_45)*x2_45*x2_45)
         +0.1*x3_44 - 0.1*x3_45  =e=  0 ;

c1_46..  0.00437*(cos(x3_46)) /
         (1.62079*(0.01+0.3*u46*u46)*x2_46*x2_46) + x1_45
         -x1_46  =e=  0 ;

c2_46..  -1.0 / x2_46 - (cos(x3_46))
         /(1.62079*(0.01+0.3*u46*u46)*(x2_46*x2_46)*x2_46)  =e=0 ;

c3_46..  0.00437*u46 / ((0.01+0.3*u46*u46) * (x2_46*x2_46) )
         -0.00437*(cos(x3_46)) /
         (1.62079*(0.01+0.3*u46*u46)*(x2_46*x2_46)*x2_46*x2_46)
         +0.1*x3_45 - 0.1*x3_46  =e=  0 ;

c1_47..  0.00437*(cos(x3_47)) /
         (1.62079*(0.01+0.3*u47*u47)*x2_47*x2_47) + x1_46
         -x1_47  =e=  0 ;

c2_47..  -1.0 / x2_47 - (cos(x3_47))
         /(1.62079*(0.01+0.3*u47*u47)*(x2_47*x2_47)*x2_47)  =e=0 ;

c3_47..  0.00437*u47 / ((0.01+0.3*u47*u47) * (x2_47*x2_47) )
         -0.00437*(cos(x3_47)) /
         (1.62079*(0.01+0.3*u47*u47)*(x2_47*x2_47)*x2_47*x2_47)
         +0.1*x3_46 - 0.1*x3_47  =e=  0 ;

c1_48..  0.00437*(cos(x3_48)) /
         (1.62079*(0.01+0.3*u48*u48)*x2_48*x2_48) + x1_47
         -x1_48  =e=  0 ;

c2_48..  -1.0 / x2_48 - (cos(x3_48))
         /(1.62079*(0.01+0.3*u48*u48)*(x2_48*x2_48)*x2_48)  =e=0 ;

c3_48..  0.00437*u48 / ((0.01+0.3*u48*u48) * (x2_48*x2_48) )
         -0.00437*(cos(x3_48)) /
         (1.62079*(0.01+0.3*u48*u48)*(x2_48*x2_48)*x2_48*x2_48)
         +0.1*x3_47 - 0.1*x3_48  =e=  0 ;

c1_49..  0.00437*(cos(x3_49)) /
         (1.62079*(0.01+0.3*u49*u49)*x2_49*x2_49) + x1_48
         -x1_49  =e=  0 ;

c2_49..  -1.0 / x2_49 - (cos(x3_49))
         /(1.62079*(0.01+0.3*u49*u49)*(x2_49*x2_49)*x2_49)  =e=0 ;

c3_49..  0.00437*u49 / ((0.01+0.3*u49*u49) * (x2_49*x2_49) )
         -0.00437*(cos(x3_49)) /
         (1.62079*(0.01+0.3*u49*u49)*(x2_49*x2_49)*x2_49*x2_49)
         +0.1*x3_48 - 0.1*x3_49  =e=  0 ;

c1_50..  0.00437*(cos(x3_50)) /
         (1.62079*(0.01+0.3*u50*u50)*x2_50*x2_50) + x1_49
         -x1_50  =e=  0 ;

c2_50..  -1.0 / x2_50 - (cos(x3_50))
         /(1.62079*(0.01+0.3*u50*u50)*(x2_50*x2_50)*x2_50)  =e=0 ;

c3_50..  0.00437*u50 / ((0.01+0.3*u50*u50) * (x2_50*x2_50) )
         -0.00437*(cos(x3_50)) /
         (1.62079*(0.01+0.3*u50*u50)*(x2_50*x2_50)*x2_50*
         x2_50)  +0.1*x3_49 - 0.1*x3_50  =e=  0 ;

Def_obj.. obj =e= x1_50 ;
Parameter epsi; epsi = +0.005;

 x1_0.lo =  0.0 +epsi     ;
 x2_0.lo =  2.19905+epsi  ;
 x3_0.lo =  0.0 +epsi     ;
 x3_1.lo =  0.0 +epsi     ;
 x3_2.lo =  0.0 +epsi     ;
 x3_3.lo =  0.0 +epsi     ;
 x3_4.lo =  0.0 +epsi     ;
 x3_5.lo =  0.0 +epsi     ;
 x3_6.lo =  0.0 +epsi     ;
 x3_7.lo =  0.0 +epsi     ;
 x3_8.lo =  0.0 +epsi     ;
 x3_9.lo =  0.0 +epsi     ;
x3_10.lo =  0.0 +epsi     ;
x3_11.lo =  0.0 +epsi     ;
x3_12.lo =  0.0 +epsi     ;
x3_13.lo =  0.0 +epsi     ;
x3_14.lo =  0.0 +epsi     ;
x3_15.lo =  0.0 +epsi     ;
x3_16.lo =  0.0 +epsi     ;
x3_17.lo =  0.0 +epsi     ;
x3_18.lo =  0.0 +epsi     ;
x3_19.lo =  0.0 +epsi     ;
x3_20.lo =  0.0 +epsi     ;
x3_21.lo =  0.0 +epsi     ;
x3_22.lo =  0.0 +epsi     ;
x3_23.lo =  0.0 +epsi     ;
x3_24.lo =  0.0 +epsi     ;
x3_25.lo =  0.0 +epsi     ;
x3_26.lo =  0.0 +epsi     ;
x3_27.lo =  0.0 +epsi     ;
x3_28.lo =  0.0 +epsi     ;
x3_29.lo =  0.0 +epsi     ;
x3_30.lo =  0.0 +epsi     ;
x3_31.lo =  0.0 +epsi     ;
x3_32.lo =  0.0 +epsi     ;
x3_33.lo =  0.0 +epsi     ;
x3_34.lo =  0.0 +epsi     ;
x3_35.lo =  0.0 +epsi     ;
x3_36.lo =  0.0 +epsi     ;
x3_37.lo =  0.0 +epsi     ;
x3_38.lo =  0.0 +epsi     ;
x3_39.lo =  0.0 +epsi     ;
x3_40.lo =  0.0 +epsi     ;
x3_41.lo =  0.0 +epsi     ;
x3_42.lo =  0.0 +epsi     ;
x3_43.lo =  0.0 +epsi     ;
x3_44.lo =  0.0 +epsi     ;
x3_45.lo =  0.0 +epsi     ;
x3_46.lo =  0.0 +epsi     ;
x3_47.lo =  0.0 +epsi     ;
x3_48.lo =  0.0 +epsi     ;
x3_49.lo =  0.0 +epsi     ;
x3_50.lo =  0.0 +epsi     ;

 x1_0.up =  0.0       +epsi;
 x2_0.up =  2.19905   +epsi;
 x3_0.up =  6.2831854 +epsi;
 x3_1.up =  6.2831854 +epsi;
 x3_2.up =  6.2831854 +epsi;
 x3_3.up =  6.2831854 +epsi;
 x3_4.up =  6.2831854 +epsi;
 x3_5.up =  6.2831854 +epsi;
 x3_6.up =  6.2831854 +epsi;
 x3_7.up =  6.2831854 +epsi;
 x3_8.up =  6.2831854 +epsi;
 x3_9.up =  6.2831854 +epsi;
x3_10.up =  6.2831854 +epsi;
x3_11.up =  6.2831854 +epsi;
x3_12.up =  6.2831854 +epsi;
x3_13.up =  6.2831854 +epsi;
x3_14.up =  6.2831854 +epsi;
x3_15.up =  6.2831854 +epsi;
x3_16.up =  6.2831854 +epsi;
x3_17.up =  6.2831854 +epsi;
x3_18.up =  6.2831854 +epsi;
x3_19.up =  6.2831854 +epsi;
x3_20.up =  6.2831854 +epsi;
x3_21.up =  6.2831854 +epsi;
x3_22.up =  6.2831854 +epsi;
x3_23.up =  6.2831854 +epsi;
x3_24.up =  6.2831854 +epsi;
x3_25.up =  6.2831854 +epsi;
x3_26.up =  6.2831854 +epsi;
x3_27.up =  6.2831854 +epsi;
x3_28.up =  6.2831854 +epsi;
x3_29.up =  6.2831854 +epsi;
x3_30.up =  6.2831854 +epsi;
x3_31.up =  6.2831854 +epsi;
x3_32.up =  6.2831854 +epsi;
x3_33.up =  6.2831854 +epsi;
x3_34.up =  6.2831854 +epsi;
x3_35.up =  6.2831854 +epsi;
x3_36.up =  6.2831854 +epsi;
x3_37.up =  6.2831854 +epsi;
x3_38.up =  6.2831854 +epsi;
x3_39.up =  6.2831854 +epsi;
x3_40.up =  6.2831854 +epsi;
x3_41.up =  6.2831854 +epsi;
x3_42.up =  6.2831854 +epsi;
x3_43.up =  6.2831854 +epsi;
x3_44.up =  6.2831854 +epsi;
x3_45.up =  6.2831854 +epsi;
x3_46.up =  6.2831854 +epsi;
x3_47.up =  6.2831854 +epsi;
x3_48.up =  6.2831854 +epsi;
x3_49.up =  6.2831854 +epsi;
x3_50.up =  6.2831854 +epsi;

 u0.lo = 0.08 ;  u0.up = 0.417 ;
 u1.lo = 0.08 ;  u1.up = 0.417 ;
 u2.lo = 0.08 ;  u2.up = 0.417 ;
 u3.lo = 0.08 ;  u3.up = 0.417 ;
 u4.lo = 0.08 ;  u4.up = 0.417 ;
 u5.lo = 0.08 ;  u5.up = 0.417 ;
 u6.lo = 0.08 ;  u6.up = 0.417 ;
 u7.lo = 0.08 ;  u7.up = 0.417 ;
 u8.lo = 0.08 ;  u8.up = 0.417 ;
 u9.lo = 0.08 ;  u9.up = 0.417 ;
u10.lo = 0.08 ; u10.up = 0.417 ;
u11.lo = 0.08 ; u11.up = 0.417 ;
u12.lo = 0.08 ; u12.up = 0.417 ;
u13.lo = 0.08 ; u13.up = 0.417 ;
u14.lo = 0.08 ; u14.up = 0.417 ;
u15.lo = 0.08 ; u15.up = 0.417 ;
u16.lo = 0.08 ; u16.up = 0.417 ;
u17.lo = 0.08 ; u17.up = 0.417 ;
u18.lo = 0.08 ; u18.up = 0.417 ;
u19.lo = 0.08 ; u19.up = 0.417 ;
u20.lo = 0.08 ; u20.up = 0.417 ;
u21.lo = 0.08 ; u21.up = 0.417 ;
u22.lo = 0.08 ; u22.up = 0.417 ;
u23.lo = 0.08 ; u23.up = 0.417 ;
u24.lo = 0.08 ; u24.up = 0.417 ;
u25.lo = 0.08 ; u25.up = 0.417 ;
u26.lo = 0.08 ; u26.up = 0.417 ;
u27.lo = 0.08 ; u27.up = 0.417 ;
u28.lo = 0.08 ; u28.up = 0.417 ;
u29.lo = 0.08 ; u29.up = 0.417 ;
u30.lo = 0.08 ; u30.up = 0.417 ;
u31.lo = 0.08 ; u31.up = 0.417 ;
u32.lo = 0.08 ; u32.up = 0.417 ;
u33.lo = 0.08 ; u33.up = 0.417 ;
u34.lo = 0.08 ; u34.up = 0.417 ;
u35.lo = 0.08 ; u35.up = 0.417 ;
u36.lo = 0.08 ; u36.up = 0.417 ;
u37.lo = 0.08 ; u37.up = 0.417 ;
u38.lo = 0.08 ; u38.up = 0.417 ;
u39.lo = 0.08 ; u39.up = 0.417 ;
u40.lo = 0.08 ; u40.up = 0.417 ;
u41.lo = 0.08 ; u41.up = 0.417 ;
u42.lo = 0.08 ; u42.up = 0.417 ;
u43.lo = 0.08 ; u43.up = 0.417 ;
u44.lo = 0.08 ; u44.up = 0.417 ;
u45.lo = 0.08 ; u45.up = 0.417 ;
u46.lo = 0.08 ; u46.up = 0.417 ;
u47.lo = 0.08 ; u47.up = 0.417 ;
u48.lo = 0.08 ; u48.up = 0.417 ;
u49.lo = 0.08 ; u49.up = 0.417 ;
u50.lo = 0.08 ; u50.up = 0.417 ;

 x2_0.l = 2.19905 ;
 x2_1.l = 1.5     ;
 x2_2.l = 1.5     ;
 x2_3.l = 1.5     ;
 x2_4.l = 1.5     ;
 x2_5.l = 1.5     ;
 x2_6.l = 1.5     ;
 x2_7.l = 1.5     ;
 x2_8.l = 1.5     ;
 x2_9.l = 1.5     ;
x2_10.l = 1.5     ;
x2_11.l = 1.5     ;
x2_12.l = 1.5     ;
x2_13.l = 1.5     ;
x2_14.l = 1.5     ;
x2_15.l = 1.5     ;
x2_16.l = 1.5     ;
x2_17.l = 1.5     ;
x2_18.l = 1.5     ;
x2_19.l = 1.5     ;
x2_20.l = 1.5     ;
x2_21.l = 1.5     ;
x2_22.l = 1.5     ;
x2_23.l = 1.5     ;
x2_24.l = 1.5     ;
x2_25.l = 1.5     ;
x2_26.l = 1.5     ;
x2_27.l = 1.5     ;
x2_28.l = 1.5     ;
x2_29.l = 1.5     ;
x2_30.l = 1.5     ;
x2_31.l = 1.5     ;
x2_32.l = 1.5     ;
x2_33.l = 1.5     ;
x2_34.l = 1.5     ;
x2_35.l = 1.5     ;
x2_36.l = 1.5     ;
x2_37.l = 1.5     ;
x2_38.l = 1.5     ;
x2_39.l = 1.5     ;
x2_40.l = 1.5     ;
x2_41.l = 1.5     ;
x2_42.l = 1.5     ;
x2_43.l = 1.5     ;
x2_44.l = 1.5     ;
x2_45.l = 1.5     ;
x2_46.l = 1.5     ;
x2_47.l = 1.5     ;
x2_48.l = 1.5     ;
x2_49.l = 1.5     ;
x2_50.l = 1.09905 ;

Model hvycrash /all/ ;

Solve hvycrash  using nlp minimazing obj ;



display  x1_0.l ; display  x2_0.l ; display  x3_0.l ;
display  x1_1.l ; display  x2_1.l ; display  x3_1.l ;
display  x1_2.l ; display  x2_2.l ; display  x3_2.l ;
display  x1_3.l ; display  x2_3.l ; display  x3_3.l ;
display  x1_4.l ; display  x2_4.l ; display  x3_4.l ;
display  x1_5.l ; display  x2_5.l ; display  x3_5.l ;
display  x1_6.l ; display  x2_6.l ; display  x3_6.l ;
display  x1_7.l ; display  x2_7.l ; display  x3_7.l ;
display  x1_8.l ; display  x2_8.l ; display  x3_8.l ;
display  x1_9.l ; display  x2_9.l ; display  x3_9.l ;
display x1_10.l ; display x2_10.l ; display x3_10.l ;
display x1_11.l ; display x2_11.l ; display x3_11.l ;
display x1_12.l ; display x2_12.l ; display x3_12.l ;
display x1_13.l ; display x2_13.l ; display x3_13.l ;
display x1_14.l ; display x2_14.l ; display x3_14.l ;
display x1_15.l ; display x2_15.l ; display x3_15.l ;
display x1_16.l ; display x2_16.l ; display x3_16.l ;
display x1_17.l ; display x2_17.l ; display x3_17.l ;
display x1_18.l ; display x2_18.l ; display x3_18.l ;
display x1_19.l ; display x2_19.l ; display x3_19.l ;
display x1_20.l ; display x2_20.l ; display x3_20.l ;
display x1_21.l ; display x2_21.l ; display x3_21.l ;
display x1_22.l ; display x2_22.l ; display x3_22.l ;
display x1_23.l ; display x2_23.l ; display x3_23.l ;
display x1_24.l ; display x2_24.l ; display x3_24.l ;
display x1_25.l ; display x2_25.l ; display x3_25.l ;
display x1_26.l ; display x2_26.l ; display x3_26.l ;
display x1_27.l ; display x2_27.l ; display x3_27.l ;
display x1_28.l ; display x2_28.l ; display x3_28.l ;
display x1_29.l ; display x2_29.l ; display x3_29.l ;
display x1_30.l ; display x2_30.l ; display x3_30.l ;
display x1_31.l ; display x2_31.l ; display x3_31.l ;
display x1_32.l ; display x2_32.l ; display x3_32.l ;
display x1_33.l ; display x2_33.l ; display x3_33.l ;
display x1_34.l ; display x2_34.l ; display x3_34.l ;
display x1_35.l ; display x2_35.l ; display x3_35.l ;
display x1_36.l ; display x2_36.l ; display x3_36.l ;
display x1_37.l ; display x2_37.l ; display x3_37.l ;
display x1_38.l ; display x2_38.l ; display x3_38.l ;
display x1_39.l ; display x2_39.l ; display x3_39.l ;
display x1_40.l ; display x2_40.l ; display x3_40.l ;
display x1_41.l ; display x2_41.l ; display x3_41.l ;
display x1_42.l ; display x2_42.l ; display x3_42.l ;
display x1_43.l ; display x2_43.l ; display x3_43.l ;
display x1_44.l ; display x2_44.l ; display x3_44.l ;
display x1_45.l ; display x2_45.l ; display x3_45.l ;
display x1_46.l ; display x2_46.l ; display x3_46.l ;
display x1_47.l ; display x2_47.l ; display x3_47.l ;
display x1_48.l ; display x2_48.l ; display x3_48.l ;
display x1_49.l ; display x2_49.l ; display x3_49.l ;
display x1_50.l ; display x2_50.l ; display x3_50.l ;
display    u0.l ; display    u1.l ; display    u2.l ;
display    u3.l ; display    u4.l ; display    u5.l ;
display    u6.l ; display    u7.l ; display    u8.l ;
display    u9.l ; display   u10.l ; display   u11.l ;
display   u12.l ; display   u13.l ; display   u14.l ;
display   u15.l ; display   u16.l ; display   u17.l ;
display   u18.l ; display   u19.l ; display   u20.l ;
display   u21.l ; display   u22.l ; display   u23.l ;
display   u24.l ; display   u25.l ; display   u26.l ;
display   u27.l ; display   u28.l ; display   u29.l ;
display   u30.l ; display   u31.l ; display   u32.l ;
display   u33.l ; display   u34.l ; display   u35.l ;
display   u36.l ; display   u37.l ; display   u38.l ;
display   u39.l ; display   u40.l ; display   u41.l ;
display   u42.l ; display   u43.l ; display   u44.l ;
display   u45.l ; display   u46.l ; display   u47.l ;
display   u48.l ; display   u49.l ; display   u50.l ; display obj.l ;
