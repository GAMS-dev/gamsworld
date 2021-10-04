*  NLP written by GAMS Convert at 07/02/05 18:32:31
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         18       18        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      1        1        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         56       22       34        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Negative Variables  x1,x3,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18;


e1..  - 0.487157283637153*x2/x1 + x4 =E= 0;

e2..  - 0.34361140625*x2 + x5 =E= 0;

e3..  - 0.00694444444444444*(7.88*x2 - 0.07878*x2/x1) + x6 =E= 0;

e4.. 144*x7*x6 - 58.84866*x3*x2 =E= 0;

e5..  - 2.0372460496614*x7 + x8 =E= 0;

e6..  - 0.0589268024397802*x7/exp(0.35*log(x8)) + x9 =E= 0;

e7..  - 0.40867125*x3*x2 + x10 =E= 0;

e8..  - 7.36144578313253e-5*sqr(x7)*(x4/x6*sqrt(1/x8) + 0.1*x5/x6) + x11 =E= 0;

e9..  - 0.0732*sqrt(x9) + x12 =E= 0;

e10..    x13 =E= 0.99;

e11.. x4*(1 - x13)/(x4 + x5) + x14 =E= 1;

e12.. log(1 - x15) + 4.16666666666667*x14*x9*(x4 + x5)/x10 =E= 0;

e13..  - 7.2*x15*x10 + x16 =E= 0;

e14..  - 6.76105093775776e-6*x11*x10 + x17 =E= 0;

e15..  - 13.9275766016713*sqrt(x17) + x18 =E= 4;

e16..  - 0.0114648324284722*x2/x1 + x19 =E= 0;

e17..  - 0.281022225355218*x2 + x20 =E= 0;

e18..  - x18 - x19 - x20 + objvar =E= 0;

* set non default bounds

x1.up = 0.044; 
x2.lo = 13.13; x2.up = 24; 
x3.up = 600; 
x4.lo = 1E-5; 
x5.lo = 1E-5; 
x6.lo = 1E-5; 
x8.lo = 1E-5; 
x9.lo = 1E-7; 
x10.lo = 1E-7; 
x15.up = 0.9999; 
x16.fx = 6000; 
x17.lo = 1E-7; 

* set non default levels

x1.l = 0.044; 
x2.l = 18; 
x3.l = 144; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
