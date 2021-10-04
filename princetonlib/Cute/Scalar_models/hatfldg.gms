*  NLP written by GAMS Convert at 10/06/06 11:33:36
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         26       26        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         26       26        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         96       23       73        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26;


e1.. x2*(x1 - x3) + x2 - x13 =E= -1;

e2.. x3*(x2 - x4) + x3 - x13 =E= -1;

e3.. x4*(x3 - x5) + x4 - x13 =E= -1;

e4.. x5*(x4 - x6) + x5 - x13 =E= -1;

e5.. x6*(x5 - x7) + x6 - x13 =E= -1;

e6.. x7*(x6 - x8) + x7 - x13 =E= -1;

e7.. x8*(x7 - x9) + x8 - x13 =E= -1;

e8.. x9*(x8 - x10) + x9 - x13 =E= -1;

e9.. x10*(x9 - x11) + x10 - x13 =E= -1;

e10.. x11*(x10 - x12) + x11 - x13 =E= -1;

e11.. x12*(x11 - x13) + x12 - x13 =E= -1;

e12.. x13*(x12 - x14) + x13 - x13 =E= -1;

e13.. x14*(x13 - x15) + x14 - x13 =E= -1;

e14.. x15*(x14 - x16) + x15 - x13 =E= -1;

e15.. x16*(x15 - x17) + x16 - x13 =E= -1;

e16.. x17*(x16 - x18) + x17 - x13 =E= -1;

e17.. x18*(x17 - x19) + x18 - x13 =E= -1;

e18.. x19*(x18 - x20) + x19 - x13 =E= -1;

e19.. x20*(x19 - x21) + x20 - x13 =E= -1;

e20.. x21*(x20 - x22) + x21 - x13 =E= -1;

e21.. x22*(x21 - x23) + x22 - x13 =E= -1;

e22.. x23*(x22 - x24) + x23 - x13 =E= -1;

e23.. x24*(x23 - x25) + x24 - x13 =E= -1;

e24.. x1 - x1*x2 - x13 =E= -1;

e25.. x24*x25 + x25 - x13 =E= -1;

e26..    objvar =E= 0;

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

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
