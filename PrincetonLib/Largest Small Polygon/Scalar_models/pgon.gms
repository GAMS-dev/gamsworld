*  NLP written by GAMS Convert at 11/29/04 16:21:11
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         21        1        5       15        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         13       13        0        0        0        0        0        0
*  FX      4        4        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         83       11       72        0
*
*  Solve m using NLP maximizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,objvar;

Positive Variables  x1,x2,x4,x5,x7,x8,x10,x11,x12;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1.. sqr(x7) + sqr(x8) - 2*x7*x8*cos(x2 - x1) =L= 1;

e2.. sqr(x7) + sqr(x9) - 2*x7*x9*cos(x3 - x1) =L= 1;

e3.. sqr(x7) + sqr(x10) - 2*x7*x10*cos(x4 - x1) =L= 1;

e4.. sqr(x7) + sqr(x11) - 2*x7*x11*cos(x5 - x1) =L= 1;

e5.. sqr(x7) + sqr(x12) - 2*x7*x12*cos(x6 - x1) =L= 1;

e6.. sqr(x8) + sqr(x9) - 2*x8*x9*cos(x3 - x2) =L= 1;

e7.. sqr(x8) + sqr(x10) - 2*x8*x10*cos(x4 - x2) =L= 1;

e8.. sqr(x8) + sqr(x11) - 2*x8*x11*cos(x5 - x2) =L= 1;

e9.. sqr(x8) + sqr(x12) - 2*x8*x12*cos(x6 - x2) =L= 1;

e10.. sqr(x9) + sqr(x10) - 2*x9*x10*cos(x4 - x3) =L= 1;

e11.. sqr(x9) + sqr(x11) - 2*x9*x11*cos(x5 - x3) =L= 1;

e12.. sqr(x9) + sqr(x12) - 2*x9*x12*cos(x6 - x3) =L= 1;

e13.. sqr(x10) + sqr(x11) - 2*x10*x11*cos(x5 - x4) =L= 1;

e14.. sqr(x10) + sqr(x12) - 2*x10*x12*cos(x6 - x4) =L= 1;

e15.. sqr(x11) + sqr(x12) - 2*x11*x12*cos(x6 - x5) =L= 1;

e16..  - x1 + x2 =G= 0;

e17..  - x2 + x3 =G= 0;

e18..  - x3 + x4 =G= 0;

e19..  - x4 + x5 =G= 0;

e20..  - x5 + x6 =G= 0;

e21..  - 0.5*(x8*x7*sin(x2 - x1) + x9*x8*sin(x3 - x2) + x10*x9*sin(x4 - x3) + 
      x11*x10*sin(x5 - x4) + x12*x11*sin(x6 - x5)) + objvar =E= 0;

* set non default bounds

x1.up = 0.2; 
x3.fx = 1.57432; 
x6.fx = 3.14159265358979; 
x7.up = 1; 
x8.up = 1; 
x9.fx = 1; 
x10.up = 1; 
x11.up = 1; 
x12.fx = 0; 

* set non default levels

x7.l = 0.489795918367347; 
x8.l = 0.816326530612245; 
x10.l = 0.979591836734694; 
x11.l = 0.816326530612245; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP maximizing objvar;
