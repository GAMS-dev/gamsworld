*  NLP written by GAMS Convert at 10/06/06 11:34:14
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


e1..  - (sqr((-34780) + exp(x2/(50 + x3))*x1) + sqr((-28610) + exp(x2/(55 + x3)
     )*x1) + sqr((-23650) + exp(x2/(60 + x3))*x1) + sqr((-19630) + exp(x2/(65
      + x3))*x1) + sqr((-16370) + exp(x2/(70 + x3))*x1) + sqr((-13720) + exp(x2
     /(75 + x3))*x1) + sqr((-11540) + exp(x2/(80 + x3))*x1) + sqr((-9744) + 
     exp(x2/(85 + x3))*x1) + sqr((-8261) + exp(x2/(90 + x3))*x1) + sqr((-7030)
      + exp(x2/(95 + x3))*x1) + sqr((-6005) + exp(x2/(100 + x3))*x1) + sqr((-
     5147) + exp(x2/(105 + x3))*x1) + sqr((-4427) + exp(x2/(110 + x3))*x1) + 
     sqr((-3820) + exp(x2/(115 + x3))*x1) + sqr((-3307) + exp(x2/(120 + x3))*x1
     ) + sqr((-2872) + exp(x2/(125 + x3))*x1)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.02; 
x2.l = 4000; 
x3.l = 250; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
