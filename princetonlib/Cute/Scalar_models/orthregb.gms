*  NLP written by GAMS Convert at 10/06/06 11:47:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          7        7        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         28       28        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         91        1       90        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7;


e1.. x1*x10*x10 + 2*x2*x10*x11 + x4*x11*x11 - 2*x7*x10 - 2*x8*x11 + 2*x3*x10*
     x12 + 2*x5*x11*x12 + x6*x12*x12 - 2*x9*x12 =E= 1;

e2.. x1*x13*x13 + 2*x2*x13*x14 + x4*x14*x14 - 2*x7*x13 - 2*x8*x14 + 2*x3*x13*
     x15 + 2*x5*x14*x15 + x6*x15*x15 - 2*x9*x15 =E= 1;

e3.. x1*x16*x16 + 2*x2*x16*x17 + x4*x17*x17 - 2*x7*x16 - 2*x8*x17 + 2*x3*x16*
     x18 + 2*x5*x17*x18 + x6*x18*x18 - 2*x9*x18 =E= 1;

e4.. x1*x19*x19 + 2*x2*x19*x20 + x4*x20*x20 - 2*x7*x19 - 2*x8*x20 + 2*x3*x19*
     x21 + 2*x5*x20*x21 + x6*x21*x21 - 2*x9*x21 =E= 1;

e5.. x1*x22*x22 + 2*x2*x22*x23 + x4*x23*x23 - 2*x7*x22 - 2*x8*x23 + 2*x3*x22*
     x24 + 2*x5*x23*x24 + x6*x24*x24 - 2*x9*x24 =E= 1;

e6.. x1*x25*x25 + 2*x2*x25*x26 + x4*x26*x26 - 2*x7*x25 - 2*x8*x26 + 2*x3*x25*
     x27 + 2*x5*x26*x27 + x6*x27*x27 - 2*x9*x27 =E= 1;

e7..  - ((-9.5 + x10)*(-9.5 + x10) + (-9.5 + x11)*(-9.5 + x11) + (-0.5 + x12)*(
     -0.5 + x12) + (-6.5 + x13)*(-6.5 + x13) + (5.5 + x14)*(5.5 + x14) + (-0.5
      + x15)*(-0.5 + x15) + (8.5 + x16)*(8.5 + x16) + (8.5 + x17)*(8.5 + x17)
      + (-0.5 + x18)*(-0.5 + x18) + (5.5 + x19)*(5.5 + x19) + (-6.5 + x20)*(-
     6.5 + x20) + (-0.5 + x21)*(-0.5 + x21) + (-0.5 + x22)*(-0.5 + x22) + (-0.5
      + x23)*(-0.5 + x23) + (-7.5 + x24)*(-7.5 + x24) + (-0.5 + x25)*(-0.5 + 
     x25) + (-0.5 + x26)*(-0.5 + x26) + (6.5 + x27)*(6.5 + x27)) + objvar
      =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x4.l = 1; 
x6.l = 1; 
x10.l = 9.5; 
x11.l = 9.5; 
x12.l = 0.5; 
x13.l = 6.5; 
x14.l = -5.5; 
x15.l = 0.5; 
x16.l = -8.5; 
x17.l = -8.5; 
x18.l = 0.5; 
x19.l = -5.5; 
x20.l = 6.5; 
x21.l = 0.5; 
x22.l = 0.5; 
x23.l = 0.5; 
x24.l = 7.5; 
x25.l = 0.5; 
x26.l = 0.5; 
x27.l = -6.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
