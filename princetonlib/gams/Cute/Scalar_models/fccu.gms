*  NLP written by GAMS Convert at 10/06/06 11:32:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          9        9        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         20       20        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         48       29       19        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9;


e1..    x1 - x2 + x9 =E= 0;

e2..    x2 - x3 - x4 - x5 - x6 - x7 =E= 0;

e3..    x7 - x8 - x9 =E= 0;

e4..    x3 - x10 - x11 + x14 =E= 0;

e5..    x11 - x12 - x13 =E= 0;

e6..    x13 - x14 - x17 =E= 0;

e7..    x12 - x15 - x16 =E= 0;

e8..    x17 - x18 - x19 =E= 0;

e9..  - (5*sqr((-31) + x1) + sqr((-36) + x2) + sqr((-20) + x3) + 3.00000003*
     sqr((-3) + x4) + 3.00000003*sqr((-5) + x5) + 3.00000003*sqr((-3.5) + x6)
      + sqr((-4.2) + x7) + sqr((-0.9) + x8) + sqr((-3.9) + x9) + sqr((-2.2) + 
     x10) + sqr((-22.8) + x11) + sqr((-6.8) + x12) + sqr((-19) + x13) + sqr((-
     8.5) + x14) + 3.00000003*sqr((-2.2) + x15) + 3.00000003*sqr((-2.5) + x16)
      + sqr((-10.8) + x17) + 3.00000003*sqr((-6.5) + x18) + 3.00000003*sqr((-
     6.5) + x19)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 
x9.l = 1; 
x10.l = 1; 
x11.l = 1; 
x12.l = 1; 
x13.l = 1; 
x14.l = 1; 
x15.l = 1; 
x16.l = 1; 
x17.l = 1; 
x18.l = 1; 
x19.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
