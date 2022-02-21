*  NLP written by GAMS Convert at 10/06/06 11:31:12
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         24       18        6        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         29       29        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         83       14       69        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24;


e1.. sqr(x7) + sqr((-10) + x8) - sqr(x1) =E= 0;

e2.. sqr((-8) + x9) + sqr((-10) + x10) - sqr(x1) =E= 0;

e3.. sqr((-12) + x11) + sqr((-5) + x12) - sqr(x1) =E= 0;

e4.. sqr((-8) + x13) + sqr(x14) - sqr(x1) =E= 0;

e5.. sqr(x15) + sqr(x16) - sqr(x1) =E= 0;

e6..  - (sqr((-4) + x17) + sqr((-8) + x18) - sqr(x1)) =G= 0;

e7..  - (sqr((-8) + x19) + sqr((-7) + x20) - sqr(x1)) =G= 0;

e8..  - (sqr((-8) + x21) + sqr((-3) + x22) - sqr(x1)) =G= 0;

e9..  - (sqr((-4) + x23) + sqr((-1) + x24) - sqr(x1)) =G= 0;

e10..  - (sqr((-2) + x25) + sqr((-3) + x26) - sqr(x1)) =G= 0;

e11..  - (sqr((-2) + x27) + sqr((-6) + x28) - sqr(x1)) =G= 0;

e12.. (-(x9 - x7)*x2) - x7 + x17 =E= 0;

e13.. (-(x10 - x8)*x2) - x8 + x18 =E= 0;

e14.. (-(x11 - x9)*x3) - x9 + x19 =E= 0;

e15.. (-(x12 - x10)*x3) - x10 + x20 =E= 0;

e16.. (-(x13 - x11)*x4) - x11 + x21 =E= 0;

e17.. (-(x14 - x12)*x4) - x12 + x22 =E= 0;

e18.. (-(x15 - x13)*x5) - x13 + x23 =E= 0;

e19.. (-(x16 - x14)*x5) - x14 + x24 =E= 0;

e20.. (-(x7 - x15)*x6) - x15 + x25 =E= 0;

e21.. (-(x8 - x16)*x6) - x16 + x26 =E= 0;

e22.. (-(x7 - x15)*x6) - x15 + x27 =E= 0;

e23.. (-(x8 - x16)*x6) - x16 + x28 =E= 0;

e24..  - x1 + objvar =E= 0;

* set non default bounds

x1.up = 3; 
x2.up = 1; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 

* set non default levels

x1.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
