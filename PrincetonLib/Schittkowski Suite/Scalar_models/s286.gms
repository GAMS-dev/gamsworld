*  NLP written by GAMS Convert at 07/02/05 18:32:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         21        1       20        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Equations  e1;


e1..  - (100*sqr(sqr(x1) - x11) + sqr((-1) + x1) + 100*sqr(sqr(x2) - x12) + 
     sqr((-1) + x2) + 100*sqr(sqr(x3) - x13) + sqr((-1) + x3) + 100*sqr(sqr(x4)
      - x14) + sqr((-1) + x4) + 100*sqr(sqr(x5) - x15) + sqr((-1) + x5) + 100*
     sqr(sqr(x6) - x16) + sqr((-1) + x6) + 100*sqr(sqr(x7) - x17) + sqr((-1) + 
     x7) + 100*sqr(sqr(x8) - x18) + sqr((-1) + x8) + 100*sqr(sqr(x9) - x19) + 
     sqr((-1) + x9) + 100*sqr(sqr(x10) - x20) + sqr((-1) + x10)) + objvar
      =E= 0;

* set non default bounds


* set non default levels

x1.l = -1.2; 
x2.l = -1.2; 
x3.l = -1.2; 
x4.l = -1.2; 
x5.l = -1.2; 
x6.l = -1.2; 
x7.l = -1.2; 
x8.l = -1.2; 
x9.l = -1.2; 
x10.l = -1.2; 
x11.l = 1; 
x12.l = 1; 
x13.l = 1; 
x14.l = 1; 
x15.l = 1; 
x16.l = 1; 
x17.l = 1; 
x18.l = 1; 
x19.l = 1; 
x20.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
