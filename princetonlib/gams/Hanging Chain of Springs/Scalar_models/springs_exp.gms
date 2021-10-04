*  NLP written by GAMS Convert at 11/29/04 16:21:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         11        1        0       10        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         33       33        0        0        0        0        0        0
*  FX      4        4        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         70       10       60        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,objvar;

Negative Variables  x23,x24,x25,x26,x27,x28,x29,x30,x31;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x22;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11;


e1.. exp(sqr(x12 - x11) + sqr(x23 - x22) - sqr(0.447213595499958 + x1)) =L= 1;

e2.. exp(sqr(x13 - x12) + sqr(x24 - x23) - sqr(0.447213595499958 + x2)) =L= 1;

e3.. exp(sqr(x14 - x13) + sqr(x25 - x24) - sqr(0.447213595499958 + x3)) =L= 1;

e4.. exp(sqr(x15 - x14) + sqr(x26 - x25) - sqr(0.447213595499958 + x4)) =L= 1;

e5.. exp(sqr(x16 - x15) + sqr(x27 - x26) - sqr(0.447213595499958 + x5)) =L= 1;

e6.. exp(sqr(x17 - x16) + sqr(x28 - x27) - sqr(0.447213595499958 + x6)) =L= 1;

e7.. exp(sqr(x18 - x17) + sqr(x29 - x28) - sqr(0.447213595499958 + x7)) =L= 1;

e8.. exp(sqr(x19 - x18) + sqr(x30 - x29) - sqr(0.447213595499958 + x8)) =L= 1;

e9.. exp(sqr(x20 - x19) + sqr(x31 - x30) - sqr(0.447213595499958 + x9)) =L= 1;

e10.. exp(sqr(x21 - x20) + sqr(x32 - x31) - sqr(0.447213595499958 + x10))
       =L= 1;

e11..  - 50*(sqr(x1) + sqr(x2) + sqr(x3) + sqr(x4) + sqr(x5) + sqr(x6) + sqr(x7
      ) + sqr(x8) + sqr(x9) + sqr(x10)) - 9.8*x23 - 9.8*x24 - 9.8*x25 - 9.8*x26
       - 9.8*x27 - 9.8*x28 - 9.8*x29 - 9.8*x30 - 9.8*x31 + objvar =E= 0;

* set non default bounds

x1.up = 1; 
x2.up = 1; 
x3.up = 1; 
x4.up = 1; 
x5.up = 1; 
x6.up = 1; 
x7.up = 1; 
x8.up = 1; 
x9.up = 1; 
x10.up = 1; 
x11.fx = 0; 
x12.up = 2; 
x13.up = 2; 
x14.up = 2; 
x15.up = 2; 
x16.up = 2; 
x17.up = 2; 
x18.up = 2; 
x19.up = 2; 
x20.up = 2; 
x21.fx = 2; 
x22.fx = 0; 
x23.lo = -7.5; 
x24.lo = -7.5; 
x25.lo = -7.5; 
x26.lo = -7.5; 
x27.lo = -7.5; 
x28.lo = -7.5; 
x29.lo = -7.5; 
x30.lo = -7.5; 
x31.lo = -7.5; 
x32.fx = -1; 

* set non default levels

x12.l = 0.2; 
x13.l = 0.4; 
x14.l = 0.6; 
x15.l = 0.8; 
x16.l = 1; 
x17.l = 1.2; 
x18.l = 1.4; 
x19.l = 1.6; 
x20.l = 1.8; 
x23.l = -0.1; 
x24.l = -0.2; 
x25.l = -0.3; 
x26.l = -0.4; 
x27.l = -0.5; 
x28.l = -0.6; 
x29.l = -0.7; 
x30.l = -0.8; 
x31.l = -0.9; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
