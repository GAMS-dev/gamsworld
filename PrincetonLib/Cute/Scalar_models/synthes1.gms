*  NLP written by GAMS Convert at 10/06/06 11:52:29
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        4        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         23       17        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - (0.8*log(1 + x2) + 0.96*log(1 + x1 - x2)) + 0.8*x3 =L= 0;

e2..  - (log(1 + x2) + 1.2*log(1 + x1 - x2)) + x3 + 2*x6 =L= 2;

e3..    x1 - x2 =G= 0;

e4..  - x2 + 2*x4 =G= 0;

e5..  - x1 + x2 + 2*x5 =G= 0;

e6..  - x4 - x5 =G= -1;

e7..  - (-18*log(1 + x2) - 19.2*log(1 + x1 - x2) + 10*x1) + 7*x3 - 5*x4 - 6*x5
      - 8*x6 + objvar =E= 10;

* set non default bounds

x1.up = 2; 
x2.up = 2; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
