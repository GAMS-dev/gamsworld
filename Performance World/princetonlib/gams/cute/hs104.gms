*  NLP written by GAMS Convert at 10/06/06 11:33:44
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        5        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         26        4       22        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - 0.0588*x5*x7 - 0.1*x1 =G= -1;

e2..  - 0.0588*x6*x8 - 0.1*x1 - 0.1*x2 =G= -1;

e3.. (-4*x3/x5) - 2/(exp(0.71*log(x3))*x5) - 0.0588*x7/exp(1.3*log(x3)) =G= -1;

e4.. (-4*x4/x6) - 2/(exp(0.71*log(x4))*x6) - 0.0588*x8/exp(1.3*log(x4)) =G= -1;

e5.. 0.4*exp(0.67*log(x1))*exp(-0.67*log(x7)) + 0.4*exp(0.67*log(x2))*exp(-0.67
     *log(x8)) - x1 - x2 =G= -9.9;

e6.. 0.4*exp(0.67*log(x1))*exp(-0.67*log(x7)) + 0.4*exp(0.67*log(x2))*exp(-0.67
     *log(x8)) - x1 - x2 =L= -5.8;

e7..  - (0.4*exp(0.67*log(x1))*exp(-0.67*log(x7)) + 0.4*exp(0.67*log(x2))*exp(-
     0.67*log(x8)) - x1 - x2) + objvar =E= 10;

* set non default bounds

x1.lo = 0.1; x1.up = 10; 
x2.lo = 0.1; x2.up = 10; 
x3.lo = 0.1; x3.up = 10; 
x4.lo = 0.1; x4.up = 10; 
x5.lo = 0.1; x5.up = 10; 
x6.lo = 0.1; x6.up = 10; 
x7.lo = 0.1; x7.up = 10; 
x8.lo = 0.1; x8.up = 10; 

* set non default levels

x2.l = 3; 
x3.l = 0.4; 
x4.l = 0.2; 
x5.l = 6; 
x6.l = 6; 
x7.l = 1; 
x8.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
