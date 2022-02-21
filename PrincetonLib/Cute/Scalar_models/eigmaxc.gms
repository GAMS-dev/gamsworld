*  NLP written by GAMS Convert at 10/06/06 11:32:02
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         23       23        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         23       23        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*        105       42       63        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,objvar;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23;


e1.. x2*x2 + x3*x3 + x4*x4 + x5*x5 + x6*x6 + x7*x7 + x8*x8 + x9*x9 + x10*x10 + 
     x11*x11 + x12*x12 + x13*x13 + x14*x14 + x15*x15 + x16*x16 + x17*x17 + x18*
     x18 + x19*x19 + x20*x20 + x21*x21 + x22*x22 =E= 1;

e2.. x2*x1 - 10*x2 - x3 =E= 0;

e3.. x3*x1 - 9*x3 - x2 - x4 =E= 0;

e4.. x4*x1 - 8*x4 - x3 - x5 =E= 0;

e5.. x5*x1 - 7*x5 - x4 - x6 =E= 0;

e6.. x6*x1 - 6*x6 - x5 - x7 =E= 0;

e7.. x7*x1 - 5*x7 - x6 - x8 =E= 0;

e8.. x8*x1 - 4*x8 - x7 - x9 =E= 0;

e9.. x9*x1 - 3*x9 - x8 - x10 =E= 0;

e10.. x10*x1 - 2*x10 - x9 - x11 =E= 0;

e11.. x11*x1 - x11 - x10 - x12 =E= 0;

e12.. x12*x1 - x11 - x13 =E= 0;

e13.. x13*x1 + x13 - x12 - x14 =E= 0;

e14.. x14*x1 + 2*x14 - x13 - x15 =E= 0;

e15.. x15*x1 + 3*x15 - x14 - x16 =E= 0;

e16.. x16*x1 + 4*x16 - x15 - x17 =E= 0;

e17.. x17*x1 + 5*x17 - x16 - x18 =E= 0;

e18.. x18*x1 + 6*x18 - x17 - x19 =E= 0;

e19.. x19*x1 + 7*x19 - x18 - x20 =E= 0;

e20.. x20*x1 + 8*x20 - x19 - x21 =E= 0;

e21.. x21*x1 + 9*x21 - x20 - x22 =E= 0;

e22.. x22*x1 + 10*x22 - x21 =E= 0;

e23..    x1 + objvar =E= 0;

* set non default bounds

x2.lo = -1; x2.up = 1; 
x3.lo = -1; x3.up = 1; 
x4.lo = -1; x4.up = 1; 
x5.lo = -1; x5.up = 1; 
x6.lo = -1; x6.up = 1; 
x7.lo = -1; x7.up = 1; 
x8.lo = -1; x8.up = 1; 
x9.lo = -1; x9.up = 1; 
x10.lo = -1; x10.up = 1; 
x11.lo = -1; x11.up = 1; 
x12.lo = -1; x12.up = 1; 
x13.lo = -1; x13.up = 1; 
x14.lo = -1; x14.up = 1; 
x15.lo = -1; x15.up = 1; 
x16.lo = -1; x16.up = 1; 
x17.lo = -1; x17.up = 1; 
x18.lo = -1; x18.up = 1; 
x19.lo = -1; x19.up = 1; 
x20.lo = -1; x20.up = 1; 
x21.lo = -1; x21.up = 1; 
x22.lo = -1; x22.up = 1; 

* set non default levels

x1.l = 1; 
x2.l = 0.218217890235992; 
x3.l = 0.218217890235992; 
x4.l = 0.218217890235992; 
x5.l = 0.218217890235992; 
x6.l = 0.218217890235992; 
x7.l = 0.218217890235992; 
x8.l = 0.218217890235992; 
x9.l = 0.218217890235992; 
x10.l = 0.218217890235992; 
x11.l = 0.218217890235992; 
x12.l = 0.218217890235992; 
x13.l = 0.218217890235992; 
x14.l = 0.218217890235992; 
x15.l = 0.218217890235992; 
x16.l = 0.218217890235992; 
x17.l = 0.218217890235992; 
x18.l = 0.218217890235992; 
x19.l = 0.218217890235992; 
x20.l = 0.218217890235992; 
x21.l = 0.218217890235992; 
x22.l = 0.218217890235992; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
