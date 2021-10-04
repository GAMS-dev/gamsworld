*  NLP written by GAMS Convert at 07/27/06 09:26:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         22        8        7        7        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         42       31       11        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22;


e1..    x4 =G= 0;

e2..    x5 =G= 0;

e3..    x6 =G= 85;

e4..    x7 =G= 90;

e5..    x8 =G= 3;

e6..    x9 =G= 0.01;

e7..    x10 =G= 145;

e8..    x4 =L= 5000;

e9..    x5 =L= 2000;

e10..    x6 =L= 93;

e11..    x7 =L= 95;

e12..    x8 =L= 12;

e13..    x9 =L= 4;

e14..    x10 =L= 162;

e15..    x1 - 1.22*x4 + x5 =E= 0;

e16..  - (x2 + x5)/x1 + x8 =E= 0;

e17..  - 0.01*(112 + 13.167*x8 - 0.6667*sqr(x8))*x1 + x4 =E= 0;

e18..  - (1.098*x8 - 0.038*sqr(x8)) - 0.325*x6 + x7 =E= 57.425;

e19..  - 3*x7 + x10 =E= -133;

e20..    x9 + 0.222*x10 =E= 35.82;

e21..  - 98000*x3/(x4*x9 + 1000*x3) + x6 =E= 0;

e22.. 0.063*x4*x7 - 5.04*x1 - 0.035*x2 - 10*x3 - 3.36*x5 + objvar =E= 0;

* set non default bounds

x1.lo = 1E-5; x1.up = 2000; 
x2.lo = 1E-5; x2.up = 16000; 
x3.lo = 1E-5; x3.up = 120; 

* set non default levels

x1.l = 1745; 
x2.l = 12000; 
x3.l = 110; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
