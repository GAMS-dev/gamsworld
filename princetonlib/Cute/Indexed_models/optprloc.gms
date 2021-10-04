*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   Optimal positioning of a new product in a multiattribute space.
*   Consider a market of M existing products, a set of N consumers
*   in a multiattribute (dim K) space.
*   Source: Test problem 4 in M. Duran & I.E. Grossmann,
*   "An outer approximation algorithm for a class of mixed integer nonlinear
*    programs", Mathematical Programming 36, pp. 307-339, 1986.
*   SIF input: S. Leyffer, October 1997
*   classification QQR2-AN-30-30
* ... ideal points Z(I,K)
* ... attribute weights W(I,K)
* ... existing products DEL(J,K)
* ... R(I) = min ( sum_K W(I,K) * ( DEL(J,K) - Z(I,K) )**2 (see AUXIL.SIF)
* ... ellipsoid defining closeness to ideal consumer point
* ... definition of attribute space (linear constraints)
* ... additional bounds (one problem in Branch-and-Bound tree)
*XL OPTPRLOC  Y22       1.0
*XU OPTPRLOC  Y4        0.0
*XU OPTPRLOC  Y23       0.0
$offdigit;
 Parameter       k   ;      k  = 5                    ;
 Parameter       m   ;      m  = 10                   ;
 Parameter       n   ;      n  = 25                   ;
 Parameter       h   ;      h  = 1000.0               ;
 Parameter    z1_1   ;   z1_1  = 2.26                 ;
 Parameter    z1_2   ;   z1_2  = 5.15                 ;
 Parameter    z1_3   ;   z1_3  = 4.03                 ;
 Parameter    z1_4   ;   z1_4  = 1.74                 ;
 Parameter    z1_5   ;   z1_5  = 4.74                 ;
 Parameter    z2_1   ;   z2_1  = 5.51                 ;
 Parameter    z2_2   ;   z2_2  = 9.01                 ;
 Parameter    z2_3   ;   z2_3  = 3.84                 ;
 Parameter    z2_4   ;   z2_4  = 1.47                 ;
 Parameter    z2_5   ;   z2_5  = 9.92                 ;
 Parameter    z3_1   ;   z3_1  = 4.06                 ;
 Parameter    z3_2   ;   z3_2  = 1.8                  ;
 Parameter    z3_3   ;   z3_3  = 0.71                 ;
 Parameter    z3_4   ;   z3_4  = 9.09                 ;
 Parameter    z3_5   ;   z3_5  = 8.13                 ;
 Parameter    z4_1   ;   z4_1  = 6.3                  ;
 Parameter    z4_2   ;   z4_2  = 0.11                 ;
 Parameter    z4_3   ;   z4_3  = 4.08                 ;
 Parameter    z4_4   ;   z4_4  = 7.29                 ;
 Parameter    z4_5   ;   z4_5  = 4.24                 ;
 Parameter    z5_1   ;   z5_1  = 2.81                 ;
 Parameter    z5_2   ;   z5_2  = 1.65                 ;
 Parameter    z5_3   ;   z5_3  = 8.08                 ;
 Parameter    z5_4   ;   z5_4  = 3.99                 ;
 Parameter    z5_5   ;   z5_5  = 3.51                 ;
 Parameter    z6_1   ;   z6_1  = 4.29                 ;
 Parameter    z6_2   ;   z6_2  = 9.49                 ;
 Parameter    z6_3   ;   z6_3  = 2.24                 ;
 Parameter    z6_4   ;   z6_4  = 9.78                 ;
 Parameter    z6_5   ;   z6_5  = 1.52                 ;
 Parameter    z7_1   ;   z7_1  = 9.76                 ;
 Parameter    z7_2   ;   z7_2  = 3.64                 ;
 Parameter    z7_3   ;   z7_3  = 6.62                 ;
 Parameter    z7_4   ;   z7_4  = 3.66                 ;
 Parameter    z7_5   ;   z7_5  = 9.08                 ;
 Parameter    z8_1   ;   z8_1  = 1.37                 ;
 Parameter    z8_2   ;   z8_2  = 6.99                 ;
 Parameter    z8_3   ;   z8_3  = 7.19                 ;
 Parameter    z8_4   ;   z8_4  = 3.03                 ;
 Parameter    z8_5   ;   z8_5  = 3.39                 ;
 Parameter    z9_1   ;   z9_1  = 8.89                 ;
 Parameter    z9_2   ;   z9_2  = 8.29                 ;
 Parameter    z9_3   ;   z9_3  = 6.05                 ;
 Parameter    z9_4   ;   z9_4  = 7.48                 ;
 Parameter    z9_5   ;   z9_5  = 4.09                 ;
 Parameter   z10_1   ;  z10_1  = 7.42                 ;
 Parameter   z10_2   ;  z10_2  = 4.6                  ;
 Parameter   z10_3   ;  z10_3  = 0.3                  ;
 Parameter   z10_4   ;  z10_4  = 0.97                 ;
 Parameter   z10_5   ;  z10_5  = 8.77                 ;
 Parameter   z11_1   ;  z11_1  = 1.54                 ;
 Parameter   z11_2   ;  z11_2  = 7.06                 ;
 Parameter   z11_3   ;  z11_3  = 0.01                 ;
 Parameter   z11_4   ;  z11_4  = 1.23                 ;
 Parameter   z11_5   ;  z11_5  = 3.11                 ;
 Parameter   z12_1   ;  z12_1  = 7.74                 ;
 Parameter   z12_2   ;  z12_2  = 4.4                  ;
 Parameter   z12_3   ;  z12_3  = 7.93                 ;
 Parameter   z12_4   ;  z12_4  = 5.95                 ;
 Parameter   z12_5   ;  z12_5  = 4.88                 ;
 Parameter   z13_1   ;  z13_1  = 9.94                 ;
 Parameter   z13_2   ;  z13_2  = 5.21                 ;
 Parameter   z13_3   ;  z13_3  = 8.58                 ;
 Parameter   z13_4   ;  z13_4  = 0.13                 ;
 Parameter   z13_5   ;  z13_5  = 4.57                 ;
 Parameter   z14_1   ;  z14_1  = 9.54                 ;
 Parameter   z14_2   ;  z14_2  = 1.57                 ;
 Parameter   z14_3   ;  z14_3  = 9.66                 ;
 Parameter   z14_4   ;  z14_4  = 5.24                 ;
 Parameter   z14_5   ;  z14_5  = 7.9                  ;
 Parameter   z15_1   ;  z15_1  = 7.46                 ;
 Parameter   z15_2   ;  z15_2  = 8.81                 ;
 Parameter   z15_3   ;  z15_3  = 1.67                 ;
 Parameter   z15_4   ;  z15_4  = 6.47                 ;
 Parameter   z15_5   ;  z15_5  = 1.81                 ;
 Parameter   z16_1   ;  z16_1  = 0.56                 ;
 Parameter   z16_2   ;  z16_2  = 8.1                  ;
 Parameter   z16_3   ;  z16_3  = 0.19                 ;
 Parameter   z16_4   ;  z16_4  = 6.11                 ;
 Parameter   z16_5   ;  z16_5  = 6.4                  ;
 Parameter   z17_1   ;  z17_1  = 3.86                 ;
 Parameter   z17_2   ;  z17_2  = 6.68                 ;
 Parameter   z17_3   ;  z17_3  = 6.42                 ;
 Parameter   z17_4   ;  z17_4  = 7.29                 ;
 Parameter   z17_5   ;  z17_5  = 4.66                 ;
 Parameter   z18_1   ;  z18_1  = 2.98                 ;
 Parameter   z18_2   ;  z18_2  = 2.98                 ;
 Parameter   z18_3   ;  z18_3  = 3.03                 ;
 Parameter   z18_4   ;  z18_4  = 0.02                 ;
 Parameter   z18_5   ;  z18_5  = 0.67                 ;
 Parameter   z19_1   ;  z19_1  = 3.61                 ;
 Parameter   z19_2   ;  z19_2  = 7.62                 ;
 Parameter   z19_3   ;  z19_3  = 1.79                 ;
 Parameter   z19_4   ;  z19_4  = 7.8                  ;
 Parameter   z19_5   ;  z19_5  = 9.81                 ;
 Parameter   z20_1   ;  z20_1  = 5.68                 ;
 Parameter   z20_2   ;  z20_2  = 4.24                 ;
 Parameter   z20_3   ;  z20_3  = 4.17                 ;
 Parameter   z20_4   ;  z20_4  = 6.75                 ;
 Parameter   z20_5   ;  z20_5  = 1.08                 ;
 Parameter   z21_1   ;  z21_1  = 5.48                 ;
 Parameter   z21_2   ;  z21_2  = 3.74                 ;
 Parameter   z21_3   ;  z21_3  = 3.34                 ;
 Parameter   z21_4   ;  z21_4  = 6.22                 ;
 Parameter   z21_5   ;  z21_5  = 7.94                 ;
 Parameter   z22_1   ;  z22_1  = 8.13                 ;
 Parameter   z22_2   ;  z22_2  = 8.72                 ;
 Parameter   z22_3   ;  z22_3  = 3.93                 ;
 Parameter   z22_4   ;  z22_4  = 8.8                  ;
 Parameter   z22_5   ;  z22_5  = 8.56                 ;
 Parameter   z23_1   ;  z23_1  = 1.37                 ;
 Parameter   z23_2   ;  z23_2  = 0.54                 ;
 Parameter   z23_3   ;  z23_3  = 1.55                 ;
 Parameter   z23_4   ;  z23_4  = 5.56                 ;
 Parameter   z23_5   ;  z23_5  = 5.85                 ;
 Parameter   z24_1   ;  z24_1  = 8.79                 ;
 Parameter   z24_2   ;  z24_2  = 5.04                 ;
 Parameter   z24_3   ;  z24_3  = 4.83                 ;
 Parameter   z24_4   ;  z24_4  = 6.94                 ;
 Parameter   z24_5   ;  z24_5  = 0.38                 ;
 Parameter   z25_1   ;  z25_1  = 2.66                 ;
 Parameter   z25_2   ;  z25_2  = 4.19                 ;
 Parameter   z25_3   ;  z25_3  = 6.49                 ;
 Parameter   z25_4   ;  z25_4  = 8.04                 ;
 Parameter   z25_5   ;  z25_5  = 1.66                 ;
 Parameter    w1_1   ;   w1_1  = 9.57                 ;
 Parameter    w1_2   ;   w1_2  = 2.74                 ;
 Parameter    w1_3   ;   w1_3  = 9.75                 ;
 Parameter    w1_4   ;   w1_4  = 3.96                 ;
 Parameter    w1_5   ;   w1_5  = 8.67                 ;
 Parameter    w2_1   ;   w2_1  = 8.38                 ;
 Parameter    w2_2   ;   w2_2  = 3.93                 ;
 Parameter    w2_3   ;   w2_3  = 5.18                 ;
 Parameter    w2_4   ;   w2_4  = 5.2                  ;
 Parameter    w2_5   ;   w2_5  = 7.82                 ;
 Parameter    w3_1   ;   w3_1  = 9.81                 ;
 Parameter    w3_2   ;   w3_2  = 0.04                 ;
 Parameter    w3_3   ;   w3_3  = 4.21                 ;
 Parameter    w3_4   ;   w3_4  = 7.38                 ;
 Parameter    w3_5   ;   w3_5  = 4.11                 ;
 Parameter    w4_1   ;   w4_1  = 7.41                 ;
 Parameter    w4_2   ;   w4_2  = 6.08                 ;
 Parameter    w4_3   ;   w4_3  = 5.46                 ;
 Parameter    w4_4   ;   w4_4  = 4.86                 ;
 Parameter    w4_5   ;   w4_5  = 1.48                 ;
 Parameter    w5_1   ;   w5_1  = 9.96                 ;
 Parameter    w5_2   ;   w5_2  = 9.13                 ;
 Parameter    w5_3   ;   w5_3  = 2.95                 ;
 Parameter    w5_4   ;   w5_4  = 8.25                 ;
 Parameter    w5_5   ;   w5_5  = 3.58                 ;
 Parameter    w6_1   ;   w6_1  = 9.39                 ;
 Parameter    w6_2   ;   w6_2  = 4.27                 ;
 Parameter    w6_3   ;   w6_3  = 5.09                 ;
 Parameter    w6_4   ;   w6_4  = 1.81                 ;
 Parameter    w6_5   ;   w6_5  = 7.58                 ;
 Parameter    w7_1   ;   w7_1  = 1.88                 ;
 Parameter    w7_2   ;   w7_2  = 7.2                  ;
 Parameter    w7_3   ;   w7_3  = 6.65                 ;
 Parameter    w7_4   ;   w7_4  = 1.74                 ;
 Parameter    w7_5   ;   w7_5  = 2.86                 ;
 Parameter    w8_1   ;   w8_1  = 4.01                 ;
 Parameter    w8_2   ;   w8_2  = 2.67                 ;
 Parameter    w8_3   ;   w8_3  = 4.86                 ;
 Parameter    w8_4   ;   w8_4  = 2.55                 ;
 Parameter    w8_5   ;   w8_5  = 6.91                 ;
 Parameter    w9_1   ;   w9_1  = 4.18                 ;
 Parameter    w9_2   ;   w9_2  = 1.92                 ;
 Parameter    w9_3   ;   w9_3  = 2.6                  ;
 Parameter    w9_4   ;   w9_4  = 7.15                 ;
 Parameter    w9_5   ;   w9_5  = 2.86                 ;
 Parameter   w10_1   ;  w10_1  = 7.81                 ;
 Parameter   w10_2   ;  w10_2  = 2.14                 ;
 Parameter   w10_3   ;  w10_3  = 9.63                 ;
 Parameter   w10_4   ;  w10_4  = 7.61                 ;
 Parameter   w10_5   ;  w10_5  = 9.17                 ;
 Parameter   w11_1   ;  w11_1  = 8.96                 ;
 Parameter   w11_2   ;  w11_2  = 3.47                 ;
 Parameter   w11_3   ;  w11_3  = 5.49                 ;
 Parameter   w11_4   ;  w11_4  = 4.73                 ;
 Parameter   w11_5   ;  w11_5  = 9.43                 ;
 Parameter   w12_1   ;  w12_1  = 9.94                 ;
 Parameter   w12_2   ;  w12_2  = 1.63                 ;
 Parameter   w12_3   ;  w12_3  = 1.23                 ;
 Parameter   w12_4   ;  w12_4  = 4.33                 ;
 Parameter   w12_5   ;  w12_5  = 7.08                 ;
 Parameter   w13_1   ;  w13_1  = 0.31                 ;
 Parameter   w13_2   ;  w13_2  = 5.0                  ;
 Parameter   w13_3   ;  w13_3  = 0.16                 ;
 Parameter   w13_4   ;  w13_4  = 2.52                 ;
 Parameter   w13_5   ;  w13_5  = 3.08                 ;
 Parameter   w14_1   ;  w14_1  = 6.02                 ;
 Parameter   w14_2   ;  w14_2  = 0.92                 ;
 Parameter   w14_3   ;  w14_3  = 7.47                 ;
 Parameter   w14_4   ;  w14_4  = 9.74                 ;
 Parameter   w14_5   ;  w14_5  = 1.76                 ;
 Parameter   w15_1   ;  w15_1  = 5.06                 ;
 Parameter   w15_2   ;  w15_2  = 4.52                 ;
 Parameter   w15_3   ;  w15_3  = 1.89                 ;
 Parameter   w15_4   ;  w15_4  = 1.22                 ;
 Parameter   w15_5   ;  w15_5  = 9.05                 ;
 Parameter   w16_1   ;  w16_1  = 5.92                 ;
 Parameter   w16_2   ;  w16_2  = 2.56                 ;
 Parameter   w16_3   ;  w16_3  = 7.74                 ;
 Parameter   w16_4   ;  w16_4  = 6.96                 ;
 Parameter   w16_5   ;  w16_5  = 5.18                 ;
 Parameter   w17_1   ;  w17_1  = 6.45                 ;
 Parameter   w17_2   ;  w17_2  = 1.52                 ;
 Parameter   w17_3   ;  w17_3  = 0.06                 ;
 Parameter   w17_4   ;  w17_4  = 5.34                 ;
 Parameter   w17_5   ;  w17_5  = 8.47                 ;
 Parameter   w18_1   ;  w18_1  = 1.04                 ;
 Parameter   w18_2   ;  w18_2  = 1.36                 ;
 Parameter   w18_3   ;  w18_3  = 5.99                 ;
 Parameter   w18_4   ;  w18_4  = 8.1                  ;
 Parameter   w18_5   ;  w18_5  = 5.22                 ;
 Parameter   w19_1   ;  w19_1  = 1.4                  ;
 Parameter   w19_2   ;  w19_2  = 1.35                 ;
 Parameter   w19_3   ;  w19_3  = 0.59                 ;
 Parameter   w19_4   ;  w19_4  = 8.58                 ;
 Parameter   w19_5   ;  w19_5  = 1.21                 ;
 Parameter   w20_1   ;  w20_1  = 6.68                 ;
 Parameter   w20_2   ;  w20_2  = 9.48                 ;
 Parameter   w20_3   ;  w20_3  = 1.6                  ;
 Parameter   w20_4   ;  w20_4  = 6.74                 ;
 Parameter   w20_5   ;  w20_5  = 8.92                 ;
 Parameter   w21_1   ;  w21_1  = 1.95                 ;
 Parameter   w21_2   ;  w21_2  = 0.46                 ;
 Parameter   w21_3   ;  w21_3  = 2.9                  ;
 Parameter   w21_4   ;  w21_4  = 1.79                 ;
 Parameter   w21_5   ;  w21_5  = 0.99                 ;
 Parameter   w22_1   ;  w22_1  = 5.18                 ;
 Parameter   w22_2   ;  w22_2  = 5.1                  ;
 Parameter   w22_3   ;  w22_3  = 8.81                 ;
 Parameter   w22_4   ;  w22_4  = 3.27                 ;
 Parameter   w22_5   ;  w22_5  = 9.63                 ;
 Parameter   w23_1   ;  w23_1  = 1.47                 ;
 Parameter   w23_2   ;  w23_2  = 5.71                 ;
 Parameter   w23_3   ;  w23_3  = 6.95                 ;
 Parameter   w23_4   ;  w23_4  = 1.42                 ;
 Parameter   w23_5   ;  w23_5  = 3.49                 ;
 Parameter   w24_1   ;  w24_1  = 5.4                  ;
 Parameter   w24_2   ;  w24_2  = 3.12                 ;
 Parameter   w24_3   ;  w24_3  = 5.37                 ;
 Parameter   w24_4   ;  w24_4  = 6.1                  ;
 Parameter   w24_5   ;  w24_5  = 3.71                 ;
 Parameter   w25_1   ;  w25_1  = 6.32                 ;
 Parameter   w25_2   ;  w25_2  = 0.81                 ;
 Parameter   w25_3   ;  w25_3  = 6.12                 ;
 Parameter   w25_4   ;  w25_4  = 6.73                 ;
 Parameter   w25_5   ;  w25_5  = 7.93                 ;
 Parameter  del1_1   ; del1_1  = 0.62                 ;
 Parameter  del1_2   ; del1_2  = 5.06                 ;
 Parameter  del1_3   ; del1_3  = 7.82                 ;
 Parameter  del1_4   ; del1_4  = 0.22                 ;
 Parameter  del1_5   ; del1_5  = 4.42                 ;
 Parameter  del2_1   ; del2_1  = 5.21                 ;
 Parameter  del2_2   ; del2_2  = 2.66                 ;
 Parameter  del2_3   ; del2_3  = 9.54                 ;
 Parameter  del2_4   ; del2_4  = 5.03                 ;
 Parameter  del2_5   ; del2_5  = 8.01                 ;
 Parameter  del3_1   ; del3_1  = 5.27                 ;
 Parameter  del3_2   ; del3_2  = 7.72                 ;
 Parameter  del3_3   ; del3_3  = 7.97                 ;
 Parameter  del3_4   ; del3_4  = 3.31                 ;
 Parameter  del3_5   ; del3_5  = 6.56                 ;
 Parameter  del4_1   ; del4_1  = 1.02                 ;
 Parameter  del4_2   ; del4_2  = 8.89                 ;
 Parameter  del4_3   ; del4_3  = 8.77                 ;
 Parameter  del4_4   ; del4_4  = 3.1                  ;
 Parameter  del4_5   ; del4_5  = 6.66                 ;
 Parameter  del5_1   ; del5_1  = 1.26                 ;
 Parameter  del5_2   ; del5_2  = 6.8                  ;
 Parameter  del5_3   ; del5_3  = 2.3                  ;
 Parameter  del5_4   ; del5_4  = 1.75                 ;
 Parameter  del5_5   ; del5_5  = 6.65                 ;
 Parameter  del6_1   ; del6_1  = 3.74                 ;
 Parameter  del6_2   ; del6_2  = 9.06                 ;
 Parameter  del6_3   ; del6_3  = 9.8                  ;
 Parameter  del6_4   ; del6_4  = 3.01                 ;
 Parameter  del6_5   ; del6_5  = 9.52                 ;
 Parameter  del7_1   ; del7_1  = 4.64                 ;
 Parameter  del7_2   ; del7_2  = 7.99                 ;
 Parameter  del7_3   ; del7_3  = 6.69                 ;
 Parameter  del7_4   ; del7_4  = 5.88                 ;
 Parameter  del7_5   ; del7_5  = 8.23                 ;
 Parameter  del8_1   ; del8_1  = 8.35                 ;
 Parameter  del8_2   ; del8_2  = 3.79                 ;
 Parameter  del8_3   ; del8_3  = 1.19                 ;
 Parameter  del8_4   ; del8_4  = 1.96                 ;
 Parameter  del8_5   ; del8_5  = 5.88                 ;
 Parameter  del9_1   ; del9_1  = 6.44                 ;
 Parameter  del9_2   ; del9_2  = 0.17                 ;
 Parameter  del9_3   ; del9_3  = 9.93                 ;
 Parameter  del9_4   ; del9_4  = 6.8                  ;
 Parameter  del9_5   ; del9_5  = 9.75                 ;
 Parameter del10_1   ;del10_1  = 6.49                 ;
 Parameter del10_2   ;del10_2  = 1.92                 ;
 Parameter del10_3   ;del10_3  = 0.05                 ;
 Parameter del10_4   ;del10_4  = 4.89                 ;
 Parameter del10_5   ;del10_5  = 6.43                 ;
 Parameter      r1   ;     r1  =  77.83985            ;
 Parameter      r2   ;     r2  = 175.971              ;
 Parameter      r3   ;     r3  = 201.8226             ;
 Parameter      r4   ;     r4  = 143.9533             ;
 Parameter      r5   ;     r5  = 154.3895             ;
 Parameter      r6   ;     r6  = 433.3177             ;
 Parameter      r7   ;     r7  = 109.0764             ;
 Parameter      r8   ;     r8  =  41.59592            ;
 Parameter      r9   ;     r9  = 144.0623             ;
 Parameter     r10   ;    r10  =  99.83416            ;
 Parameter     r11   ;    r11  = 149.1791             ;
 Parameter     r12   ;    r12  = 123.8074             ;
 Parameter     r13   ;    r13  =  27.22197            ;
 Parameter     r14   ;    r14  =  89.92683            ;
 Parameter     r15   ;    r15  = 293.0766             ;
 Parameter     r16   ;    r16  = 174.317              ;
 Parameter     r17   ;    r17  = 125.1028             ;
 Parameter     r18   ;    r18  = 222.8417             ;
 Parameter     r19   ;    r19  =  50.48593            ;
 Parameter     r20   ;    r20  = 361.1973             ;
 Parameter     r21   ;    r21  =  40.32642            ;
 Parameter     r22   ;    r22  = 161.8518             ;
 Parameter     r23   ;    r23  =  66.85827            ;
 Parameter     r24   ;    r24  = 340.5807             ;
 Parameter     r25   ;    r25  = 407.52               ;
 Parameter    rph1   ;   rph1  = (77.83985) + (1000.0);
 Parameter    rph2   ;   rph2  = (175.971)  + (1000.0);
 Parameter    rph3   ;   rph3  = (201.8226) + (1000.0);
 Parameter    rph4   ;   rph4  = (143.9533) + (1000.0);
 Parameter    rph5   ;   rph5  = (154.3895) + (1000.0);
 Parameter    rph6   ;   rph6  = (433.3177) + (1000.0);
 Parameter    rph7   ;   rph7  = (109.0764) + (1000.0);
 Parameter    rph8   ;   rph8  = (41.59592) + (1000.0);
 Parameter    rph9   ;   rph9  = (144.0623) + (1000.0);
 Parameter   rph10   ;  rph10  = (99.83416) + (1000.0);
 Parameter   rph11   ;  rph11  = (149.1791) + (1000.0);
 Parameter   rph12   ;  rph12  = (123.8074) + (1000.0);
 Parameter   rph13   ;  rph13  = (27.22197) + (1000.0);
 Parameter   rph14   ;  rph14  = (89.92683) + (1000.0);
 Parameter   rph15   ;  rph15  = (293.0766) + (1000.0);
 Parameter   rph16   ;  rph16  = (174.317)  + (1000.0);
 Parameter   rph17   ;  rph17  = (125.1028) + (1000.0);
 Parameter   rph18   ;  rph18  = (222.8417) + (1000.0);
 Parameter   rph19   ;  rph19  = (50.48593) + (1000.0);
 Parameter   rph20   ;  rph20  = (361.1973) + (1000.0);
 Parameter   rph21   ;  rph21  = (40.32642) + (1000.0);
 Parameter   rph22   ;  rph22  = (161.8518) + (1000.0);
 Parameter   rph23   ;  rph23  = (66.85827) + (1000.0);
 Parameter   rph24   ;  rph24  = (340.5807) + (1000.0);
 Parameter   rph25   ;  rph25  = (407.52)   + (1000.0);

Variable  x1 ,  x2 ,  x3 ,  x4 ,  x5 ,  y1 ,  y2 ,  y3 ,  y4 ,  y5 ,
          y6 ,  y7 ,  y8 ,  y9 , y10 , y11 , y12 , y13 , y14 , y15 ,
         y16 , y17 , y18 , y19 , y20 , y21 , y22 , y23 , y24 , y25 , obj ;

Equation  elli1 ,  elli2 ,  elli3 ,  elli4 ,  elli5, elli6, elli7,
          elli8 ,  elli9 , elli10 , elli11 , elli12,elli13,elli14,
         elli15 , elli16 , elli17 , elli18 , elli19,elli20,elli21,
         elli22 , elli23 , elli24 , elli25 ,   lin1,  lin2,  lin3,
           lin4 ,   lin5 , Def_obj ;

elli1..  0 =g= 9.57*sqr(x1 - 2.26 ) + 2.74*sqr(x2 - 5.15 ) +
               9.75*sqr(x3 - 4.03 ) + 3.96*sqr(x4 - 1.74 ) +
               8.67*sqr(x5 - 4.74 ) + 1000.0*y1 - 1077.83985;
elli2..  0 =g= 8.38*sqr(x1 - 5.51 ) + 3.93*sqr(x2 - 9.01 ) +
               5.18*sqr(x3 - 3.84 ) + 5.2 *sqr(x4 - 1.47 ) +
               7.82*sqr(x5 - 9.92 ) + 1000.0*y2 - 1175.971;
elli3..  0 =g= 9.81*sqr(x1 - 4.06 ) + 0.04*sqr(x2 - 1.8  ) +
               4.21*sqr(x3 - 0.71 ) + 7.38*sqr(x4 - 9.09 ) +
               4.11*sqr(x5 - 8.13 ) + 1000.0*y3 - 1201.8226;
elli4..  0 =g= 7.41*sqr(x1 - 6.3  ) + 6.08*sqr(x2 - 0.11 ) +
               5.46*sqr(x3 - 4.08 ) + 4.86*sqr(x4 - 7.29 ) +
               1.48*sqr(x5 - 4.24 ) + 1000.0*y4 - 1143.9533000000001;
elli5..  0 =g= 9.96*sqr(x1 - 2.81 ) + 9.13*sqr(x2 - 1.65 ) +
               2.95*sqr(x3 - 8.08 ) + 8.25*sqr(x4 - 3.99 ) +
               3.58*sqr(x5 - 3.51 ) + 1000.0*y5 - 1154.3895;
elli6..  0 =g= 9.39*sqr(x1 - 4.29 ) + 4.27*sqr(x2 - 9.49 ) +
               5.09*sqr(x3 - 2.24 ) + 1.81*sqr(x4 - 9.78 ) +
               7.58*sqr(x5 - 1.52 ) + 1000.0*y6 - 1433.3177;
elli7..  0 =g= 1.88*sqr(x1 - 9.76 ) + 7.2 *sqr(x2 - 3.64 ) +
               6.65*sqr(x3 - 6.62 ) + 1.74*sqr(x4 - 3.66 ) +
               2.86*sqr(x5 - 9.08 ) + 1000.0*y7 - 1109.0764;
elli8..  0 =g= 4.01*sqr(x1 - 1.37 ) + 2.67*sqr(x2 - 6.99 ) +
               4.86*sqr(x3 - 7.19 ) + 2.55*sqr(x4 - 3.03 ) +
               6.91*sqr(x5 - 3.39 ) + 1000.0*y8 - 1041.59592;
elli9..  0 =g= 4.18*sqr(x1 - 8.89 ) + 1.92*sqr(x2 - 8.29 ) +
               2.6 *sqr(x3 - 6.05 ) + 7.15*sqr(x4 - 7.48 ) +
               2.86*sqr(x5 - 4.09 ) + 1000.0*y9 - 1144.0623;
elli10..  0 =g= 7.81*sqr(x1 - 7.42 ) + 2.14*sqr(x2 - 4.6  ) +
                9.63*sqr(x3 - 0.3  ) + 7.61*sqr(x4 - 0.97 ) +
                9.17*sqr(x5 - 8.77 ) + 1000.0*y10 - 1099.8341599999999;
elli11..  0 =g= 8.96*sqr(x1 - 1.54 ) + 3.47*sqr(x2 - 7.06 ) +
                5.49*sqr(x3 - 0.01 ) + 4.73*sqr(x4 - 1.23 ) +
                9.43*sqr(x5 - 3.11 ) + 1000.0*y11 - 1149.1791;
elli12..  0 =g= 9.94*sqr(x1 - 7.74 ) + 1.63*sqr(x2 - 4.4  ) +
                1.23*sqr(x3 - 7.93 ) + 4.33*sqr(x4 - 5.95 ) +
                7.08*sqr(x5 - 4.88 ) + 1000.0*y12 - 1123.8074;
elli13..  0 =g= 0.31*sqr(x1 - 9.94 ) + 5.0* sqr(x2 - 5.21 ) +
                0.16*sqr(x3 - 8.58 ) + 2.52*sqr(x4 - 0.13 ) +
                3.08*sqr(x5 - 4.57 ) + 1000.0*y13 - 1027.22197;
elli14..  0 =g= 6.02*sqr(x1 - 9.54 ) + 0.92*sqr(x2 - 1.57 ) +
                7.47*sqr(x3 - 9.66 ) + 9.74*sqr(x4 - 5.24 ) +
                1.76*sqr(x5 - 7.9 ) + 1000.0*y14 - 1089.9268299999999;
elli15..  0 =g= 5.06*sqr(x1 - 7.46 ) + 4.52*sqr(x2 - 8.81 ) +
                1.89*sqr(x3 - 1.67 ) + 1.22*sqr(x4 - 6.47 ) +
                9.05*sqr(x5 - 1.81 ) + 1000.0*y15 - 1293.0765999999999;
elli16..  0 =g= 5.92*sqr(x1 - 0.56 ) + 2.56*sqr(x2 - 8.1  ) +
                7.74*sqr(x3 - 0.19 ) + 6.96*sqr(x4 - 6.11 ) +
                5.18*sqr(x5 - 6.4 ) + 1000.0*y16 - 1174.317;
elli17..  0 =g= 6.45*sqr(x1 - 3.86 ) + 1.52*sqr(x2 - 6.68 ) +
                0.06*sqr(x3 - 6.42 ) + 5.34*sqr(x4 - 7.29 ) +
                8.47*sqr(x5 - 4.66 ) + 1000.0*y17 - 1125.1028000000001;
elli18..  0 =g= 1.04*sqr(x1 - 2.98 ) + 1.36*sqr(x2 - 2.98 ) +
                5.99*sqr(x3 - 3.03 ) + 8.1* sqr(x4 - 0.02 ) +
                5.22*sqr(x5 - 0.67 ) + 1000.0*y18 - 1222.8417;
elli19..  0 =g= 1.4* sqr(x1 - 3.61 ) + 1.35*sqr(x2 - 7.62 ) +
                0.59*sqr(x3 - 1.79 ) + 8.58*sqr(x4 - 7.8  ) +
                1.21*sqr(x5 - 9.81 ) + 1000.0*y19 - 1050.48593;
elli20..  0 =g= 6.68*sqr(x1 - 5.68 ) + 9.48*sqr(x2 - 4.24 ) +
                1.6* sqr(x3 - 4.17 ) + 6.74*sqr(x4 - 6.75 ) +
                8.92*sqr(x5 - 1.08 ) + 1000.0*y20 - 1361.1973;
elli21..  0 =g= 1.95*sqr(x1 - 5.48 ) + 0.46*sqr(x2 - 3.74 ) +
                2.9* sqr(x3 - 3.34 ) + 1.79*sqr(x4 - 6.22 ) +
                0.99*sqr(x5 - 7.94 ) + 1000.0*y21 - 1040.32642;
elli22..  0 =g= 5.18*sqr(x1 - 8.13 ) + 5.1* sqr(x2 - 8.72 ) +
                8.81*sqr(x3 - 3.93 ) + 3.27*sqr(x4 - 8.8 ) +
                9.63*sqr(x5 - 8.56 ) + 1000.0*y22 - 1161.8518;
elli23..  0 =g= 1.47*sqr(x1 - 1.37 ) + 5.71*sqr(x2 - 0.54 ) +
                6.95*sqr(x3 - 1.55 ) + 1.42*sqr(x4 - 5.56 ) +
                3.49*sqr(x5 - 5.85 ) + 1000.0*y23 - 1066.85827;
elli24..  0 =g= 5.4* sqr(x1 - 8.79 ) + 3.12*sqr(x2 - 5.04 ) +
                5.37*sqr(x3 - 4.83 ) + 6.1* sqr(x4 - 6.94 ) +
                3.71*sqr(x5 - 0.38 ) + 1000.0*y24 - 1340.5807;
elli25..  0 =g= 6.32*sqr(x1 - 2.66 ) + 0.81*sqr(x2 - 4.19 ) +
                6.12*sqr(x3 - 6.49 ) + 6.73*sqr(x4 - 8.04 ) +
                7.93*sqr(x5 - 1.66 ) + 1000.0*y25 - 1407.52;
lin1..    0 =g= x1 - x2 + x3 + x4 + x5 - 10.0                 ;
lin2..    0 =g= 0.6*x1 - 0.9*x2 - 0.5*x3 + 0.1*x4 + x5 + 0.64 ;
lin3..    0 =l= x1 - x2 + x3 - x4 + x5 - 0.69                 ;
lin4..    0 =g= 0.157*x1 + 0.05*x2 - 1.5                      ;
lin5..    0 =l= 0.25*x2 + 1.05*x4 - 0.3*x5 - 4.5              ;

Def_obj.. obj=e= 0.6*sqr(x1 - 0.0 ) + 0.1*sqr(x4 - 0.0 ) - y1 - 0.2*y2 - y3 -
          0.2*y4 - 0.9*y5 - 0.9*y6 - 0.1*y7 - 0.8*y8 - y9 - 0.4*y10 -
          y11 - 0.3*y12 - 0.1*y13 - 0.3*y14 - 0.5*y15 - 0.9*y16 - 0.8*y17 -
          0.1*y18 - 0.9*y19 - y20 - y21 - y22 - 0.2*y23 - 0.7*y24 - 0.7*y25 -
          0.9*x2 - 0.5*x3 + x5;

    x1.lo = 2.0 ;   x1.up = 4.5 ;   x1.l = 2 ;
    x2.lo = 0.0 ;   x2.up = 8.0 ;   x2.l = 0 ;
    x3.lo = 3.0 ;   x3.up = 9.0 ;   x3.l = 3 ;
    x4.lo = 0.0 ;   x4.up = 5.0 ;   x4.l = 0 ;
    x5.lo = 4.0 ;   x5.up =10.0 ;   x5.l = 4 ;
    y1.lo = 0.0 ;   y1.up = 1.0 ;   y1.l = 0 ;
    y2.lo = 0.0 ;   y2.up = 1.0 ;   y2.l = 0 ;
    y3.lo = 0.0 ;   y3.up = 1.0 ;   y3.l = 0 ;
    y4.lo = 0.0 ;   y4.up = 1.0 ;   y4.l = 0 ;
    y5.lo = 0.0 ;   y5.up = 1.0 ;   y5.l = 0 ;
    y6.lo = 0.0 ;   y6.up = 1.0 ;   y6.l = 0 ;
    y7.lo = 0.0 ;   y7.up = 1.0 ;   y7.l = 0 ;
    y8.lo = 0.0 ;   y8.up = 1.0 ;   y8.l = 0 ;
    y9.lo = 0.0 ;   y9.up = 1.0 ;   y9.l = 0 ;
   y10.lo = 0.0 ;  y10.up = 1.0 ;  y10.l = 0 ;
   y11.lo = 0.0 ;  y11.up = 1.0 ;  y11.l = 0 ;
   y12.lo = 0.0 ;  y12.up = 1.0 ;  y12.l = 0 ;
   y13.lo = 0.0 ;  y13.up = 1.0 ;  y13.l = 0 ;
   y14.lo = 0.0 ;  y14.up = 1.0 ;  y14.l = 0 ;
   y15.lo = 0.0 ;  y15.up = 1.0 ;  y15.l = 0 ;
   y16.lo = 0.0 ;  y16.up = 1.0 ;  y16.l = 0 ;
   y17.lo = 0.0 ;  y17.up = 1.0 ;  y17.l = 0 ;
   y18.lo = 0.0 ;  y18.up = 1.0 ;  y18.l = 0 ;
   y19.lo = 0.0 ;  y19.up = 1.0 ;  y19.l = 0 ;
   y20.lo = 0.0 ;  y20.up = 1.0 ;  y20.l = 0 ;
   y21.lo = 0.0 ;  y21.up = 1.0 ;  y21.l = 0 ;
   y22.lo = 0.0 ;  y22.up = 1.0 ;  y22.l = 0 ;
   y23.lo = 0.0 ;  y23.up = 1.0 ;  y23.l = 0 ;
   y24.lo = 0.0 ;  y24.up = 1.0 ;  y24.l = 0 ;
   y25.lo = 0.0 ;  y25.up = 1.0 ;  y25.l = 0 ;

Model optprloc /all/ ;

Solve optprloc using nlp minimazing obj ;

display  x1.l ; display  x2.l ; display  x3.l ; display  x4.l ;
display  x5.l ; display  y1.l ; display  y2.l ; display  y3.l ;
display  y4.l ; display  y5.l ; display  y6.l ; display  y7.l ;
display  y8.l ; display  y9.l ; display y10.l ; display y11.l ;
display y12.l ; display y13.l ; display y14.l ; display y15.l ;
display y16.l ; display y17.l ; display y18.l ; display y19.l ;
display y20.l ; display y21.l ; display y22.l ; display y23.l ;
display y24.l ; display y25.l ; display obj.l ;
