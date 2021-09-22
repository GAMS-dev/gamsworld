*  NLP written by GAMS Convert at 07/02/05 18:32:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        2        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         16        1       15        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x1;

Equations  e1,e2,e3;


e1.. (-326669.5104 + 7390.68412*x2 - 27.8986976*x3 + 16643.076*x4 + 30988.146*
     x5)*x1 =G= 0;

e2..  - (-326669.5104 + 7390.68412*x2 - 27.8986976*x3 + 16643.076*x4 + 
     30988.146*x5)*x1 =G= -277200;

e3..  - (8720288.849 - 150512.5253*x2 + 156.6950325*x3 - 476470.3222*x4 - 
     729482.8271*x5)*x1 + objvar =E= 24345;

* set non default bounds

x2.lo = 1.2; x2.up = 2.4; 
x3.lo = 20; x3.up = 60; 
x4.lo = 9; x4.up = 9.3; 
x5.lo = 6.5; x5.up = 7; 

* set non default levels

x1.l = 2.52; 
x2.l = 2; 
x3.l = 37.5; 
x4.l = 9.25; 
x5.l = 6.8; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
