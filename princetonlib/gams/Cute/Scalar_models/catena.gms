*  NLP written by GAMS Convert at 10/06/06 11:16:04
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         12       12        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         37       37        0        0        0        0        0        0
*  FX      4        4        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         79       13       66        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,objvar;

Positive Variables  x1,x13,x25;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1.. sqr(x2 - x1) + sqr(x14 - x13) + sqr(x26 - x25) =E= 1;

e2.. sqr(x3 - x2) + sqr(x15 - x14) + sqr(x27 - x26) =E= 1;

e3.. sqr(x4 - x3) + sqr(x16 - x15) + sqr(x28 - x27) =E= 1;

e4.. sqr(x5 - x4) + sqr(x17 - x16) + sqr(x29 - x28) =E= 1;

e5.. sqr(x6 - x5) + sqr(x18 - x17) + sqr(x30 - x29) =E= 1;

e6.. sqr(x7 - x6) + sqr(x19 - x18) + sqr(x31 - x30) =E= 1;

e7.. sqr(x8 - x7) + sqr(x20 - x19) + sqr(x32 - x31) =E= 1;

e8.. sqr(x9 - x8) + sqr(x21 - x20) + sqr(x33 - x32) =E= 1;

e9.. sqr(x10 - x9) + sqr(x22 - x21) + sqr(x34 - x33) =E= 1;

e10.. sqr(x11 - x10) + sqr(x23 - x22) + sqr(x35 - x34) =E= 1;

e11.. sqr(x12 - x11) + sqr(x24 - x23) + sqr(x36 - x35) =E= 1;

e12..  - 222.954545454545*x13 - 445.909090909091*x14 - 445.909090909091*x15
       - 445.909090909091*x16 - 445.909090909091*x17 - 445.909090909091*x18
       - 445.909090909091*x19 - 445.909090909091*x20 - 445.909090909091*x21
       - 445.909090909091*x22 - 445.909090909091*x23 - 222.954545454545*x24
       + objvar =E= 0;

* set non default bounds

x1.fx = 0; 
x12.fx = 6.6; 
x13.fx = 0; 
x25.fx = 0; 

* set non default levels

x2.l = 0.6; 
x3.l = 1.2; 
x4.l = 1.8; 
x5.l = 2.4; 
x6.l = 3; 
x7.l = 3.6; 
x8.l = 4.2; 
x9.l = 4.8; 
x10.l = 5.4; 
x11.l = 6; 
x14.l = -0.6; 
x15.l = -1.2; 
x16.l = -1.8; 
x17.l = -2.4; 
x18.l = -3; 
x19.l = -3.6; 
x20.l = -4.2; 
x21.l = -4.8; 
x22.l = -5.4; 
x23.l = -6; 
x24.l = -6.6; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
