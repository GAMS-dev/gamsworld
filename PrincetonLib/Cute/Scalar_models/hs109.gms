*  NLP written by GAMS Convert at 10/06/06 11:33:45
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        7        4        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         10       10        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         45        9       36        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,objvar;

Positive Variables  x1,x2;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - x3 + x4 =G= -0.55;

e2..    x3 - x4 =G= -0.55;

e3.. (-sqr(x1)) - sqr(x8) =G= -2250000;

e4.. (-sqr(x2)) - sqr(x9) =G= -2250000;

e5.. x5*x6*sin((-0.25) - x3) + x5*x7*sin((-0.25) - x4) + 0.494807918509046*sqr(
     x5) - 50.176*x1 =E= -20070.4;

e6.. x5*x6*sin((-0.25) + x3) + x6*x7*sin((-0.25) + x3 - x4) + 0.494807918509046
     *sqr(x6) - 50.176*x2 =E= -20070.4;

e7.. x5*x7*sin((-0.25) + x4) + x6*x7*sin((-0.25) - x3 + x4) + 0.494807918509046
     *sqr(x7) =E= -44244.143104;

e8.. x5*x6*cos((-0.25) - x3) + x5*x7*cos((-0.25) - x4) - 1.93782484342129*sqr(
     x5) + 0.0377975808*sqr(x5) + 50.176*x8 =E= 10035.2;

e9.. x5*x6*cos((-0.25) + x3) + x6*x7*cos((-0.25) + x3 - x4) - 1.93782484342129*
     sqr(x6) + 0.0377975808*sqr(x6) + 50.176*x9 =E= 10035.2;

e10.. x5*x7*cos((-0.25) + x4) + x6*x7*cos((-0.25) - x3 + x4) - 1.93782484342129
      *sqr(x7) + 0.0377975808*sqr(x7) =E= -1150.937088;

e11..  - (1e-6*POWER(x1,3) + 3*x1 + 5.22074e-7*POWER(x2,3) + 2*x2) + objvar
       =E= 0;

* set non default bounds

x3.lo = -0.55; x3.up = 0.55; 
x4.lo = -0.55; x4.up = 0.55; 
x5.lo = 196; x5.up = 252; 
x6.lo = 196; x6.up = 252; 
x7.lo = 196; x7.up = 252; 
x8.lo = -400; x8.up = 800; 
x9.lo = -400; x9.up = 800; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
