*  NLP written by GAMS Convert at 10/06/06 11:33:43
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        1        0        6        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         36        1       35        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Positive Variables  x1;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1..  - (2931.1506*x1*x2 - 145421.402*x1 - 40.427932*x1*x3 + 5106.192*x1*x4 + 
     15711.36*x1*x5) =L= 0;

e2.. 2931.1506*x1*x2 - 145421.402*x1 - 40.427932*x1*x3 + 5106.192*x1*x4 + 
     15711.36*x1*x5 =L= 294000;

e3..  - (4360.53352*x1*x2 - 155011.1084*x1 + 12.9492344*x1*x3 + 10236.884*x1*x4
      + 13176.786*x1*x5) =L= 0;

e4.. 4360.53352*x1*x2 - 155011.1084*x1 + 12.9492344*x1*x3 + 10236.884*x1*x4 + 
     13176.786*x1*x5 =L= 294000;

e5..  - (7390.68412*x1*x2 - 326669.5104*x1 - 27.8986976*x1*x3 + 16643.076*x1*x4
      + 30988.146*x1*x5) =L= 0;

e6.. 7390.68412*x1*x2 - 326669.5104*x1 - 27.8986976*x1*x3 + 16643.076*x1*x4 + 
     30988.146*x1*x5 =L= 277200;

e7..  - (8720288.849*x1 - 150512.5253*x1*x2 + 156.6950325*x1*x3 - 476470.3222*
     x1*x4 - 729482.8271*x1*x5) + objvar =E= 24345;

* set non default bounds

x1.up = 1000; 
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
