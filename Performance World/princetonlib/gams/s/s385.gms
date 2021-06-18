*  NLP written by GAMS Convert at 07/02/05 18:32:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        1       10        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        142       16      126        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1..  - (100*sqr(x1) + 100*sqr(x2) + 10*sqr(x3) + 5*sqr(x4) + 10*sqr(x5) + 25*
     sqr(x8) + 10*sqr(x10) + 55*sqr(x11) + 5*sqr(x12) + 45*sqr(x13) + 20*sqr(
     x14)) =G= -385;

e2..  - (90*sqr(x1) + 100*sqr(x2) + 10*sqr(x3) + 35*sqr(x4) + 20*sqr(x5) + 5*
     sqr(x6) + 35*sqr(x8) + 55*sqr(x9) + 25*sqr(x10) + 20*sqr(x11) + 40*sqr(x13
     ) + 25*sqr(x14) + 10*sqr(x15)) =G= -470;

e3..  - (70*sqr(x1) + 50*sqr(x2) + 55*sqr(x4) + 25*sqr(x5) + 100*sqr(x6) + 40*
     sqr(x7) + 50*sqr(x8) + 30*sqr(x10) + 60*sqr(x11) + 10*sqr(x12) + 30*sqr(
     x13) + 40*sqr(x15)) =G= -560;

e4..  - (50*sqr(x1) + 65*sqr(x4) + 35*sqr(x5) + 100*sqr(x6) + 36*sqr(x7) + 60*
     sqr(x8) + 15*sqr(x10) + 75*sqr(x12) + 35*sqr(x13) + 30*sqr(x14) + 65*sqr(
     x15)) =G= -565;

e5..  - (50*sqr(x1) + 10*sqr(x2) + 70*sqr(x3) + 60*sqr(x4) + 45*sqr(x5) + 45*
     sqr(x6) + 35*sqr(x8) + 65*sqr(x9) + 5*sqr(x10) + 75*sqr(x11) + 100*sqr(x12
     ) + 75*sqr(x13) + 10*sqr(x14)) =G= -645;

e6..  - (40*sqr(x1) + 50*sqr(x3) + 95*sqr(x4) + 50*sqr(x5) + 35*sqr(x6) + 10*
     sqr(x7) + 60*sqr(x8) + 45*sqr(x10) + 15*sqr(x11) + 20*sqr(x12) + 5*sqr(x14
     ) + 5*sqr(x15)) =G= -430;

e7..  - (30*sqr(x1) + 60*sqr(x2) + 30*sqr(x3) + 90*sqr(x4) + 30*sqr(x6) + 5*
     sqr(x7) + 25*sqr(x8) + 70*sqr(x10) + 20*sqr(x11) + 25*sqr(x12) + 70*sqr(
     x13) + 15*sqr(x14) + 15*sqr(x15)) =G= -485;

e8..  - (20*sqr(x1) + 30*sqr(x2) + 40*sqr(x3) + 25*sqr(x4) + 40*sqr(x5) + 25*
     sqr(x6) + 15*sqr(x7) + 10*sqr(x8) + 80*sqr(x9) + 20*sqr(x10) + 30*sqr(x11)
      + 30*sqr(x12) + 5*sqr(x13) + 65*sqr(x14) + 20*sqr(x15)) =G= -455;

e9..  - (10*sqr(x1) + 70*sqr(x2) + 10*sqr(x3) + 35*sqr(x4) + 25*sqr(x5) + 65*
     sqr(x6) + 30*sqr(x8) + 25*sqr(x11) + 15*sqr(x13) + 50*sqr(x14) + 55*sqr(
     x15)) =G= -890;

e10..  - (5*sqr(x1) + 10*sqr(x2) + 100*sqr(x3) + 5*sqr(x4) + 20*sqr(x5) + 5*
      sqr(x6) + 10*sqr(x7) + 35*sqr(x8) + 95*sqr(x9) + 70*sqr(x10) + 20*sqr(x11
      ) + 10*sqr(x12) + 35*sqr(x13) + 10*sqr(x14) + 30*sqr(x15)) =G= -460;

e11..    486*x1 + 640*x2 + 758*x3 + 776*x4 + 477*x5 + 707*x6 + 175*x7 + 619*x8
       + 627*x9 + 614*x10 + 475*x11 + 377*x12 + 524*x13 + 468*x14 + 529*x15
       + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
