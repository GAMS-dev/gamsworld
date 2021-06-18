*  NLP written by GAMS Convert at 10/06/06 11:33:46
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         22       22        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         32       32        0        0        0        0        0        0
*  FX      3        3        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         72       50       22        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,objvar;

Positive Variables  x1,x2,x3,x4,x5,x9,x13,x17,x21,x25;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22;


e1.. 1250*cos(x1) + x2 - x6 =E= 0;

e2.. 15625*sin(x1) + x3 + 25*x4 - x7 =E= 10000;

e3.. 1250*sin(x1) + x4 - x8 =E= 800;

e4.. 1250*cos(x5) + x6 - x10 =E= 0;

e5.. 15625*sin(x5) + x7 + 25*x8 - x11 =E= 10000;

e6.. 1250*sin(x5) + x8 - x12 =E= 800;

e7.. 3750*cos(x9) + x10 - x14 =E= 0;

e8.. 93750*sin(x9) + x11 + 50*x12 - x15 =E= 40000;

e9.. 3750*sin(x9) + x12 - x16 =E= 1600;

e10.. 3750*cos(x13) + x14 - x18 =E= 0;

e11.. 93750*sin(x13) + x15 + 50*x16 - x19 =E= 40000;

e12.. 3750*sin(x13) + x16 - x20 =E= 1600;

e13.. 3750*cos(x17) + x18 - x22 =E= 0;

e14.. 93750*sin(x17) + x19 + 50*x20 - x23 =E= 40000;

e15.. 3750*sin(x17) + x20 - x24 =E= 1600;

e16.. 9000*cos(x21) + x22 - x26 =E= 0;

e17.. 405000*sin(x21) + x23 + 90*x24 - x27 =E= 129600;

e18.. 9000*sin(x21) + x24 - x28 =E= 2880;

e19.. 9000*cos(x25) + x26 - x29 =E= 0;

e20.. 405000*sin(x25) + x27 + 90*x28 - x30 =E= 100000;

e21.. 9000*sin(x25) + x28 - x31 =E= 1000;

e22.. x29*x29 + objvar =E= 0;

* set non default bounds

x1.up = 1.58; 
x2.fx = 0; 
x3.fx = 0; 
x4.fx = 0; 
x5.up = 1.58; 
x9.up = 1.58; 
x13.up = 1.58; 
x17.up = 1.58; 
x21.up = 1.58; 
x25.up = 1.58; 

* set non default levels

x1.l = 0.5; 
x5.l = 0.5; 
x9.l = 0.5; 
x13.l = 0.5; 
x17.l = 0.5; 
x21.l = 0.5; 
x25.l = 0.5; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
