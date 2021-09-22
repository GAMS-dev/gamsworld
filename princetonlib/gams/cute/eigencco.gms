*  DNLP written by GAMS Convert at 10/06/06 11:32:01
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         16       16        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31       31        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        156        1      155        0
*
*  Solve m using DNLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16;


e1.. x7*x6 + x12*x11 + x17*x16 + x22*x21 + x27*x26 =E= 0;

e2.. x8*x6 + x13*x11 + x18*x16 + x23*x21 + x28*x26 =E= 0;

e3.. x8*x7 + x13*x12 + x18*x17 + x23*x22 + x28*x27 =E= 0;

e4.. x9*x6 + x14*x11 + x19*x16 + x24*x21 + x29*x26 =E= 0;

e5.. x9*x7 + x14*x12 + x19*x17 + x24*x22 + x29*x27 =E= 0;

e6.. x9*x8 + x14*x13 + x19*x18 + x24*x23 + x29*x28 =E= 0;

e7.. x10*x6 + x15*x11 + x20*x16 + x25*x21 + x30*x26 =E= 0;

e8.. x10*x7 + x15*x12 + x20*x17 + x25*x22 + x30*x27 =E= 0;

e9.. x10*x8 + x15*x13 + x20*x18 + x25*x23 + x30*x28 =E= 0;

e10.. x10*x9 + x15*x14 + x20*x19 + x25*x24 + x30*x29 =E= 0;

e11.. x6*x6 + x11*x11 + x16*x16 + x21*x21 + x26*x26 =E= 1;

e12.. x7*x7 + x12*x12 + x17*x17 + x22*x22 + x27*x27 =E= 1;

e13.. x8*x8 + x13*x13 + x18*x18 + x23*x23 + x28*x28 =E= 1;

e14.. x9*x9 + x14*x14 + x19*x19 + x24*x24 + x29*x29 =E= 1;

e15.. x10*x10 + x15*x15 + x20*x20 + x25*x25 + x30*x30 =E= 1;

e16..  - (sqr((-2) + x6*x6*x1 + x11*x11*x2 + x16*x16*x3 + x21*x21*x4 + x26*x26*
      x5) + sqr((-1) + x7*x6*x1 + x12*x11*x2 + x17*x16*x3 + x22*x21*x4 + x27*
      x26*x5) + sqr((-1) + x7*x7*x1 + x12*x12*x2 + x17*x17*x3 + x22*x22*x4 + 
      x27*x27*x5) + sqr(x8*x6*x1 + x13*x11*x2 + x18*x16*x3 + x23*x21*x4 + x28*
      x26*x5) + sqr((-1) + x8*x7*x1 + x13*x12*x2 + x18*x17*x3 + x23*x22*x4 + 
      x28*x27*x5) + sqr(x9*x6*x1 + x14*x11*x2 + x19*x16*x3 + x24*x21*x4 + x29*
      x26*x5) + sqr(x9*x7*x1 + x14*x12*x2 + x19*x17*x3 + x24*x22*x4 + x29*x27*
      x5) + sqr(x10*x6*x1 + x15*x11*x2 + x20*x16*x3 + x25*x21*x4 + x30*x26*x5)
       + sqr(x10*x7*x1 + x15*x12*x2 + x20*x17*x3 + x25*x22*x4 + x30*x27*x5))
       + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 1; 
x4.l = 1; 
x5.l = 1; 
x6.l = 1; 
x12.l = 1; 
x18.l = 1; 
x24.l = 1; 
x30.l = 1; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using DNLP minimizing objvar;
