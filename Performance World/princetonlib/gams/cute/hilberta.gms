*  NLP written by GAMS Convert at 10/06/06 11:33:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         11       11        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         11        1       10        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,objvar;

Equations  e1;


e1..  - (x1*(x1 + 0.5*x2 + 0.333333333333333*x3 + 0.25*x4 + 0.2*x5 + 
     0.166666666666667*x6 + 0.142857142857143*x7 + 0.125*x8 + 0.111111111111111
     *x9 + 0.1*x10) + x2*(0.5*x1 + 0.333333333333333*x2 + 0.25*x3 + 0.2*x4 + 
     0.166666666666667*x5 + 0.142857142857143*x6 + 0.125*x7 + 0.111111111111111
     *x8 + 0.1*x9 + 0.0909090909090909*x10) + x3*(0.333333333333333*x1 + 0.25*
     x2 + 0.2*x3 + 0.166666666666667*x4 + 0.142857142857143*x5 + 0.125*x6 + 
     0.111111111111111*x7 + 0.1*x8 + 0.0909090909090909*x9 + 0.0833333333333333
     *x10) + x4*(0.25*x1 + 0.2*x2 + 0.166666666666667*x3 + 0.142857142857143*x4
      + 0.125*x5 + 0.111111111111111*x6 + 0.1*x7 + 0.0909090909090909*x8 + 
     0.0833333333333333*x9 + 0.0769230769230769*x10) + x5*(0.2*x1 + 
     0.166666666666667*x2 + 0.142857142857143*x3 + 0.125*x4 + 0.111111111111111
     *x5 + 0.1*x6 + 0.0909090909090909*x7 + 0.0833333333333333*x8 + 
     0.0769230769230769*x9 + 0.0714285714285714*x10) + x6*(0.166666666666667*x1
      + 0.142857142857143*x2 + 0.125*x3 + 0.111111111111111*x4 + 0.1*x5 + 
     0.0909090909090909*x6 + 0.0833333333333333*x7 + 0.0769230769230769*x8 + 
     0.0714285714285714*x9 + 0.0666666666666667*x10) + x7*(0.142857142857143*x1
      + 0.125*x2 + 0.111111111111111*x3 + 0.1*x4 + 0.0909090909090909*x5 + 
     0.0833333333333333*x6 + 0.0769230769230769*x7 + 0.0714285714285714*x8 + 
     0.0666666666666667*x9 + 0.0625*x10) + x8*(0.125*x1 + 0.111111111111111*x2
      + 0.1*x3 + 0.0909090909090909*x4 + 0.0833333333333333*x5 + 
     0.0769230769230769*x6 + 0.0714285714285714*x7 + 0.0666666666666667*x8 + 
     0.0625*x9 + 0.0588235294117647*x10) + x9*(0.111111111111111*x1 + 0.1*x2 + 
     0.0909090909090909*x3 + 0.0833333333333333*x4 + 0.0769230769230769*x5 + 
     0.0714285714285714*x6 + 0.0666666666666667*x7 + 0.0625*x8 + 
     0.0588235294117647*x9 + 0.0555555555555556*x10) + x10*(0.1*x1 + 
     0.0909090909090909*x2 + 0.0833333333333333*x3 + 0.0769230769230769*x4 + 
     0.0714285714285714*x5 + 0.0666666666666667*x6 + 0.0625*x7 + 
     0.0588235294117647*x8 + 0.0555555555555556*x9 + 0.0526315789473684*x10))
      + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = -4; 
x2.l = -2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;