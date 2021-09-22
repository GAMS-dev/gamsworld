*  NLP written by GAMS Convert at 07/02/05 18:32:30
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


e1..  - (sqr(1 - 0.013869625520111*exp(-4*x2)*x1 - 0.013869625520111*x3) + sqr(
     1 - 0.0152439024390244*exp(-5.75*x2)*x1 - 0.0152439024390244*x3) + sqr(1
      - 0.0178890876565295*exp(-7.5*x2)*x1 - 0.0178890876565295*x3) + sqr(1 - 
     0.0584795321637427*exp(-24*x2)*x1 - 0.0584795321637427*x3) + sqr(1 - 
     0.102040816326531*exp(-32*x2)*x1 - 0.102040816326531*x3) + sqr(1 - 
     0.222222222222222*exp(-48*x2)*x1 - 0.222222222222222*x3) + sqr(1 - 
     0.769230769230769*exp(-72*x2)*x1 - 0.769230769230769*x3) + sqr(1 - 
     1.66666666666667*exp(-96*x2)*x1 - 1.66666666666667*x3)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 30; 
x3.l = 3; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
