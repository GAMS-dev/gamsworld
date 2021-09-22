*  NLP written by GAMS Convert at 10/06/06 11:53:56
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

Positive Variables  x3;

Equations  e1;


e1..  - ((-21.158931 + arctan(x1)*x3)*(-21.158931 + arctan(x1)*x3) + (-
     17.591719 + arctan(0.9375*x1 + 0.0625*x2)*x3)*(-17.591719 + arctan(0.9375*
     x1 + 0.0625*x2)*x3) + (-14.046854 + arctan(0.875*x1 + 0.125*x2)*x3)*(-
     14.046854 + arctan(0.875*x1 + 0.125*x2)*x3) + (-10.519732 + arctan(0.8125*
     x1 + 0.1875*x2)*x3)*(-10.519732 + arctan(0.8125*x1 + 0.1875*x2)*x3) + (-
     7.0058392 + arctan(0.75*x1 + 0.25*x2)*x3)*(-7.0058392 + arctan(0.75*x1 + 
     0.25*x2)*x3) + (-3.5007293 + arctan(0.6875*x1 + 0.3125*x2)*x3)*(-3.5007293
      + arctan(0.6875*x1 + 0.3125*x2)*x3) + arctan(0.625*x1 + 0.375*x2)*x3*
     arctan(0.625*x1 + 0.375*x2)*x3 + (3.5007293 + arctan(0.5625*x1 + 0.4375*x2
     )*x3)*(3.5007293 + arctan(0.5625*x1 + 0.4375*x2)*x3) + (7.0058392 + 
     arctan(0.5*x1 + 0.5*x2)*x3)*(7.0058392 + arctan(0.5*x1 + 0.5*x2)*x3) + (
     10.519732 + arctan(0.4375*x1 + 0.5625*x2)*x3)*(10.519732 + arctan(0.4375*
     x1 + 0.5625*x2)*x3) + (14.046854 + arctan(0.375*x1 + 0.625*x2)*x3)*(
     14.046854 + arctan(0.375*x1 + 0.625*x2)*x3) + (17.591719 + arctan(0.3125*
     x1 + 0.6875*x2)*x3)*(17.591719 + arctan(0.3125*x1 + 0.6875*x2)*x3) + (
     21.158931 + arctan(0.25*x1 + 0.75*x2)*x3)*(21.158931 + arctan(0.25*x1 + 
     0.75*x2)*x3) + (24.753206 + arctan(0.1875*x1 + 0.8125*x2)*x3)*(24.753206
      + arctan(0.1875*x1 + 0.8125*x2)*x3) + (28.379405 + arctan(0.125*x1 + 
     0.875*x2)*x3)*(28.379405 + arctan(0.125*x1 + 0.875*x2)*x3) + (32.042552 + 
     arctan(0.0625*x1 + 0.9375*x2)*x3)*(32.042552 + arctan(0.0625*x1 + 0.9375*
     x2)*x3) + (35.747869 + arctan(x2)*x3)*(35.747869 + arctan(x2)*x3))
      + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 0.6; 
x2.l = -0.6; 
x3.l = 20; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
