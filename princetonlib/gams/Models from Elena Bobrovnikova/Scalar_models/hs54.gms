*  NLP written by GAMS Convert at 06/26/06 16:29:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          3        3        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          8        8        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        4        7        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,objvar;

Positive Variables  x1,x3,x4,x6,x7;

Equations  e1,e2,e3;


e1..  - (2.12585034013605e-14*(1.5625e-14*sqr((-1000000) + x1) + 5e-5*(-10000
      + x1)*(-1 + x2) + sqr((-1) + x2))*sqr((-2000000) + x3) + 0.0004*sqr((-10)
      + x4) + 400*sqr((-0.001) + x5) + 4e-18*sqr((-100000000) + x6)) + x7
      =E= 0;

e2..    x1 + 4000*x2 =E= 17600;

e3.. exp(-0.5*x7) + objvar =E= 0;

* set non default bounds

x1.up = 20000; 
x2.lo = -1; x2.up = 1; 
x3.up = 5000000; 
x4.up = 10; 
x5.lo = -1; x5.up = 1; 
x6.up = 60000000; 
x7.up = 1; 

* set non default levels

x1.l = 20000; 
x2.l = 1; 
x3.l = 5000000; 
x4.l = 10; 
x5.l = 1; 
x6.l = 60000000; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
