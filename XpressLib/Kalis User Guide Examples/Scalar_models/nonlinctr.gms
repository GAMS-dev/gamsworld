*  DNLP written by GAMS Convert at 10/17/08 03:01:05
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          6        4        1        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         14        4       10        0
*
*  Solve m using DNLP maximizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x3;

Equations  e1,e2,e3,e4,e5,e6;


e1..  - log(x5) + x4 =E= 0;

e2..  - abs(x6) + x5 =E= 0;

e3.. x4*x5 - sqr(x6) =L= 0;

e4.. x1/x2 + x6 =E= 0;

e5.. x1*x2*x3*x3*x3 =G= 150;

e6..    objvar =E= 1;

* set non default bounds

x1.up = 5; 
x2.lo = 1E-6; x2.up = 5; 
x3.up = 5; 
x4.lo = -10; x4.up = 10; 
x5.lo = 1E-6; x5.up = 10; 
x6.lo = -10; x6.up = 10; 

* set non default levels

x2.l = 1E-6; 
x5.l = 1E-6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP maximizing objvar;
