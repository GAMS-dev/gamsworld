*  NLP written by GAMS Convert at 07/02/05 18:32:27
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*          7        7        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*          7        1        6        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,objvar;

Negative Variables  x5;

Equations  e1;


e1..  - (x1*(x1 + 0.5*x2 + 0.333333333333333*x3 + 0.25*x4 + 0.2*x5 + 
     0.166666666666667*x6) + x2*(0.5*x1 + 0.333333333333333*x2 + 0.25*x3 + 0.2*
     x4 + 0.166666666666667*x5 + 0.142857142857143*x6) + x3*(0.333333333333333*
     x1 + 0.25*x2 + 0.2*x3 + 0.166666666666667*x4 + 0.142857142857143*x5 + 
     0.125*x6) + x4*(0.25*x1 + 0.2*x2 + 0.166666666666667*x3 + 
     0.142857142857143*x4 + 0.125*x5 + 0.111111111111111*x6) + x5*(0.2*x1 + 
     0.166666666666667*x2 + 0.142857142857143*x3 + 0.125*x4 + 0.111111111111111
     *x5 + 0.1*x6) + x6*(0.166666666666667*x1 + 0.142857142857143*x2 + 0.125*x3
      + 0.111111111111111*x4 + 0.1*x5 + 0.0909090909090909*x6)) + objvar =E= 0;

* set non default bounds

x5.up = -0.8; 

* set non default levels

x1.l = -4; 
x2.l = -2; 
x3.l = -1.333; 
x4.l = -1; 
x5.l = -0.8; 
x6.l = 0.6667; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
