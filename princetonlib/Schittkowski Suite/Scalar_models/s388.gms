*  NLP written by GAMS Convert at 07/02/05 18:32:35
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         26        1       25        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         16       16        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        343      202      141        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


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
     x15)) =G= -390;

e10..  - (5*sqr(x1) + 10*sqr(x2) + 100*sqr(x3) + 5*sqr(x4) + 20*sqr(x5) + 5*
      sqr(x6) + 10*sqr(x7) + 35*sqr(x8) + 95*sqr(x9) + 70*sqr(x10) + 20*sqr(x11
      ) + 10*sqr(x12) + 35*sqr(x13) + 10*sqr(x14) + 30*sqr(x15)) =G= -460;

e11..  - 100*x1 - 100*x2 - 10*x3 - 5*x4 - 10*x5 - 25*x8 - 10*x10 - 55*x11
       - 5*x12 - 45*x13 - 20*x14 =G= -385;

e12..  - 90*x1 - 100*x2 - 10*x3 - 35*x4 - 20*x5 - 5*x6 - 35*x8 - 55*x9 - 25*x10
       - 20*x11 - 40*x13 - 25*x14 - 10*x15 =G= -470;

e13..  - 70*x1 - 50*x2 - 55*x4 - 25*x5 - 100*x6 - 40*x7 - 50*x8 - 30*x10
       - 60*x11 - 10*x12 - 30*x13 - 40*x15 =G= -560;

e14..  - 50*x1 - 65*x4 - 35*x5 - 100*x6 - 36*x7 - 60*x8 - 15*x10 - 75*x12
       - 35*x13 - 30*x14 - 65*x15 =G= -565;

e15..  - 50*x1 - 10*x2 - 70*x3 - 60*x4 - 45*x5 - 45*x6 - 35*x8 - 65*x9 - 5*x10
       - 75*x11 - 100*x12 - 75*x13 - 10*x14 =G= -645;

e16..  - 40*x1 - 50*x3 - 95*x4 - 50*x5 - 35*x6 - 10*x7 - 60*x8 - 45*x10
       - 15*x11 - 20*x12 - 5*x14 - 5*x15 =G= -430;

e17..  - 30*x1 - 60*x2 - 30*x3 - 90*x4 - 30*x6 - 5*x7 - 25*x8 - 70*x10 - 20*x11
       - 25*x12 - 70*x13 - 15*x14 - 15*x15 =G= -485;

e18..  - 20*x1 - 30*x2 - 40*x3 - 25*x4 - 40*x5 - 25*x6 - 15*x7 - 10*x8 - 80*x9
       - 20*x10 - 30*x11 - 30*x12 - 5*x13 - 65*x14 - 20*x15 =G= -455;

e19..  - 10*x1 - 70*x2 - 10*x3 - 35*x4 - 25*x5 - 65*x6 - 30*x8 - 25*x11
       - 15*x13 - 50*x14 - 55*x15 =G= -390;

e20..  - 5*x1 - 10*x2 - 100*x3 - 5*x4 - 20*x5 - 5*x6 - 10*x7 - 35*x8 - 95*x9
       - 70*x10 - 20*x11 - 10*x12 - 35*x13 - 10*x14 - 30*x15 =G= -460;

e21..  - x1 - 2*x2 - 3*x3 - 4*x4 - 5*x5 - 6*x6 - 7*x7 - 8*x8 - 9*x9 - 10*x10
       - 15*x11 - 16*x12 - 17*x13 - 18*x14 - 19*x15 =G= -70;

e22..  - 45*x1 - 25*x2 - 35*x3 - 85*x4 - 40*x5 - 73*x6 - 17*x7 - 52*x8 - 86*x9
       - 14*x10 - 30*x11 - 50*x12 - 40*x13 - 70*x14 - 60*x15 =G= -361;

e23..  - 53*x1 - 74*x2 - 26*x3 - 17*x4 - 25*x5 - 25*x6 - 26*x7 - 24*x8 - 85*x9
       - 35*x10 - 14*x11 - 23*x12 - 37*x13 - 56*x14 - 10*x15 =G= -265;

e24..  - 12*x1 - 43*x2 - 51*x3 - 39*x4 - 58*x5 - 42*x6 - 60*x7 - 20*x8 - 40*x9
       - 80*x10 - 75*x11 - 85*x12 - 95*x13 - 23*x14 - 67*x15 =G= -395;

e25.. 0.5*(sqr((-2) + x1) + 2*sqr((-2) + x2) + 3*sqr((-2) + x3) + 4*sqr((-2) + 
      x4) + 5*sqr((-2) + x5) + 6*sqr((-2) + x6) + 7*sqr((-2) + x7) + 8*sqr((-2)
       + x8) + 9*sqr((-2) + x9) + 10*sqr((-2) + x10) + 11*sqr((-2) + x11) + 12*
      sqr((-2) + x12) + 13*sqr((-2) + x13) + 14*sqr((-2) + x14) + 15*sqr((-2)
       + x15)) =G= 193.121;

e26..    486*x1 + 640*x2 + 758*x3 + 776*x4 + 477*x5 + 707*x6 + 175*x7 + 619*x8
       + 627*x9 + 614*x10 + 475*x11 + 377*x12 + 524*x13 + 468*x14 + 529*x15
       + objvar =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
