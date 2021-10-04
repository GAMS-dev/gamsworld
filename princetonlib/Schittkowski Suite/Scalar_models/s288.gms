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


e1..  - (sqr(x1 + 10*x6) + 5*sqr(x11 - x16) + POWER(x6 - 2*x11,4) + 10*POWER(x1
      - x16,4) + sqr(x2 + 10*x7) + 5*sqr(x12 - x17) + POWER(x7 - 2*x12,4) + 10*
     POWER(x2 - x17,4) + sqr(x3 + 10*x8) + 5*sqr(x13 - x18) + POWER(x8 - 2*x13,
     4) + 10*POWER(x3 - x18,4) + sqr(x4 + 10*x9) + 5*sqr(x14 - x19) + POWER(x9
      - 2*x14,4) + 10*POWER(x4 - x19,4) + sqr(x5 + 10*x10) + 5*sqr(x15 - x20)
      + POWER(x10 - 2*x15,4) + 10*POWER(x5 - x20,4)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 3; 
x2.l = 3; 
x3.l = 3; 
x4.l = 3; 
x5.l = 3; 
x6.l = -1; 
x7.l = -1; 
x8.l = -1; 
x9.l = -1; 
x10.l = -1; 
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
