*  NLP written by GAMS Convert at 07/02/05 18:32:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31       31        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31        1       30        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,objvar;

Equations  e1;


e1..  - (x1*x1 + 2*x2*x2 + 3*x3*x3 + 4*x4*x4 + 5*x5*x5 + 6*x6*x6 + 7*x7*x7 + 8*
     x8*x8 + 9*x9*x9 + 10*x10*x10 + 11*x11*x11 + 12*x12*x12 + 13*x13*x13 + 14*
     x14*x14 + 15*x15*x15 + 16*x16*x16 + 17*x17*x17 + 18*x18*x18 + 19*x19*x19
      + 20*x20*x20 + 21*x21*x21 + 22*x22*x22 + 23*x23*x23 + 24*x24*x24 + 25*x25
     *x25 + 26*x26*x26 + 27*x27*x27 + 28*x28*x28 + 29*x29*x29 + 30*x30*x30)
      + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x7.l = 1; 
x8.l = 1; 
x9.l = 1; 
x10.l = 1; 
x11.l = 1; 
x12.l = 1; 
x13.l = 1; 
x14.l = 1; 
x15.l = 1; 
x16.l = 1; 
x17.l = 1; 
x18.l = 1; 
x19.l = 1; 
x20.l = 1; 
x21.l = 1; 
x22.l = 1; 
x23.l = 1; 
x24.l = 1; 
x25.l = 1; 
x26.l = 1; 
x27.l = 1; 
x28.l = 1; 
x29.l = 1; 
x30.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
