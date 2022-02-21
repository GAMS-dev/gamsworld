*  NLP written by GAMS Convert at 07/02/05 18:32:32
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         15        1       14        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          6        6        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         52       52        0        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15;


e1..    2.4*x1 - x2 =G= 0;

e2..  - 1.2*x1 + x2 =G= 0;

e3..    60*x1 - x3 =G= 0;

e4..  - 20*x1 + x3 =G= 0;

e5..    9.3*x1 - x4 =G= 0;

e6..  - 9*x1 + x4 =G= 0;

e7..    7*x1 - x5 =G= 0;

e8..  - 6.5*x1 + x5 =G= 0;

e9..  - 145421.402*x1 + 2931.1506*x2 - 40.427932*x3 + 5106.192*x4 + 15711.36*x5
      =G= 0;

e10..  - 155011.1084*x1 + 4360.53352*x2 + 12.9492344*x3 + 10236.884*x4
       + 13176.786*x5 =G= 0;

e11..  - 326669.5104*x1 + 7390.68412*x2 - 27.8986976*x3 + 16643.076*x4
       + 30988.146*x5 =G= 0;

e12..    145421.402*x1 - 2931.1506*x2 + 40.427932*x3 - 5106.192*x4
       - 15711.36*x5 =G= -294000;

e13..    155011.1084*x1 - 4360.53352*x2 - 12.9492344*x3 - 10236.884*x4
       - 13176.786*x5 =G= -294000;

e14..    326669.5104*x1 - 7390.68412*x2 + 27.8986976*x3 - 16643.076*x4
       - 30988.146*x5 =G= -294000;

e15..  - 8720288.849*x1 + 150512.5253*x2 - 156.6950325*x3 + 476470.3222*x4
       + 729482.8271*x5 + objvar =E= 121725;

* set non default bounds


* set non default levels

x1.l = 2.52; 
x2.l = 5.04; 
x3.l = 94.5; 
x4.l = 23.31; 
x5.l = 17.14; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
