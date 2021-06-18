*  NLP written by GAMS Convert at 06/26/06 16:29:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          5        5        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          5        1        4        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,objvar;

Positive Variables  x1,x2,x3,x4;

Equations  e1;


e1..  - (sqr(0.1957 - x1*(16 + 4*x2)/(16 + 4*x3 + x4)) + sqr(0.1947 - x1*(4 + 2
     *x2)/(4 + 2*x3 + x4)) + sqr(0.1735 - x1*(1 + x2)/(1 + x3 + x4)) + sqr(0.16
      - x1*(0.25 + 0.5*x2)/(0.25 + 0.5*x3 + x4)) + sqr(0.0844 - x1*(0.0625 + 
     0.25*x2)/(0.0625 + 0.25*x3 + x4)) + sqr(0.0627 - x1*(0.0277777777777778 + 
     0.166666666666667*x2)/(0.0277777777777778 + 0.166666666666667*x3 + x4)) + 
     sqr(0.0456 - x1*(0.015625 + 0.125*x2)/(0.015625 + 0.125*x3 + x4)) + sqr(
     0.0342 - x1*(0.01 + 0.1*x2)/(0.01 + 0.1*x3 + x4)) + sqr(0.0323 - x1*(
     0.00694444444444444 + 0.0833333333333333*x2)/(0.00694444444444444 + 
     0.0833333333333333*x3 + x4)) + sqr(0.0235 - x1*(0.00510204081632653 + 
     0.0714285714285714*x2)/(0.00510204081632653 + 0.0714285714285714*x3 + x4))
      + sqr(0.0246 - x1*(0.00390625 + 0.0625*x2)/(0.00390625 + 0.0625*x3 + x4))
     ) + objvar =E= 0;

* set non default bounds

x1.up = 0.42; 
x2.up = 0.42; 
x3.up = 0.42; 
x4.up = 0.42; 

* set non default levels

x1.l = 0.42; 
x2.l = 0.42; 
x3.l = 0.42; 
x4.l = 0.42; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
