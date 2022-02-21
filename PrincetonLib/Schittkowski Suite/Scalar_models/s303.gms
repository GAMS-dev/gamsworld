*  NLP written by GAMS Convert at 07/02/05 18:32:29
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


e1..  - (sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7) + 
     sqr(x8) + sqr(x9) + sqr(x10) + sqr(x11) + sqr(x12) + sqr(x13) + sqr(x14)
      + sqr(x15) + sqr(x16) + sqr(x17) + sqr(x18) + sqr(x19) + sqr(x20) + sqr(
     0.5*x1 + x2 + 1.5*x3 + 2*x4 + 2.5*x5 + 3*x6 + 3.5*x7 + 4*x8 + 4.5*x9 + 5*
     x10 + 5.5*x11 + 6*x12 + 6.5*x13 + 7*x14 + 7.5*x15 + 8*x16 + 8.5*x17 + 9*
     x18 + 9.5*x19 + 10*x20) + POWER(0.5*x1 + x2 + 1.5*x3 + 2*x4 + 2.5*x5 + 3*
     x6 + 3.5*x7 + 4*x8 + 4.5*x9 + 5*x10 + 5.5*x11 + 6*x12 + 6.5*x13 + 7*x14 + 
     7.5*x15 + 8*x16 + 8.5*x17 + 9*x18 + 9.5*x19 + 10*x20,4)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.1; 
x2.l = 0.1; 
x3.l = 0.1; 
x4.l = 0.1; 
x5.l = 0.1; 
x6.l = 0.1; 
x7.l = 0.1; 
x8.l = 0.1; 
x9.l = 0.1; 
x10.l = 0.1; 
x11.l = 0.1; 
x12.l = 0.1; 
x13.l = 0.1; 
x14.l = 0.1; 
x15.l = 0.1; 
x16.l = 0.1; 
x17.l = 0.1; 
x18.l = 0.1; 
x19.l = 0.1; 
x20.l = 0.1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
