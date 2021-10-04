*  NLP written by GAMS Convert at 10/06/06 11:47:19
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         13        6        7        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12;

Equations  e1;


e1..  - (x1*x2 + x2*x3 + x3*x4 + x4*x5 + x5*x6 + x6*x7 - 10*x1 - 20*x2 - 30*x3
      - 40*x4 - 50*x5 - 60*x6 - 70*x7) + 80*x8 + 90*x9 + 100*x10 + 110*x11
      + 120*x12 + objvar =E= 0;

* set non default bounds

x1.up = 10; 
x2.up = 10; 
x3.up = 10; 
x4.up = 10; 
x5.up = 10; 
x6.up = 10; 
x7.up = 10; 
x8.up = 10; 
x9.up = 10; 
x10.up = 10; 
x11.up = 10; 
x12.up = 10; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
