*  NLP written by GAMS Convert at 10/06/06 11:16:13
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        3        4        4        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          9        9        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         58        3       55        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar,x8,x9;

Positive Variables  x5;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1.. sqr((-1) + x4*x3*cos(x5) + x1) + sqr(x4*x3*sin(x5) + x2) - sqr(x3 + x6)
      =L= 0;

e2.. sqr(x4*x3*cos(x5) + x1) + sqr((-1) + x4*x3*sin(x5) + x2) - sqr(x3 + x6)
      =L= 0;

e3.. sqr(x4*x3*cos(x5) + x1) + sqr(1 + x4*x3*sin(x5) + x2) - sqr(x3 + x6)
      =L= 0;

e4.. sqr((-0.5) + x4*x3*cos(x5) + x1) + sqr(x4*x3*sin(x5) + x2) - sqr(x3 + x6)
      =L= 0;

e5.. sqr((-1) + x1) + sqr(x2) - sqr(x4*x3 + x6) =G= 0;

e6.. sqr(x1) + sqr((-1) + x2) - sqr(x4*x3 + x6) =G= 0;

e7.. sqr(x1) + sqr(1 + x2) - sqr(x4*x3 + x6) =G= 0;

e8.. sqr((-0.5) + x1) + sqr(x2) - sqr(x4*x3 + x6) =G= 0;

e9..  - (sqr(x3 + x6)*(1.5707963267949 - arctan(x8/sqrt(1 - x8*x8))) - sqr(x4*
     x3 + x6)*(1.5707963267949 - arctan(x9/sqrt(1 - x9*x9))) + (x3 + x6)*x4*x3*
     sin(1.5707963267949 - arctan(x8/sqrt(1 - x8*x8)))) + objvar =E= 0;

e10.. (sqr(x4*x3) - sqr(x4*x3 + x6) + sqr(x3 + x6))/((2*x3 + 2*x6)*x4*x3) + x8
       =E= 0;

e11..  - (sqr(x4*x3) + sqr(x4*x3 + x6) - sqr(x3 + x6))/((2*x4*x3 + 2*x6)*x4*x3)
       + x9 =E= 0;

* set non default bounds

x3.lo = 1E-8; 
x4.lo = 1; 
x5.up = 6.2831852; 
x6.lo = 0.39; 
x8.lo = -0.99; x8.up = 0.99; 
x9.lo = -0.99; x9.up = 0.99; 

* set non default levels

x1.l = -40; 
x2.l = 5; 
x3.l = 1; 
x4.l = 2; 
x5.l = 1.5; 
x6.l = 0.75; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
