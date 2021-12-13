*  NLP written by GAMS Convert at 10/06/06 11:33:31
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          4        4        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          4        1        3        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,objvar;

Equations  e1;


e1..  - (sqr((-8) + exp(2.07944154167984*x2 + 4.32407712526381*x3)*x1) + sqr((-
     8.4305) + exp(2.19722457733622*x2 + 4.82779584325033*x3)*x1) + sqr((-
     9.5294) + exp(2.30258509299405*x2 + 5.3018981104784*x3)*x1) + sqr((-
     10.4627) + exp(2.39789527279837*x2 + 5.74990173930877*x3)*x1) + sqr((-12)
      + exp(2.484906649788*x2 + 6.17476105816062*x3)*x1) + sqr((-13.0205) + 
     exp(2.56494935746154*x2 + 6.57896520634235*x3)*x1) + sqr((-14.5949) + exp(
     2.63905732961526*x2 + 6.96462358899602*x3)*x1) + sqr((-16.1078) + exp(
     2.70805020110221*x2 + 7.33353589168972*x3)*x1) + sqr((-18.0596) + exp(
     2.77258872223978*x2 + 7.68724822269122*x3)*x1) + sqr((-20.4569) + exp(
     2.89037175789616*x2 + 8.35424889884376*x3)*x1) + sqr((-24.25) + exp(
     2.99573227355399*x2 + 8.97441185481296*x3)*x1) + sqr((-32.9863) + exp(
     3.2188758248682*x2 + 10.3611615759209*x3)*x1)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 100; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;