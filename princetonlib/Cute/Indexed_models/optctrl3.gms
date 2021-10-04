*
***************************
* SET UP THE INITIAL DATA *
***************************
*   Problem :
*   *********
*   An optimal control problem
*   Source:
*   B. Murtagh and M. Saunders,
*   Mathematical Programming studies 16, pp 84-117,
*   (example 5.11)
*   This problem has been modified 18 Dec 92 by Todd Plantenga as follows.
*   To eliminate the active bound constraints on U1 to U9,
*   a penalty term is added to the objective:
*
*       mu*||u(i) - bound||
*
*   By trial and error, a value of mu was found to give good
*   agreement between augmented solution points and real ones,
*   while maintaining the same workload on LANCELOT.
*
*   New quantities are labelled with the string "TDP".
*
*   Solutions for:    case of T=10    case of T=40
*     mu = 1E2         545.7324         719.4766
*     mu = 1E3         549.5660        1347.958
*     mu = 1E4         549.9565        1889.521
*     mu = 1E5                         2030.612
*     mu = 1E6                         2048.003
*     mu = 1E7                         2049.788
*     mu = 1E8                         2049.967
*     mu = infinity    549.999986      2049.977124
*   SIF input: Nick Gould, June 1990 and T. Plantenga December 1992.
*   classification QQR2-AN-V-V
*   useful parameters
*IE T                   10             $ n = 32
*IE T                   100            $ n = 302
*IE T                   400            $ n = 1202
*   Least square problems are bounded below by zero
*   Solution
*LO SOLTN               549.999986  (T=10)

Parameter      t;      t = 40;
Parameter    tm1;    tm1 = -1 + (40);
Parameter tdp_mu; tdp_mu = 1000000.0;
Parameter    tp1;    tp1 = 1 + (39);

Variable x0, y0, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7, y7,
         x8, y8, x9, y9, x10, y10, x11, y11, x12, y12, x13, y13, x14, y14,
         x15, y15, x16, y16, x17, y17, x18, y18, x19, y19, x20, y20, x21,
         y21, x22, y22, x23, y23, x24, y24, x25, y25, x26, y26, x27, y27,
         x28, y28, x29, y29, x30, y30, x31, y31, x32, y32, x33, y33, x34,
         y34, x35, y35, x36, y36, x37, y37, x38, y38, x39, y39, x40, y40,
         u0, u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11, u12, u13, u14,
         u15, u16, u17, u18, u19, u20, u21, u22, u23, u24, u25, u26, u27,
         u28, u29, u30, u31, u32, u33, u34, u35, u36, u37, u38, u39,obj;

Equation  b0,  c0,  b1,  c1,  b2,  c2,  b3,  c3,  b4,  c4,  b5,
          c5,  b6,  c6,  b7,  c7,  b8,  c8,  b9,  c9, b10, c10,
         b11, c11, b12, c12, b13, c13, b14, c14, b15, c15, b16,
         c16, b17, c17, b18, c18, b19, c19, b20, c20, b21, c21,
         b22, c22, b23, c23, b24, c24, b25, c25, b26, c26, b27,
         c27, b28, c28, b29, c29, b30, c30, b31, c31, b32, c32,
         b33, c33, b34, c34, b35, c35, b36, c36, b37, c37, b38,
         c38, b39, c39, obj_bnd , Def_obj ;

 b0..  x1 - x0 - 0.2*y0  =e=  0;
 c0..  0.01*y0 * y0 + y1 - y0 + 0.0040*x0 - 0.2*u0  =e=  0;
 b1..  x2 - x1 - 0.2*y1  =e=  0;
 c1..  0.01*y1 * y1 + y2 - y1 + 0.0040*x1 - 0.2*u1  =e=  0;
 b2..  x3 - x2 - 0.2*y2  =e=  0;
 c2..  0.01*y2 * y2 + y3 - y2 + 0.0040*x2 - 0.2*u2  =e=  0;
 b3..  x4 - x3 - 0.2*y3  =e=  0;
 c3..  0.01*y3 * y3 + y4 - y3 + 0.0040*x3 - 0.2*u3  =e=  0;
 b4..  x5 - x4 - 0.2*y4  =e=  0;
 c4..  0.01*y4 * y4 + y5 - y4 + 0.0040*x4 - 0.2*u4  =e=  0;
 b5..  x6 - x5 - 0.2*y5  =e=  0;
 c5..  0.01*y5 * y5 + y6 - y5 + 0.0040*x5 - 0.2*u5  =e=  0;
 b6..  x7 - x6 - 0.2*y6  =e=  0;
 c6..  0.01*y6 * y6 + y7 - y6 + 0.0040*x6 - 0.2*u6  =e=  0;
 b7..  x8 - x7 - 0.2*y7  =e=  0;
 c7..  0.01*y7 * y7 + y8 - y7 + 0.0040*x7 - 0.2*u7  =e=  0;
 b8..  x9 - x8 - 0.2*y8  =e=  0;
 c8..  0.01*y8 * y8 + y9 - y8 + 0.0040*x8 - 0.2*u8  =e=  0;
 b9..  x10 - x9 - 0.2*y9  =e=  0;
 c9..  0.01*y9 * y9 + y10 - y9 + 0.0040*x9 - 0.2*u9  =e=  0;
b10..  x11 - x10 - 0.2*y10  =e=  0;
c10..  0.01*y10 * y10 + y11 - y10 + 0.0040*x10 - 0.2*u10  =e=  0;
b11..  x12 - x11 - 0.2*y11  =e=  0;
c11..  0.01*y11 * y11 + y12 - y11 + 0.0040*x11 - 0.2*u11  =e=  0;
b12..  x13 - x12 - 0.2*y12  =e=  0;
c12..  0.01*y12 * y12 + y13 - y12 + 0.0040*x12 - 0.2*u12  =e=  0;
b13..  x14 - x13 - 0.2*y13  =e=  0;
c13..  0.01*y13 * y13 + y14 - y13 + 0.0040*x13 - 0.2*u13  =e=  0;
b14..  x15 - x14 - 0.2*y14  =e=  0;
c14..  0.01*y14 * y14 + y15 - y14 + 0.0040*x14 - 0.2*u14  =e=  0;
b15..  x16 - x15 - 0.2*y15  =e=  0;
c15..  0.01*y15 * y15 + y16 - y15 + 0.0040*x15 - 0.2*u15  =e=  0;
b16..  x17 - x16 - 0.2*y16  =e=  0;
c16..  0.01*y16 * y16 + y17 - y16 + 0.0040*x16 - 0.2*u16  =e=  0;
b17..  x18 - x17 - 0.2*y17  =e=  0;
c17..  0.01*y17 * y17 + y18 - y17 + 0.0040*x17 - 0.2*u17  =e=  0;
b18..  x19 - x18 - 0.2*y18  =e=  0;
c18..  0.01*y18 * y18 + y19 - y18 + 0.0040*x18 - 0.2*u18  =e=  0;
b19..  x20 - x19 - 0.2*y19  =e=  0;
c19..  0.01*y19 * y19 + y20 - y19 + 0.0040*x19 - 0.2*u19  =e=  0;
b20..  x21 - x20 - 0.2*y20  =e=  0;
c20..  0.01*y20 * y20 + y21 - y20 + 0.0040*x20 - 0.2*u20  =e=  0;
b21..  x22 - x21 - 0.2*y21  =e=  0;
c21..  0.01*y21 * y21 + y22 - y21 + 0.0040*x21 - 0.2*u21  =e=  0;
b22..  x23 - x22 - 0.2*y22  =e=  0;
c22..  0.01*y22 * y22 + y23 - y22 + 0.0040*x22 - 0.2*u22  =e=  0;
b23..  x24 - x23 - 0.2*y23  =e=  0;
c23..  0.01*y23 * y23 + y24 - y23 + 0.0040*x23 - 0.2*u23  =e=  0;
b24..  x25 - x24 - 0.2*y24  =e=  0;
c24..  0.01*y24 * y24 + y25 - y24 + 0.0040*x24 - 0.2*u24  =e=  0;
b25..  x26 - x25 - 0.2*y25  =e=  0;
c25..  0.01*y25 * y25 + y26 - y25 + 0.0040*x25 - 0.2*u25  =e=  0;
b26..  x27 - x26 - 0.2*y26  =e=  0;
c26..  0.01*y26 * y26 + y27 - y26 + 0.0040*x26 - 0.2*u26  =e=  0;
b27..  x28 - x27 - 0.2*y27  =e=  0;
c27..  0.01*y27 * y27 + y28 - y27 + 0.0040*x27 - 0.2*u27  =e=  0;
b28..  x29 - x28 - 0.2*y28  =e=  0;
c28..  0.01*y28 * y28 + y29 - y28 + 0.0040*x28 - 0.2*u28  =e=  0;
b29..  x30 - x29 - 0.2*y29  =e=  0;
c29..  0.01*y29 * y29 + y30 - y29 + 0.0040*x29 - 0.2*u29  =e=  0;
b30..  x31 - x30 - 0.2*y30  =e=  0;
c30..  0.01*y30 * y30 + y31 - y30 + 0.0040*x30 - 0.2*u30  =e=  0;
b31..  x32 - x31 - 0.2*y31  =e=  0;
c31..  0.01*y31 * y31 + y32 - y31 + 0.0040*x31 - 0.2*u31  =e=  0;
b32..  x33 - x32 - 0.2*y32  =e=  0;
c32..  0.01*y32 * y32 + y33 - y32 + 0.0040*x32 - 0.2*u32  =e=  0;
b33..  x34 - x33 - 0.2*y33  =e=  0;
c33..  0.01*y33 * y33 + y34 - y33 + 0.0040*x33 - 0.2*u33  =e=  0;
b34..  x35 - x34 - 0.2*y34  =e=  0;
c34..  0.01*y34 * y34 + y35 - y34 + 0.0040*x34 - 0.2*u34  =e=  0;
b35..  x36 - x35 - 0.2*y35  =e=  0;
c35..  0.01*y35 * y35 + y36 - y35 + 0.0040*x35 - 0.2*u35  =e=  0;
b36..  x37 - x36 - 0.2*y36  =e=  0;
c36..  0.01*y36 * y36 + y37 - y36 + 0.0040*x36 - 0.2*u36  =e=  0;
b37..  x38 - x37 - 0.2*y37  =e=  0;
c37..  0.01*y37 * y37 + y38 - y37 + 0.0040*x37 - 0.2*u37  =e=  0;
b38..  x39 - x38 - 0.2*y38  =e=  0;
c38..  0.01*y38 * y38 + y39 - y38 + 0.0040*x38 - 0.2*u38  =e=  0;
b39..  x40 - x39 - 0.2*y39  =e=  0;
c39..  0.01*y39 * y39 + y40 - y39 + 0.0040*x39 - 0.2*u39  =e=  0;
obj_bnd..  0.0 =l= 0.5*x0 * x0 + 0.5* x1 *  x1 + 0.5* x2 *  x2 + 0.5* x3*  x3+
                   0.5*x4 * x4 + 0.5* x5 *  x5 + 0.5* x6 *  x6 + 0.5* x7 * x7+
                   0.5*x8 * x8 + 0.5* x9 *  x9 + 0.5*x10 * x10 + 0.5*x11 *x11+
                   0.5*x12*x12 + 0.5*x13 * x13 + 0.5*x14 * x14 + 0.5*x15 *x15+
                   0.5*x16*x16 + 0.5*x17 * x17 + 0.5*x18 * x18 + 0.5*x19 *x19+
                   0.5*x20*x20 + 0.5*x21 * x21 + 0.5*x22 * x22 + 0.5*x23 *x23+
                   0.5*x24*x24 + 0.5*x25 * x25 + 0.5*x26 * x26 + 0.5*x27 *x27+
                   0.5*x28*x28 + 0.5*x29 * x29 + 0.5*x30 * x30 + 0.5*x31 *x31+
                   0.5*x32*x32 + 0.5*x33 * x33 + 0.5*x34 * x34 + 0.5*x35 *x35+
                   0.5*x36*x36 + 0.5*x37 * x37 + 0.5*x38 * x38 + 0.5*x39 *x39+
                   0.5*x40 * x40 +
         1000000.0*( u1-0.2) * ( u1-0.2) + 1000000.0*( u2-0.2) * ( u2-0.2) +
         1000000.0*( u3-0.2) * ( u3-0.2) + 1000000.0*( u4-0.2) * ( u4-0.2) +
         1000000.0*( u5-0.2) * ( u5-0.2) + 1000000.0*( u6-0.2) * ( u6-0.2) +
         1000000.0*( u7-0.2) * ( u7-0.2) + 1000000.0*( u8-0.2) * ( u8-0.2) +
         1000000.0*( u9-0.2) * ( u9-0.2) + 1000000.0*(u10-0.2) * (u10-0.2) +
         1000000.0*(u11-0.2) * (u11-0.2) + 1000000.0*(u12-0.2) * (u12-0.2) +
         1000000.0*(u13-0.2) * (u13-0.2) + 1000000.0*(u14-0.2) * (u14-0.2) +
         1000000.0*(u15-0.2) * (u15-0.2) + 1000000.0*(u16-0.2) * (u16-0.2) +
         1000000.0*(u17-0.2) * (u17-0.2) + 1000000.0*(u18-0.2) * (u18-0.2) +
         1000000.0*(u19-0.2) * (u19-0.2) + 1000000.0*(u20-0.2) * (u20-0.2) +
         1000000.0*(u21-0.2) * (u21-0.2) + 1000000.0*(u22-0.2) * (u22-0.2) +
         1000000.0*(u23-0.2) * (u23-0.2) + 1000000.0*(u24-0.2) * (u24-0.2) +
         1000000.0*(u25-0.2) * (u25-0.2) + 1000000.0*(u26-0.2) * (u26-0.2) +
         1000000.0*(u27-0.2) * (u27-0.2) + 1000000.0*(u28-0.2) * (u28-0.2) +
         1000000.0*(u29-0.2) * (u29-0.2) + 1000000.0*(u30-0.2) * (u30-0.2) +
         1000000.0*(u31-0.2) * (u31-0.2) + 1000000.0*(u32-0.2) * (u32-0.2) +
         1000000.0*(u33-0.2) * (u33-0.2) + 1000000.0*(u34-0.2) * (u34-0.2) +
         1000000.0*(u35-0.2) * (u35-0.2) + 1000000.0*(u36-0.2) * (u36-0.2) +
         1000000.0*(u37-0.2) * (u37-0.2) + 1000000.0*(u38-0.2) * (u38-0.2) +
         1000000.0*(u39-0.2) * (u39-0.2);
         Def_obj..  obj =e= 0.5* x0 *  x0 + 0.5* x1 *  x1 + 0.5* x2* x2+
                            0.5* x3 *  x3 + 0.5* x4 *  x4 + 0.5* x5* x5+
                            0.5* x6 *  x6 + 0.5* x7 *  x7 + 0.5* x8* x8+
                            0.5* x9 *  x9 + 0.5*x10 * x10 + 0.5*x11*x11+
                            0.5*x12 * x12 + 0.5*x13 * x13 + 0.5*x14*x14+
                            0.5*x15 * x15 + 0.5*x16 * x16 + 0.5*x17*x17+
                            0.5*x18 * x18 + 0.5*x19 * x19 + 0.5*x20*x20+
                            0.5*x21 * x21 + 0.5*x22 * x22 + 0.5*x23*x23+
                            0.5*x24 * x24 + 0.5*x25 * x25 + 0.5*x26*x26+
                            0.5*x27 * x27 + 0.5*x28 * x28 + 0.5*x29*x29+
                            0.5*x30 * x30 + 0.5*x31 * x31 + 0.5*x32*x32+
                            0.5*x33 * x33 + 0.5*x34 * x34 + 0.5*x35*x35+
                            0.5*x36 * x36 + 0.5*x37 * x37 + 0.5*x38*x38+
                            0.5*x39 * x39 + 0.5*x40 * x40 +
         1000000.0*( u1-0.2) * ( u1-0.2) + 1000000.0*( u2-0.2) * ( u2-0.2) +
         1000000.0*( u3-0.2) * ( u3-0.2) + 1000000.0*( u4-0.2) * ( u4-0.2) +
         1000000.0*( u5-0.2) * ( u5-0.2) + 1000000.0*( u6-0.2) * ( u6-0.2) +
         1000000.0*( u7-0.2) * ( u7-0.2) + 1000000.0*( u8-0.2) * ( u8-0.2) +
         1000000.0*( u9-0.2) * ( u9-0.2) + 1000000.0*(u10-0.2) * (u10-0.2) +
         1000000.0*(u11-0.2) * (u11-0.2) + 1000000.0*(u12-0.2) * (u12-0.2) +
         1000000.0*(u13-0.2) * (u13-0.2) + 1000000.0*(u14-0.2) * (u14-0.2) +
         1000000.0*(u15-0.2) * (u15-0.2) + 1000000.0*(u16-0.2) * (u16-0.2) +
         1000000.0*(u17-0.2) * (u17-0.2) + 1000000.0*(u18-0.2) * (u18-0.2) +
         1000000.0*(u19-0.2) * (u19-0.2) + 1000000.0*(u20-0.2) * (u20-0.2) +
         1000000.0*(u21-0.2) * (u21-0.2) + 1000000.0*(u22-0.2) * (u22-0.2) +
         1000000.0*(u23-0.2) * (u23-0.2) + 1000000.0*(u24-0.2) * (u24-0.2) +
         1000000.0*(u25-0.2) * (u25-0.2) + 1000000.0*(u26-0.2) * (u26-0.2) +
         1000000.0*(u27-0.2) * (u27-0.2) + 1000000.0*(u28-0.2) * (u28-0.2) +
         1000000.0*(u29-0.2) * (u29-0.2) + 1000000.0*(u30-0.2) * (u30-0.2) +
         1000000.0*(u31-0.2) * (u31-0.2) + 1000000.0*(u32-0.2) * (u32-0.2) +
         1000000.0*(u33-0.2) * (u33-0.2) + 1000000.0*(u34-0.2) * (u34-0.2) +
         1000000.0*(u35-0.2) * (u35-0.2) + 1000000.0*(u36-0.2) * (u36- 0.2) +
         1000000.0*(u37-0.2) * (u37-0.2) + 1000000.0*(u38-0.2) * (u38-0.2) +
         1000000.0*(u39-0.2) * (u39-0.2);

 y1.l = -1.0 ;  y2.l = -1.0 ;  y3.l = -1.0 ;  y4.l = -1.0 ;
 y5.l = -1.0 ;  y6.l = -1.0 ;  y7.l = -1.0 ;  y8.l = -1.0 ;
 y9.l = -1.0 ; y10.l = -1.0 ; y11.l = -1.0 ; y12.l = -1.0 ;
y13.l = -1.0 ; y14.l = -1.0 ; y15.l = -1.0 ; y16.l = -1.0 ;
y17.l = -1.0 ; y18.l = -1.0 ; y19.l = -1.0 ; y20.l = -1.0 ;
y21.l = -1.0 ; y22.l = -1.0 ; y23.l = -1.0 ; y24.l = -1.0 ;
y25.l = -1.0 ; y26.l = -1.0 ; y27.l = -1.0 ; y28.l = -1.0 ;
y29.l = -1.0 ; y30.l = -1.0 ; y31.l = -1.0 ; y32.l = -1.0 ;
y33.l = -1.0 ; y34.l = -1.0 ; y35.l = -1.0 ; y36.l = -1.0 ;
y37.l = -1.0 ; y38.l = -1.0 ; y39.l = -1.0 ;

 x0.lo = 10.0 ;   x0.lo = 10.0;
 y0.lo =  0.0 ;   y0.lo = 0.0;
y40.lo =  0.0 ;  y40.lo = 0.0;

Model optctrl3 /all/ ;

Solve optctrl3  using nlp minimazing obj;

display  x0.l; display  y0.l; display  x1.l; display  y1.l;
display  x2.l; display  y2.l; display  x3.l; display  y3.l;
display  x4.l; display  y4.l; display  x5.l; display  y5.l;
display  x6.l; display  y6.l; display  x7.l; display  y7.l;
display  x8.l; display  y8.l; display  x9.l; display  y9.l;
display x10.l; display y10.l; display x11.l; display y11.l;
display x12.l; display y12.l; display x13.l; display y13.l;
display x14.l; display y14.l; display x15.l; display y15.l;
display x16.l; display y16.l; display x17.l; display y17.l;
display x18.l; display y18.l; display x19.l; display y19.l;
display x20.l; display y20.l; display x21.l; display y21.l;
display x22.l; display y22.l; display x23.l; display y23.l;
display x24.l; display y24.l; display x25.l; display y25.l;
display x26.l; display y26.l; display x27.l; display y27.l;
display x28.l; display y28.l; display x29.l; display y29.l;
display x30.l; display y30.l; display x31.l; display y31.l;
display x32.l; display y32.l; display x33.l; display y33.l;
display x34.l; display y34.l; display x35.l; display y35.l;
display x36.l; display y36.l; display x37.l; display y37.l;
display x38.l; display y38.l; display x39.l; display y39.l;
display x40.l; display y40.l; display  u0.l; display  u1.l;
display  u2.l; display  u3.l; display  u4.l; display  u5.l;
display  u6.l; display  u7.l; display  u8.l; display  u9.l;
display u10.l; display u11.l; display u12.l; display u13.l;
display u14.l; display u15.l; display u16.l; display u17.l;
display u18.l; display u19.l; display u20.l; display u21.l;
display u22.l; display u23.l; display u24.l; display u25.l;
display u26.l; display u27.l; display u28.l; display u29.l;
display u30.l; display u31.l; display u32.l; display u33.l;
display u34.l; display u35.l; display u36.l; display u37.l;
display u38.l; display u39.l; display obj.l;
