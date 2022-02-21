*  NLP written by GAMS Convert at 10/06/06 11:14:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31       31        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31        1       30        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30;

Equations  e1;


e1..  - ((-1 + 0.01*x16)*(-1 + 0.01*x16) + (-1 + 0.007143*x17)*(-1 + 0.007143*
     x17) + (-1 + 0.008333*x18)*(-1 + 0.008333*x18) + (-1 + 0.05*x19)*(-1 + 
     0.05*x19) + (-1 + 0.05*x20)*(-1 + 0.05*x20) + (-1 + 0.005*x21)*(-1 + 0.005
     *x21) + (-1 + 0.005556*x22)*(-1 + 0.005556*x22) + (-1 + 0.05*x23)*(-1 + 
     0.05*x23) + (-1 + 0.001667*x24)*(-1 + 0.001667*x24) + (-1 + 0.025*x25)*(-1
      + 0.025*x25) + (-1 + 0.02*x26)*(-1 + 0.02*x26) + (-1 + 0.033333*x27)*(-1
      + 0.033333*x27) + (-1 + 0.014286*x28)*(-1 + 0.014286*x28) + (-1 + 
     0.006667*x29)*(-1 + 0.006667*x29) + (-1 + 0.05*x30)*(-1 + 0.05*x30) + (-1
      + 0.4*x1 + 0.4*x2 + 0.4*x3 + 0.4*x4 + 0.4*x5)*(-1 + 0.4*x1 + 0.4*x2 + 0.4
     *x3 + 0.4*x4 + 0.4*x5) + (-1 + 0.4*x6 + 0.4*x7 + 0.4*x8 + 0.4*x9 + 0.4*x10
     )*(-1 + 0.4*x6 + 0.4*x7 + 0.4*x8 + 0.4*x9 + 0.4*x10) + (-1 + 0.4*x11 + 0.4
     *x12 + 0.4*x13 + 0.4*x14 + 0.4*x15)*(-1 + 0.4*x11 + 0.4*x12 + 0.4*x13 + 
     0.4*x14 + 0.4*x15) + 10000*(-1 + 0.263736263736264*x6 + 0.439560439560439*
     x7 + 0.461538461538462*x8 + 0.197802197802198*x9 + 0.351648351648352*x10
      + 0.021978021978022*x11 + 0.043956043956044*x13 + 0.0010989010989011*x26
      + 0.0010989010989011*x29)*(-1 + 0.263736263736264*x6 + 0.439560439560439*
     x7 + 0.461538461538462*x8 + 0.197802197802198*x9 + 0.351648351648352*x10
      + 0.021978021978022*x11 + 0.043956043956044*x13 + 0.0010989010989011*x26
      + 0.0010989010989011*x29) + 10000*(-1 + 0.114285714285714*x11 + 
     0.342857142857143*x12 + 0.228571428571429*x13 + 0.00571428571428571*x26 + 
     0.00571428571428571*x27 + 0.00571428571428571*x29)*(-1 + 0.114285714285714
     *x11 + 0.342857142857143*x12 + 0.228571428571429*x13 + 0.00571428571428571
     *x26 + 0.00571428571428571*x27 + 0.00571428571428571*x29) + 10000*(-1 + 
     0.10443864229765*x1 + 0.25065274151436*x2 + 0.0626631853785901*x3 + 
     0.18798955613577*x4 + 0.29242819843342*x5 + 0.2088772845953*x7 + 
     0.219321148825065*x8 + 0.0939947780678851*x9 + 0.16710182767624*x10 + 
     0.02088772845953*x13 + 0.000522193211488251*x24 + 0.000522193211488251*x29
     )*(-1 + 0.10443864229765*x1 + 0.25065274151436*x2 + 0.0626631853785901*x3
      + 0.18798955613577*x4 + 0.29242819843342*x5 + 0.2088772845953*x7 + 
     0.219321148825065*x8 + 0.0939947780678851*x9 + 0.16710182767624*x10 + 
     0.02088772845953*x13 + 0.000522193211488251*x24 + 0.000522193211488251*x29
     ) + 10000*(-1 + 0.00222222222222222*x16 + 0.00222222222222222*x21 + 
     0.00222222222222222*x24)*(-1 + 0.00222222222222222*x16 + 
     0.00222222222222222*x21 + 0.00222222222222222*x24) + 10000*(-1 + 
     0.769230769230769*x1 + 0.00384615384615385*x17 + 0.00384615384615385*x22)*
     (-1 + 0.769230769230769*x1 + 0.00384615384615385*x17 + 0.00384615384615385
     *x22) + 10000*(-1 + 1.5*x14 + 0.25*x15 + 0.0125*x30)*(-1 + 1.5*x14 + 0.25*
     x15 + 0.0125*x30) + 10000*(-1 + 0.716417910447761*x2 + 0.597014925373134*
     x7 + 0.00149253731343284*x18 + 0.00149253731343284*x23 + 
     0.00149253731343284*x26 + 0.00149253731343284*x27 + 0.00149253731343284*
     x28 + 0.00149253731343284*x29 + 0.00149253731343284*x30)*(-1 + 
     0.716417910447761*x2 + 0.597014925373134*x7 + 0.00149253731343284*x18 + 
     0.00149253731343284*x23 + 0.00149253731343284*x26 + 0.00149253731343284*
     x27 + 0.00149253731343284*x28 + 0.00149253731343284*x29 + 
     0.00149253731343284*x30) + 10000*(-1 + 0.137931034482759*x1 + 
     0.331034482758621*x2 + 0.248275862068966*x4 + 0.386206896551724*x5 + 
     0.275862068965517*x7 + 0.124137931034483*x9 + 0.220689655172414*x10 + 
     0.000689655172413793*x16 + 0.000689655172413793*x17 + 0.000689655172413793
     *x18 + 0.000689655172413793*x19 + 0.000689655172413793*x20)*(-1 + 
     0.137931034482759*x1 + 0.331034482758621*x2 + 0.248275862068966*x4 + 
     0.386206896551724*x5 + 0.275862068965517*x7 + 0.124137931034483*x9 + 
     0.220689655172414*x10 + 0.000689655172413793*x16 + 0.000689655172413793*
     x17 + 0.000689655172413793*x18 + 0.000689655172413793*x19 + 
     0.000689655172413793*x20) + 10000*(-1 + 0.484848484848485*x2 + 
     0.565656565656566*x5 + 0.404040404040404*x7 + 0.323232323232323*x10 + 
     0.0202020202020202*x15 + 0.00101010101010101*x18 + 0.00101010101010101*x20
      + 0.00101010101010101*x23 + 0.00101010101010101*x25)*(-1 + 
     0.484848484848485*x2 + 0.565656565656566*x5 + 0.404040404040404*x7 + 
     0.323232323232323*x10 + 0.0202020202020202*x15 + 0.00101010101010101*x18
      + 0.00101010101010101*x20 + 0.00101010101010101*x23 + 0.00101010101010101
     *x25) + 2*(0.2*x2 - 0.8*x1 + 0.2*x3 + 0.2*x4 + 0.2*x5)*(0.2*x2 - 0.8*x1 + 
     0.2*x3 + 0.2*x4 + 0.2*x5) + 2*(0.2*x1 - 0.8*x2 + 0.2*x3 + 0.2*x4 + 0.2*x5)
     *(0.2*x1 - 0.8*x2 + 0.2*x3 + 0.2*x4 + 0.2*x5) + 2*(0.2*x1 + 0.2*x2 - 0.8*
     x3 + 0.2*x4 + 0.2*x5)*(0.2*x1 + 0.2*x2 - 0.8*x3 + 0.2*x4 + 0.2*x5) + 2*(
     0.2*x1 + 0.2*x2 + 0.2*x3 - 0.8*x4 + 0.2*x5)*(0.2*x1 + 0.2*x2 + 0.2*x3 - 
     0.8*x4 + 0.2*x5) + 2*(0.2*x1 + 0.2*x2 + 0.2*x3 + 0.2*x4 - 0.8*x5)*(0.2*x1
      + 0.2*x2 + 0.2*x3 + 0.2*x4 - 0.8*x5) + 2*(0.2*x7 - 0.8*x6 + 0.2*x8 + 0.2*
     x9 + 0.2*x10)*(0.2*x7 - 0.8*x6 + 0.2*x8 + 0.2*x9 + 0.2*x10) + 2*(0.2*x6 - 
     0.8*x7 + 0.2*x8 + 0.2*x9 + 0.2*x10)*(0.2*x6 - 0.8*x7 + 0.2*x8 + 0.2*x9 + 
     0.2*x10) + 2*(0.2*x6 + 0.2*x7 - 0.8*x8 + 0.2*x9 + 0.2*x10)*(0.2*x6 + 0.2*
     x7 - 0.8*x8 + 0.2*x9 + 0.2*x10) + 2*(0.2*x6 + 0.2*x7 + 0.2*x8 - 0.8*x9 + 
     0.2*x10)*(0.2*x6 + 0.2*x7 + 0.2*x8 - 0.8*x9 + 0.2*x10) + 2*(0.2*x6 + 0.2*
     x7 + 0.2*x8 + 0.2*x9 - 0.8*x10)*(0.2*x6 + 0.2*x7 + 0.2*x8 + 0.2*x9 - 0.8*
     x10) + 2*(0.2*x12 - 0.8*x11 + 0.2*x13 + 0.2*x14 + 0.2*x15)*(0.2*x12 - 0.8*
     x11 + 0.2*x13 + 0.2*x14 + 0.2*x15) + 2*(0.2*x11 - 0.8*x12 + 0.2*x13 + 0.2*
     x14 + 0.2*x15)*(0.2*x11 - 0.8*x12 + 0.2*x13 + 0.2*x14 + 0.2*x15) + 2*(0.2*
     x11 + 0.2*x12 - 0.8*x13 + 0.2*x14 + 0.2*x15)*(0.2*x11 + 0.2*x12 - 0.8*x13
      + 0.2*x14 + 0.2*x15) + 2*(0.2*x11 + 0.2*x12 + 0.2*x13 - 0.8*x14 + 0.2*x15
     )*(0.2*x11 + 0.2*x12 + 0.2*x13 - 0.8*x14 + 0.2*x15) + 2*(0.2*x11 + 0.2*x12
      + 0.2*x13 + 0.2*x14 - 0.8*x15)*(0.2*x11 + 0.2*x12 + 0.2*x13 + 0.2*x14 - 
     0.8*x15)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.5; 
x2.l = 0.5; 
x3.l = 0.5; 
x4.l = 0.5; 
x5.l = 0.5; 
x6.l = 0.5; 
x7.l = 0.5; 
x8.l = 0.5; 
x9.l = 0.5; 
x10.l = 0.5; 
x11.l = 0.5; 
x12.l = 0.5; 
x13.l = 0.5; 
x14.l = 0.5; 
x15.l = 0.5; 
x16.l = 100; 
x17.l = 140; 
x18.l = 120; 
x19.l = 20; 
x20.l = 20; 
x21.l = 200; 
x22.l = 180; 
x23.l = 20; 
x24.l = 600; 
x25.l = 40; 
x26.l = 50; 
x27.l = 30; 
x28.l = 70; 
x29.l = 150; 
x30.l = 20; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
