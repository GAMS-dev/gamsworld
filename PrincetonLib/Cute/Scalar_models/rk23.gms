*  NLP written by GAMS Convert at 10/06/06 11:47:22
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         12       12        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         18       18        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         50       24       26        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,objvar;

Positive Variables  x12,x13,x14,x15,x16,x17;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12;


e1..  - x1 + x2 =E= 0;

e2..  - x3 + x4 + x5 =E= 0;

e3..    x6 + x7 + x8 =E= 1;

e4..    x9 + x10 + x11 =E= 1;

e5.. x7*x1 + x8*x3 =E= 0.5;

e6.. x10*x1 + x11*x3 =E= 0.5;

e7.. x10*x1*x1 + x11*x3*x3 =E= 0.333333333333333;

e8.. x11*x5*x1 =E= 0.166666666666667;

e9.. 4*x10*x1*x1*x1 + 4*x11*x3*x3*x3 + x12 - x15 =E= 1;

e10.. 8*x11*x3*x5*x1 + x14 - x15 =E= 1;

e11.. 12*x11*x5*x1*x1 + x16 - x17 =E= 1;

e12..  - x12 - x13 - x14 - x15 - x16 - x17 + objvar =E= 0;

* set non default bounds


* set non default levels

x1.l = 1; 
x2.l = 1; 
x3.l = 0.5; 
x4.l = 0.25; 
x5.l = 0.25; 
x6.l = 0.5; 
x7.l = 0.5; 
x9.l = 0.166666666666667; 
x10.l = 0.166666666666667; 
x11.l = 0.666666666666667; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
