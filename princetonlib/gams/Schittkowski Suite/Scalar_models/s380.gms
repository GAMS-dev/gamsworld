*  NLP written by GAMS Convert at 07/02/05 18:32:34
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          4        1        3        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         35       10       25        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Equations  e1,e2,e3,e4;


e1..  - 0.0066940803*x4*x5 - 0.05367373*x1 - 0.021863746*x2 - 0.097733533*x3
      =G= -1;

e2.. (-1e-10*x4*x12) - 1e-8*x5/x12 - 0.01*x6/x12 - 0.0001*x7*x12 - 0.10898645*
     x4*x5 - 0.00016108052*x2*x5/x12 - 1e-5*x2 - 1e-23*x2*x4*x5 - 1.9304541e-6*
     x2*x5/(sqr(x12)*x4) - 0.001*x10/x12 - 1E-6*x1 - 1E-6*x3 =G= -1;

e3.. (-0.10898645*x4*x5) - 1e-9*x4 - 1e-9*x5 - 1.6108052e-5*x2*x5 - 1e-5*x2 - 
     1e-23*x2*x4*x5 - 1.9304541e-8*x2*x5/x4 - 0.00011184059*x1*x9 - 1e-6*x1 - 
     1e-5*x9 - 1E-6*x3 - 0.001*x6 - 0.001*x8 - 0.0001*x11 =G= -1;

e4..  - 100000*exp(-0.00133172*log(x1))*exp(-0.002270927*log(x2))*exp(-
     0.00248546*log(x3))*exp(-4.67*log(x4))*exp(-4.671973*log(x5))*exp(-0.00814
     *log(x6))*exp(-0.008092*log(x7))*exp(-0.005*log(x8))*exp(-0.000909*log(x9)
     )*exp(-0.00088*log(x10))*exp(-0.00119*log(x11)) + objvar =E= 0;

* set non default bounds

x1.lo = 0.1; x1.up = 100; 
x2.lo = 0.1; x2.up = 100; 
x3.lo = 0.1; x3.up = 100; 
x4.lo = 0.1; x4.up = 100; 
x5.lo = 0.1; x5.up = 100; 
x6.lo = 0.1; x6.up = 100; 
x7.lo = 0.1; x7.up = 100; 
x8.lo = 0.1; x8.up = 100; 
x9.lo = 0.1; x9.up = 100; 
x10.lo = 0.1; x10.up = 100; 
x11.lo = 0.1; x11.up = 100; 
x12.lo = 0.1; x12.up = 100; 

* set non default levels

x1.l = 4; 
x2.l = 4; 
x3.l = 4; 
x4.l = 4; 
x5.l = 4; 
x6.l = 4; 
x7.l = 4; 
x8.l = 4; 
x9.l = 4; 
x10.l = 4; 
x11.l = 4; 
x12.l = 4; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
