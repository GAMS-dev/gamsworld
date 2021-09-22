*  NLP written by GAMS Convert at 07/02/05 18:32:27
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

Equations  e1;


e1..  - (x1*(x1 + 0.5*x2 + 0.333333333333333*x3 + 0.25*x4) + x2*(0.5*x1 + 
     0.333333333333333*x2 + 0.25*x3 + 0.2*x4) + x3*(0.333333333333333*x1 + 0.25
     *x2 + 0.2*x3 + 0.166666666666667*x4) + x4*(0.25*x1 + 0.2*x2 + 
     0.166666666666667*x3 + 0.142857142857143*x4)) + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -4; 
x2.l = -2; 
x3.l = -1.333; 
x4.l = -1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
