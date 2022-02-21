*  NLP written by GAMS Convert at 07/02/05 18:32:30
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        1        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1,e2;


e1.. 0.49*x2 - x1*x2 =G= 0.09;

e2..  - (sqr(0.48 + (-exp(-2*x2)*(0.49 - x1)) - x1) + sqr(0.47 + (-exp(-2*x2)*(
     0.49 - x1)) - x1) + sqr(0.48 + (-exp(-2*x2)*(0.49 - x1)) - x1) + sqr(0.47
      + (-exp(-2*x2)*(0.49 - x1)) - x1) + sqr(0.46 + (-exp(-4*x2)*(0.49 - x1))
      - x1) + sqr(0.46 + (-exp(-4*x2)*(0.49 - x1)) - x1) + sqr(0.45 + (-exp(-4*
     x2)*(0.49 - x1)) - x1) + sqr(0.43 + (-exp(-4*x2)*(0.49 - x1)) - x1) + sqr(
     0.45 + (-exp(-6*x2)*(0.49 - x1)) - x1) + sqr(0.43 + (-exp(-6*x2)*(0.49 - 
     x1)) - x1) + sqr(0.43 + (-exp(-6*x2)*(0.49 - x1)) - x1) + sqr(0.44 + (-
     exp(-8*x2)*(0.49 - x1)) - x1) + sqr(0.43 + (-exp(-8*x2)*(0.49 - x1)) - x1)
      + sqr(0.43 + (-exp(-8*x2)*(0.49 - x1)) - x1) + sqr(0.46 + (-exp(-10*x2)*(
     0.49 - x1)) - x1) + sqr(0.45 + (-exp(-10*x2)*(0.49 - x1)) - x1) + sqr(0.42
      + (-exp(-12*x2)*(0.49 - x1)) - x1) + sqr(0.42 + (-exp(-12*x2)*(0.49 - x1)
     ) - x1) + sqr(0.43 + (-exp(-12*x2)*(0.49 - x1)) - x1) + sqr(0.41 + (-exp(-
     14*x2)*(0.49 - x1)) - x1) + sqr(0.41 + (-exp(-14*x2)*(0.49 - x1)) - x1) + 
     sqr(0.4 + (-exp(-14*x2)*(0.49 - x1)) - x1) + sqr(0.42 + (-exp(-16*x2)*(
     0.49 - x1)) - x1) + sqr(0.4 + (-exp(-16*x2)*(0.49 - x1)) - x1) + sqr(0.4
      + (-exp(-16*x2)*(0.49 - x1)) - x1) + sqr(0.41 + (-exp(-18*x2)*(0.49 - x1)
     ) - x1) + sqr(0.4 + (-exp(-18*x2)*(0.49 - x1)) - x1) + sqr(0.41 + (-exp(-
     18*x2)*(0.49 - x1)) - x1) + sqr(0.41 + (-exp(-20*x2)*(0.49 - x1)) - x1) + 
     sqr(0.4 + (-exp(-20*x2)*(0.49 - x1)) - x1) + sqr(0.4 + (-exp(-22*x2)*(0.49
      - x1)) - x1) + sqr(0.4 + (-exp(-22*x2)*(0.49 - x1)) - x1) + sqr(0.38 + (-
     exp(-22*x2)*(0.49 - x1)) - x1) + sqr(0.41 + (-exp(-24*x2)*(0.49 - x1)) - 
     x1) + sqr(0.4 + (-exp(-24*x2)*(0.49 - x1)) - x1) + sqr(0.4 + (-exp(-26*x2)
     *(0.49 - x1)) - x1) + sqr(0.41 + (-exp(-28*x2)*(0.49 - x1)) - x1) + sqr(
     0.38 + (-exp(-28*x2)*(0.49 - x1)) - x1) + sqr(0.4 + (-exp(-30*x2)*(0.49 - 
     x1)) - x1) + sqr(0.4 + (-exp(-30*x2)*(0.49 - x1)) - x1) + sqr(0.39 + (-
     exp(-32*x2)*(0.49 - x1)) - x1) + sqr(0.39 + (-exp(-34*x2)*(0.49 - x1)) - 
     x1)) + objvar =E= 0;

* set non default bounds

x1.lo = 0.4; 
x2.lo = 0.4; 

* set non default levels

x1.l = 0.42; 
x2.l = 5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
