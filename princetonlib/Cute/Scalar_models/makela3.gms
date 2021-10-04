*  NLP written by GAMS Convert at 10/06/06 11:34:06
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         21        1        0       20        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         22       22        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         42       22       20        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21;


e1.. sqr(x2) - x1 =L= 0;

e2.. sqr(x3) - x1 =L= 0;

e3.. sqr(x4) - x1 =L= 0;

e4.. sqr(x5) - x1 =L= 0;

e5.. sqr(x6) - x1 =L= 0;

e6.. sqr(x7) - x1 =L= 0;

e7.. sqr(x8) - x1 =L= 0;

e8.. sqr(x9) - x1 =L= 0;

e9.. sqr(x10) - x1 =L= 0;

e10.. sqr(x11) - x1 =L= 0;

e11.. sqr(x12) - x1 =L= 0;

e12.. sqr(x13) - x1 =L= 0;

e13.. sqr(x14) - x1 =L= 0;

e14.. sqr(x15) - x1 =L= 0;

e15.. sqr(x16) - x1 =L= 0;

e16.. sqr(x17) - x1 =L= 0;

e17.. sqr(x18) - x1 =L= 0;

e18.. sqr(x19) - x1 =L= 0;

e19.. sqr(x20) - x1 =L= 0;

e20.. sqr(x21) - x1 =L= 0;

e21..  - x1 + objvar =E= 0;

* set non default bounds


* set non default levels

x2.l = 1; 
x3.l = 2; 
x4.l = 3; 
x5.l = 4; 
x6.l = 5; 
x7.l = 6; 
x8.l = 7; 
x9.l = 8; 
x10.l = 9; 
x11.l = 10; 
x12.l = -11; 
x13.l = -12; 
x14.l = -13; 
x15.l = -14; 
x16.l = -15; 
x17.l = -16; 
x18.l = -17; 
x19.l = -18; 
x20.l = -19; 
x21.l = -20; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
