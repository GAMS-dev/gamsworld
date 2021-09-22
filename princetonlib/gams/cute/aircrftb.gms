*  NLP written by GAMS Convert at 10/06/06 11:14:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11       11        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         19       19        0        0        0        0        0        0
*  FX      3        3        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         55       31       24        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18
          ,objvar;

Positive Variables  x18;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - (8.39*x13*x14 - 0.727*x12*x13 - 684.4*x14*x15 + 63.5*x14*x12) + x1
      =E= 0;

e2..  - (0.949*x11*x13 + 0.173*x11*x15) + x2 =E= 0;

e3..  - (-0.716*x11*x12 - 1.578*x11*x14 + 1.132*x14*x12) + x3 =E= 0;

e4.. x11*x15 + x4 =E= 0;

e5..  - x11*x14 + x5 =E= 0;

e6..    x6 + 3.933*x11 - 0.107*x12 - 0.126*x13 + 9.99*x15 + 45.83*x17
      + 7.64*x18 =E= 0;

e7..    x7 + 0.987*x12 + 22.95*x14 + 28.37*x16 =E= 0;

e8..    x8 - 0.002*x11 + 0.235*x13 - 5.67*x15 + 0.921*x17 + 6.51*x18 =E= 0;

e9..    x9 - x12 + x14 + 0.168*x16 =E= 0;

e10..    x10 + x13 + 0.196*x15 + 0.0071*x17 =E= 0;

e11..  - (sqr(x1 + x6) + sqr(x2 + x7) + sqr(x3 + x8) + sqr(x4 + x9) + sqr(x5 + 
      x10)) + objvar =E= 0;

* set non default bounds

x16.fx = -0.05; 
x17.fx = 0.1; 
x18.fx = 0; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
