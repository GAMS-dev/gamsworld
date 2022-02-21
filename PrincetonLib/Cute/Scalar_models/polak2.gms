*  NLP written by GAMS Convert at 10/06/06 11:47:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        1        0        2        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         12       12        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         24        4       20        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10;

Equations  e1,e2,e3;


e1.. exp(1e-8*sqr(x1) + sqr(2 + x2) + sqr(x3) + 4*sqr(x4) + sqr(x5) + sqr(x6)
      + sqr(x7) + sqr(x8) + sqr(x9) + sqr(x10)) - x11 =L= 0;

e2.. exp(1e-8*sqr(x1) + sqr((-2) + x2) + sqr(x3) + 4*sqr(x4) + sqr(x5) + sqr(x6
     ) + sqr(x7) + sqr(x8) + sqr(x9) + sqr(x10)) - x11 =L= 0;

e3..  - x11 + objvar =E= 0;

* set non default bounds

x1.up = 200; 
x2.up = 200; 
x3.up = 200; 
x4.up = 200; 
x5.up = 200; 
x6.up = 200; 
x7.up = 200; 
x8.up = 200; 
x9.up = 200; 
x10.up = 200; 

* set non default levels

x1.l = 100; 
x2.l = 0.01; 
x3.l = 0.01; 
x4.l = 0.01; 
x5.l = 0.01; 
x6.l = 0.01; 
x7.l = 0.01; 
x8.l = 0.01; 
x9.l = 0.01; 
x10.l = 0.01; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
