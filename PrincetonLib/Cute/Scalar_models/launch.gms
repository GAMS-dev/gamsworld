*  NLP written by GAMS Convert at 10/06/06 11:33:50
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         30        7        9       14        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         27       27        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        144       80       64        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30;


e1..    2*x1 - x2 =E= 0;

e2..  - x8 + 0.6*x9 =E= 0;

e3..  - x15 + 0.7*x16 =E= 0;

e4..  - x4 + 5*x6 =E= 0;

e5..  - x11 + 5*x13 =E= 0;

e6..    x18 - x20 =E= 0;

e7..    12*x2 - x5 =L= 0;

e8..    17*x2 - x5 =G= 0;

e9..    10*x9 - x12 =L= 0;

e10..    13*x9 - x12 =G= 0;

e11..    7*x16 - x19 =L= 0;

e12..    10*x16 - x19 =G= 0;

e13..    1.2*x2 - x4 + 1.2*x5 + 1.2*x9 + 1.2*x12 + 1.2*x16 + 1.2*x19 + 1.2*x22
       =L= -24;

e14..    1.4*x2 - x4 + 1.4*x5 + 1.4*x9 + 1.4*x12 + 1.4*x16 + 1.4*x19 + 1.4*x22
       =G= -28;

e15..    0.6*x9 - x11 + 0.6*x12 + 0.6*x16 + 0.6*x19 + 0.6*x22 =L= -12;

e16..    0.75*x9 - x11 + 0.75*x12 + 0.75*x16 + 0.75*x19 + 0.75*x22 =G= -15;

e17..    0.7*x16 - x18 + 0.7*x19 + 0.7*x22 =L= -14;

e18..    0.9*x16 - x18 + 0.9*x19 + 0.9*x22 =G= -18;

e19.. x3*x22 + 20*x3 - x22 - x2 - x9 - x12 - x16 - x19 - x26 =L= 20;

e20.. x10*x22 + 20*x10 - x22 - x9 - x16 - x19 - x26 =L= 20;

e21.. x17*x22 + 20*x17 - x22 - x16 - x26 =L= 20;

e22..  - x4*x23 + 240*x5 =L= 0;

e23..  - x4*x23 + 290*x5 =G= 0;

e24..  - x11*x24 + 240*x12 =L= 0;

e25..  - x11*x24 + 290*x12 =G= 0;

e26..  - x18*x25 + 340*x19 =L= 0;

e27..  - x18*x25 + 375*x19 =G= 0;

e28..  - (-32*x4*x23*log(x3)/x5 - 32*x11*x24*log(x10)/x12 - 32*x18*x25*log(x17)
      /x19) =L= -35000;

e29.. (-32*x4*x23*log(x3)/x5) - 32*x11*x24*log(x10)/x12 - 32*x18*x25*log(x17)/
      x19 =L= 50000;

e30..  - (x26*x26 + 1e-8*(5272.77*exp(1.2781*log(x1))*exp(-0.1959*log(x2))*exp(
      2.4242*log(x3))*exp(0.38745*log(x4))*exp(0.9904*log(x5)) + 160.909*exp(-
      0.146*log(0.001*x6)) + 282.874*exp(0.648*log(0.001*x6)) + 0.64570846*exp(
      0.3322*log(x1))*exp(-1.5935*log(x3))*exp(0.2363*log(x5))*exp(0.1079*log(
      x7)) + 31.136196*exp(0.736*log(0.001*x6)) + 12.092112*exp(-0.229*log(
      0.001*x6)) + 31.136196*exp(0.736*log(0.001*x13)) + 12.092112*exp(-0.229*
      log(0.001*x13)) + 0.0002587*x6) + 1e-8*(5272.77*exp(1.2781*log(x8))*exp(-
      0.1959*log(x9))*exp(2.4242*log(x10))*exp(0.38745*log(x11))*exp(0.9904*
      log(x12)) + 160.909*exp(-0.146*log(0.001*x13)) + 282.874*exp(0.648*log(
      0.001*x13)) + 0.64570846*exp(0.3322*log(x8))*exp(-1.5935*log(x10))*exp(
      0.2363*log(x12))*exp(0.1079*log(x14)) + 0.0002587*x13) + 1e-8*(5272.77*
      exp(1.2781*log(x15))*exp(-0.1959*log(x16))*exp(2.4242*log(x17))*exp(
      0.38745*log(x18))*exp(0.9904*log(x19)) + 181.806*exp(0.539*log(0.001*x20)
      ) + 232.57*exp(0.772*log(0.001*x20)) + 0.49783215*exp(0.3322*log(x15))*
      exp(-1.5935*log(x17))*exp(0.2363*log(x19))*exp(0.1079*log(x21)) - 
      0.22424514*exp(-1.33*log(0.01*x20)) + 20.708238*exp(0.498*log(0.01*x20))
       + 0.001958*x20) + 2.55000001785e-8*exp(0.46*log(0.003*x5 + 0.003*x12 + 
      0.003*x19))) - 4.7040096E-7*x22 + objvar =E= -5.64017E-6;

* set non default bounds

x1.lo = 1E-8; x1.up = 10000; 
x2.lo = 1E-8; x2.up = 10000; 
x3.lo = 0.25; x3.up = 0.3; 
x4.lo = 1E-8; x4.up = 10000; 
x5.lo = 1E-8; x5.up = 10000; 
x6.lo = 1E-8; x6.up = 10000; 
x7.lo = 125; x7.up = 150; 
x8.lo = 1E-8; x8.up = 10000; 
x9.lo = 1E-8; x9.up = 10000; 
x10.lo = 0.24; x10.up = 0.29; 
x11.lo = 1E-8; x11.up = 10000; 
x12.lo = 1E-8; x12.up = 10000; 
x13.lo = 1E-8; x13.up = 10000; 
x14.lo = 75; x14.up = 100; 
x15.lo = 1E-8; x15.up = 10000; 
x16.lo = 1E-8; x16.up = 10000; 
x17.lo = 0.16; x17.up = 0.21; 
x18.lo = 1E-8; x18.up = 10000; 
x19.lo = 1E-8; x19.up = 10000; 
x20.lo = 1E-8; x20.up = 10000; 
x21.lo = 50; x21.up = 70; 
x22.lo = 2.5; x22.up = 4; 
x23.lo = 1E-8; x23.up = 10000; 
x24.lo = 1E-8; x24.up = 10000; 
x25.lo = 1E-8; x25.up = 10000; 

* set non default levels

x1.l = 68; 
x2.l = 136; 
x3.l = 0.29988744; 
x4.l = 3733; 
x5.l = 2177; 
x6.l = 746.6; 
x8.l = 28.2; 
x9.l = 47; 
x10.l = 0.28939109; 
x11.l = 480; 
x12.l = 566; 
x13.l = 96; 
x15.l = 11.2; 
x16.l = 16; 
x17.l = 0.20980926; 
x18.l = 129; 
x19.l = 145; 
x20.l = 129; 
x23.l = 155; 
x24.l = 314; 
x25.l = 403; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
