*  DNLP written by GAMS Convert at 10/06/06 11:31:19
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          3        3        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          3        1        2        0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,x2,objvar;

Equations  e1;


e1..  - 0.001*(POWER((-10) + x1,3) + POWER((-20) + x2,3) + 10000000000*(1 - 
     max(0,201 + (-sqr((-5) + x1)) - sqr((-5) + x2))/(1e-10 + max(0,201 + (-
     sqr((-5) + x1)) - sqr((-5) + x2))))*sqr(200 + (-sqr((-5) + x1)) - sqr((-5)
      + x2)) - max(0,201 + (-sqr((-5) + x1)) - sqr((-5) + x2))/(1e-10 + max(0,
     201 + (-sqr((-5) + x1)) - sqr((-5) + x2)))*log(1e-10 + abs(201 + (-sqr((-5
     ) + x1)) - sqr((-5) + x2))) + 10000000000*(1 - max(0,(-99) + sqr((-5) + x1
     ) + sqr((-5) + x2))/(1e-10 + max(0,(-99) + sqr((-5) + x1) + sqr((-5) + x2)
     )))*sqr((-100) + sqr((-5) + x1) + sqr((-5) + x2)) - max(0,(-99) + sqr((-5)
      + x1) + sqr((-5) + x2))/(1e-10 + max(0,(-99) + sqr((-5) + x1) + sqr((-5)
      + x2)))*log(1e-10 + abs((-99) + sqr((-5) + x1) + sqr((-5) + x2))) + 
     10000000000*(1 - max(0,1 + sqr((-5) + x2) + sqr((-6) + x1))/(1e-10 + max(0
     ,1 + sqr((-5) + x2) + sqr((-6) + x1))))*sqr(sqr((-5) + x2) + sqr((-6) + x1
     )) - max(0,1 + sqr((-5) + x2) + sqr((-6) + x1))/(1e-10 + max(0,1 + sqr((-5
     ) + x2) + sqr((-6) + x1)))*log(1e-10 + abs(1 + sqr((-5) + x2) + sqr((-6)
      + x1))) + 10000000000*(1 - max(0,83.81 + (-sqr((-5) + x2)) - sqr((-6) + 
     x1))/(1e-10 + max(0,83.81 + (-sqr((-5) + x2)) - sqr((-6) + x1))))*sqr(
     82.81 + (-sqr((-5) + x2)) - sqr((-6) + x1)) - max(0,83.81 + (-sqr((-5) + 
     x2)) - sqr((-6) + x1))/(1e-10 + max(0,83.81 + (-sqr((-5) + x2)) - sqr((-6)
      + x1)))*log(1e-10 + abs(83.81 + (-sqr((-5) + x2)) - sqr((-6) + x1))) + 
     10000000000*(1 - max(0,101 - x1)/(1e-10 + max(0,101 - x1)))*sqr(100 - x1)
      - max(0,101 - x1)/(1e-10 + max(0,101 - x1))*log(1e-10 + abs(101 - x1)) + 
     10000000000*(1 - max(0,(-12) + x1)/(1e-10 + max(0,(-12) + x1)))*sqr((-13)
      + x1) - max(0,(-12) + x1)/(1e-10 + max(0,(-12) + x1))*log(1e-10 + abs((-
     12) + x1)) + 10000000000*(1 - max(0,101 - x2)/(1e-10 + max(0,101 - x2)))*
     sqr(100 - x2) - max(0,101 - x2)/(1e-10 + max(0,101 - x2))*log(1e-10 + abs(
     101 - x2)) + 10000000000*(1 - max(0,1 + x2)/(1e-10 + max(0,1 + x2)))*sqr(
     x2) - max(0,1 + x2)/(1e-10 + max(0,1 + x2))*log(1e-10 + abs(1 + x2)))
      + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 15; 
x2.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
