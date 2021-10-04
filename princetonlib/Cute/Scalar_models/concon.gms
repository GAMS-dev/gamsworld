*  DNLP written by GAMS Convert at 10/06/06 11:16:10
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         12       12        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         34       22       12        0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Negative Variables  x1,x3,x5,x7,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1.. abs(x1)*x1 - abs(x2)*x2 - 0.597053452*exp(0.8539*log(abs(x8)))*x8 =E= 0;

e2.. abs(x3)*x3 - abs(x4)*x4 - 0.597053452*exp(0.8539*log(abs(x10)))*x10 =E= 0;

e3.. abs(x4)*x4 - abs(x5)*x5 - 0.597053452*exp(0.8539*log(abs(x12)))*x12 =E= 0;

e4.. abs(x6)*x6 - abs(x7)*x7 - 0.597053452*exp(0.8539*log(abs(x14)))*x14 =E= 0;

e5..    x8 - x13 =E= 0;

e6..  - x8 + x9 =E= 0;

e7..  - x9 + x10 =E= 0;

e8..  - x10 + x12 =E= -1000;

e9..  - x11 - x12 =E= 0;

e10..    x11 + x14 =E= 0;

e11..  - x14 - x15 =E= 0;

e12..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + objvar =E= 0;

* set non default bounds

x1.up = 914.73; 
x3.up = 904.73; 
x5.up = 904.73; 
x7.up = 914.73; 
x15.up = 400; 

* set non default levels

x1.l = 914.73; 
x2.l = 965; 
x3.l = 904.73; 
x4.l = 965; 
x5.l = 904.73; 
x6.l = 965; 
x7.l = 914.73; 
x8.l = 100; 
x9.l = 1000; 
x10.l = 100; 
x11.l = 1000; 
x12.l = -100; 
x13.l = 1000; 
x14.l = -100; 
x15.l = 400; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
