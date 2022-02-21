*  DNLP written by GAMS Convert at 10/06/06 11:33:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        1        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          2        2        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          3        2        1        0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,objvar;

Positive Variables  x1;

Equations  e1,e2;


e1..    0.85*x1 =L= 0;

e2..  - (0.5*(-7.5 + 0.5*(abs((-15) + 0.025*x1) + 0.025*x1))/(-15 + 0.025*x1)*(
     -1.125 + 1.5*abs(0.025*x1)) + 0.5*(7.5 + 0.5*(abs((-15) + 0.025*x1) - 
     0.025*x1))/(-15 + 0.025*x1)*sqr(abs(0.025*x1)) + 0.5*(-7.5 + 0.5*(abs((-15
     ) + 0.09*x1) + 0.09*x1))/(-15 + 0.09*x1)*(-1.125 + 1.5*abs(0.09*x1)) + 0.5
     *(7.5 + 0.5*(abs((-15) + 0.09*x1) - 0.09*x1))/(-15 + 0.09*x1)*sqr(abs(0.09
     *x1)) + 0.5*(-7.5 + 0.5*(abs((-15) + 0.3125*x1) + 0.3125*x1))/(-15 + 
     0.3125*x1)*(-1.125 + 1.5*abs(0.3125*x1)) + 0.5*(7.5 + 0.5*(abs((-15) + 
     0.3125*x1) - 0.3125*x1))/(-15 + 0.3125*x1)*sqr(abs(0.3125*x1)) + 0.5*(-7.5
      + 0.5*(abs((-15) + 0.4907*x1) + 0.4907*x1))/(-15 + 0.4907*x1)*(-1.125 + 
     1.5*abs(0.4907*x1)) + 0.5*(7.5 + 0.5*(abs((-15) + 0.4907*x1) - 0.4907*x1))
     /(-15 + 0.4907*x1)*sqr(abs(0.4907*x1)) + 0.5*(-7.5 + 0.5*(abs((-15) + 0.9*
     x1) + 0.9*x1))/(-15 + 0.9*x1)*(-1.125 + 1.5*abs(0.9*x1)) + 0.5*(7.5 + 0.5*
     (abs((-15) + 0.9*x1) - 0.9*x1))/(-15 + 0.9*x1)*sqr(abs(0.9*x1))) + objvar
      =E= 0;

* set non default bounds


* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
