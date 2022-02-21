*  NLP written by GAMS Convert at 10/06/06 11:47:02
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         22       21        0        1        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         33       33        0        0        0        0        0        0
*  FX      3        3        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         93       61       32        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,objvar;

Positive Variables  x2,x21,x22;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22;


e1..  - (0.5*x1*x1 + 0.5*x3*x3 + 0.5*x5*x5 + 0.5*x7*x7 + 0.5*x9*x9 + 0.5*x11*
     x11 + 0.5*x13*x13 + 0.5*x15*x15 + 0.5*x17*x17 + 0.5*x19*x19 + 0.5*x21*x21)
      =L= 0;

e2..  - x1 - 0.2*x2 + x3 =E= 0;

e3.. 0.01*x2*x2 - x2 + 0.004*x1 + x4 - 0.2*x23 =E= 0;

e4..  - x3 - 0.2*x4 + x5 =E= 0;

e5.. 0.01*x4*x4 - x4 + 0.004*x3 + x6 - 0.2*x24 =E= 0;

e6..  - x5 - 0.2*x6 + x7 =E= 0;

e7.. 0.01*x6*x6 - x6 + 0.004*x5 + x8 - 0.2*x25 =E= 0;

e8..  - x7 - 0.2*x8 + x9 =E= 0;

e9.. 0.01*x8*x8 - x8 + 0.004*x7 + x10 - 0.2*x26 =E= 0;

e10..  - x9 - 0.2*x10 + x11 =E= 0;

e11.. 0.01*x10*x10 - x10 + 0.004*x9 + x12 - 0.2*x27 =E= 0;

e12..  - x11 - 0.2*x12 + x13 =E= 0;

e13.. 0.01*x12*x12 - x12 + 0.004*x11 + x14 - 0.2*x28 =E= 0;

e14..  - x13 - 0.2*x14 + x15 =E= 0;

e15.. 0.01*x14*x14 - x14 + 0.004*x13 + x16 - 0.2*x29 =E= 0;

e16..  - x15 - 0.2*x16 + x17 =E= 0;

e17.. 0.01*x16*x16 - x16 + 0.004*x15 + x18 - 0.2*x30 =E= 0;

e18..  - x17 - 0.2*x18 + x19 =E= 0;

e19.. 0.01*x18*x18 - x18 + 0.004*x17 + x20 - 0.2*x31 =E= 0;

e20..  - x19 - 0.2*x20 + x21 =E= 0;

e21.. 0.01*x20*x20 - x20 + 0.004*x19 + x22 - 0.2*x32 =E= 0;

e22..  - (0.5*x1*x1 + 0.5*x3*x3 + 0.5*x5*x5 + 0.5*x7*x7 + 0.5*x9*x9 + 0.5*x11*
      x11 + 0.5*x13*x13 + 0.5*x15*x15 + 0.5*x17*x17 + 0.5*x19*x19 + 0.5*x21*x21
      ) + objvar =E= 0;

* set non default bounds

x1.fx = 10; 
x2.fx = 0; 
x4.lo = -1; 
x6.lo = -1; 
x8.lo = -1; 
x10.lo = -1; 
x12.lo = -1; 
x14.lo = -1; 
x16.lo = -1; 
x18.lo = -1; 
x20.lo = -1; 
x22.fx = 0; 
x23.lo = -0.2; x23.up = 0.2; 
x24.lo = -0.2; x24.up = 0.2; 
x25.lo = -0.2; x25.up = 0.2; 
x26.lo = -0.2; x26.up = 0.2; 
x27.lo = -0.2; x27.up = 0.2; 
x28.lo = -0.2; x28.up = 0.2; 
x29.lo = -0.2; x29.up = 0.2; 
x30.lo = -0.2; x30.up = 0.2; 
x31.lo = -0.2; x31.up = 0.2; 
x32.lo = -0.2; x32.up = 0.2; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
