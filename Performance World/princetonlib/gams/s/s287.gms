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


e1..  - (100*sqr(sqr(x1) - x6) + sqr((-1) + x1) + 90*sqr(sqr(x11) - x16) + sqr(
     (-1) + x11) + 10.1*(sqr((-1) + x6) + sqr((-1) + x16)) + (-19.8 + 19.8*x6)*
     (-1 + x16) + 100*sqr(sqr(x2) - x7) + sqr((-1) + x2) + 90*sqr(sqr(x12) - 
     x17) + sqr((-1) + x12) + 10.1*(sqr((-1) + x7) + sqr((-1) + x17)) + (-19.8
      + 19.8*x7)*(-1 + x17) + 100*sqr(sqr(x3) - x8) + sqr((-1) + x3) + 90*sqr(
     sqr(x13) - x18) + sqr((-1) + x13) + 10.1*(sqr((-1) + x8) + sqr((-1) + x18)
     ) + (-19.8 + 19.8*x8)*(-1 + x18) + 100*sqr(sqr(x4) - x9) + sqr((-1) + x4)
      + 90*sqr(sqr(x14) - x19) + sqr((-1) + x14) + 10.1*(sqr((-1) + x9) + sqr((
     -1) + x19)) + (-19.8 + 19.8*x9)*(-1 + x19) + 100*sqr(sqr(x5) - x10) + sqr(
     (-1) + x5) + 90*sqr(sqr(x15) - x20) + sqr((-1) + x15) + 10.1*(sqr((-1) + 
     x10) + sqr((-1) + x20)) + (-19.8 + 19.8*x10)*(-1 + x20)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -3; 
x2.l = -3; 
x3.l = -3; 
x4.l = -3; 
x5.l = -3; 
x6.l = -1; 
x7.l = -1; 
x8.l = -1; 
x9.l = -1; 
x10.l = -1; 
x11.l = -3; 
x12.l = -3; 
x13.l = -3; 
x14.l = -3; 
x15.l = -3; 
x16.l = -1; 
x17.l = -1; 
x18.l = -1; 
x19.l = -1; 
x20.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
