*  NLP written by GAMS Convert at 09/04/06 18:40:45
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         34       24        0       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         49       49        0        0        0        0        0        0
*  FX     20       20        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        242      242        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,objvar;

Positive Variables  x1,x29,x30,x31,x32,x33,x34,x35,x37,x38,x39,x40,x41,x42,x43
          ,x44,x45,x46,x47,x48;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34;


e1..  - 21.3839570296805*x1 + 16.9004563123204*x2 + 4.48350071736011*x5 + x15
      - 21.3839570296805*x29 - 21.3839570296805*x30 =E= 0;

e2..    16.9004563123204*x1 - 33.3743257665262*x2 + 5.05127039450422*x3
      + 5.67150635208711*x4 + 5.75109270761445*x5 + x16 + 33.3743257665262*x29
      - 33.3743257665262*x31 - 33.3743257665262*x32 - 33.3743257665262*x33
      =E= 0.217;

e3..    5.05127039450422*x2 - 10.8981978341347*x3 + 5.84692743963047*x4 + x17
      + 10.8981978341347*x31 - 10.8981978341347*x34 =E= 0.942;

e4..    5.67150635208711*x2 + 5.84692743963047*x3 - 41.8456846705837*x4
      + 23.7473284255521*x5 + 4.78194338179036*x7 + 1.79797907152361*x9 + x18
      + 41.8456846705837*x32 + 41.8456846705837*x34 - 41.8456846705837*x35
      - 41.8456846705837*x36 - 41.8456846705837*x37 =E= 0.478;

e5..    4.48350071736011*x1 + 5.75109270761445*x2 + 23.7473284255521*x4
      - 37.9498609029828*x5 + 3.96793905245615*x6 + x19 + 37.9498609029828*x30
      + 37.9498609029828*x33 + 37.9498609029828*x35 - 37.9498609029828*x38
      =E= 0.076;

e6..    3.96793905245615*x5 - 20.5811069359647*x6 + 5.02765208647562*x11
      + 3.90915132324772*x12 + 7.67636447378522*x13 + x20
      + 20.5811069359647*x38 - 20.5811069359647*x39 - 20.5811069359647*x40
      - 20.5811069359647*x41 =E= 0.112;

e7..    4.78194338179036*x4 - 19.5490059482647*x7 + 5.67697984672154*x8
      + 9.09008271975275*x9 + x21 + 19.5490059482647*x36 - 19.5490059482647*x42
      - 19.5490059482647*x43 =E= 0;

e8..    5.67697984672154*x7 - 5.67697984672154*x8 + x22 + 5.67697984672154*x42
      =E= 0;

e9..    1.79797907152361*x4 + 9.09008271975275*x7 - 26.4208797275493*x9
      + 11.8343195266272*x10 + 3.69849840964568*x14 + x23
      + 26.4208797275493*x37 + 26.4208797275493*x43 - 26.4208797275493*x44
      - 26.4208797275493*x45 =E= 0.295;

e10..    11.8343195266272*x9 - 17.0407546804774*x10 + 5.20643515385016*x11
       + x24 + 17.0407546804774*x44 - 17.0407546804774*x46 =E= 0.09;

e11..    5.02765208647562*x6 + 5.20643515385016*x10 - 10.2340872403258*x11
       + x25 + 10.2340872403258*x39 + 10.2340872403258*x46 =E= 0.035;

e12..    3.90915132324772*x6 - 8.91215312432837*x12 + 5.00300180108065*x13
       + x26 + 8.91215312432837*x40 - 8.91215312432837*x47 =E= 0.061;

e13..    7.67636447378522*x6 + 5.00300180108065*x12 - 15.5527643554359*x13
       + 2.87339808057008*x14 + x27 + 15.5527643554359*x41
       + 15.5527643554359*x47 - 15.5527643554359*x48 =E= 0.135;

e14..    3.69849840964568*x9 + 2.87339808057008*x13 - 6.57189649021577*x14
       + x28 + 6.57189649021577*x45 + 6.57189649021577*x48 =E= 0.149;

e15..    5.67150635208711*x2 + 5.84692743963047*x3 - 41.8456846705837*x4
       + 23.7473284255521*x5 + 4.78194338179036*x7 + 1.79797907152361*x9
       + 41.8456846705837*x32 + 41.8456846705837*x34 - 41.8456846705837*x35
       - 41.8456846705837*x36 - 41.8456846705837*x37 =E= 0.478;

e16..    4.48350071736011*x1 + 5.75109270761445*x2 + 23.7473284255521*x4
       - 37.9498609029828*x5 + 3.96793905245615*x6 + 37.9498609029828*x30
       + 37.9498609029828*x33 + 37.9498609029828*x35 - 37.9498609029828*x38
       =E= 0.076;

e17..    4.78194338179036*x4 - 19.5490059482647*x7 + 5.67697984672154*x8
       + 9.09008271975275*x9 + 19.5490059482647*x36 - 19.5490059482647*x42
       - 19.5490059482647*x43 =E= 0;

e18..    1.79797907152361*x4 + 9.09008271975275*x7 - 26.4208797275493*x9
       + 11.8343195266272*x10 + 3.69849840964568*x14 + 26.4208797275493*x37
       + 26.4208797275493*x43 - 26.4208797275493*x44 - 26.4208797275493*x45
       =E= 0.295;

e19..    11.8343195266272*x9 - 17.0407546804774*x10 + 5.20643515385016*x11
       + 17.0407546804774*x44 - 17.0407546804774*x46 =E= 0.09;

e20..    5.02765208647562*x6 + 5.20643515385016*x10 - 10.2340872403258*x11
       + 10.2340872403258*x39 + 10.2340872403258*x46 =E= 0.035;

e21..    3.90915132324772*x6 - 8.91215312432837*x12 + 5.00300180108065*x13
       + 8.91215312432837*x40 - 8.91215312432837*x47 =E= 0.061;

e22..    7.67636447378522*x6 + 5.00300180108065*x12 - 15.5527643554359*x13
       + 2.87339808057008*x14 + 15.5527643554359*x41 + 15.5527643554359*x47
       - 15.5527643554359*x48 =E= 0.135;

e23..    3.69849840964568*x9 + 2.87339808057008*x13 - 6.57189649021577*x14
       + 6.57189649021577*x45 + 6.57189649021577*x48 =E= 0.149;

e24..  - 21.3839570296805*x1 + 16.9004563123204*x2 + 4.48350071736011*x5
       - 21.3839570296805*x29 - 21.3839570296805*x30 =L= 0;

e25..    16.9004563123204*x1 - 33.3743257665262*x2 + 5.05127039450422*x3
       + 5.67150635208711*x4 + 5.75109270761445*x5 + 33.3743257665262*x29
       - 33.3743257665262*x31 - 33.3743257665262*x32 - 33.3743257665262*x33
       =L= 0.217;

e26..    5.05127039450422*x2 - 10.8981978341347*x3 + 5.84692743963047*x4
       + 10.8981978341347*x31 - 10.8981978341347*x34 =L= 0.942;

e27..    3.96793905245615*x5 - 20.5811069359647*x6 + 5.02765208647562*x11
       + 3.90915132324772*x12 + 7.67636447378522*x13 + 20.5811069359647*x38
       - 20.5811069359647*x39 - 20.5811069359647*x40 - 20.5811069359647*x41
       =L= 0.112;

e28..    5.67697984672154*x7 - 5.67697984672154*x8 + 5.67697984672154*x42
       =L= 0;

e29..    21.3839570296805*x1 - 16.9004563123204*x2 - 4.48350071736011*x5
       + 21.3839570296805*x29 + 21.3839570296805*x30 =L= 2.5564;

e30..  - 16.9004563123204*x1 + 33.3743257665262*x2 - 5.05127039450422*x3
       - 5.67150635208711*x4 - 5.75109270761445*x5 - 33.3743257665262*x29
       + 33.3743257665262*x31 + 33.3743257665262*x32 + 33.3743257665262*x33
       =L= 0.223;

e31..  - 5.05127039450422*x2 + 10.8981978341347*x3 - 5.84692743963047*x4
       - 10.8981978341347*x31 + 10.8981978341347*x34 =L= -0.942;

e32..  - 3.96793905245615*x5 + 20.5811069359647*x6 - 5.02765208647562*x11
       - 3.90915132324772*x12 - 7.67636447378522*x13 - 20.5811069359647*x38
       + 20.5811069359647*x39 + 20.5811069359647*x40 + 20.5811069359647*x41
       =L= -0.112;

e33..  - 5.67697984672154*x7 + 5.67697984672154*x8 - 5.67697984672154*x42
       =L= 0;

e34..  - 8.88178419700125E-16*x1 + 1.11022302462516E-15*x4
       + 3.5527136788005E-15*x5 - 8.88178419700125E-16*x6
       + 4.44089209850063E-16*x9 - 8.88178419700125E-16*x11
       - 8.88178419700125E-16*x13 - 4.44089209850063E-16*x14 + objvar
       =E= 1.271;

* set non default bounds

x1.fx = 0; 
x29.fx = 0; 
x30.fx = 0; 
x31.fx = 0; 
x32.fx = 0; 
x33.fx = 0; 
x34.fx = 0; 
x35.fx = 0; 
x36.lo = -0.261799166666667; x36.up = 0.261799166666667; 
x37.fx = 0; 
x38.fx = 0; 
x39.fx = 0; 
x40.fx = 0; 
x41.fx = 0; 
x42.fx = 0; 
x43.fx = 0; 
x44.fx = 0; 
x45.fx = 0; 
x46.fx = 0; 
x47.fx = 0; 
x48.fx = 0; 

* set non default levels

x36.l = -0.174532777777778; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;