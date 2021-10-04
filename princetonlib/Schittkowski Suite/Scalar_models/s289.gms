*  NLP written by GAMS Convert at 07/02/05 18:32:28
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         31       31        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         31        1       30        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,objvar;

Equations  e1;


e1.. exp(-(0.0166666666666667*sqr(x1) + 0.0166666666666667*sqr(x2) + 
     0.0166666666666667*sqr(x3) + 0.0166666666666667*sqr(x4) + 
     0.0166666666666667*sqr(x5) + 0.0166666666666667*sqr(x6) + 
     0.0166666666666667*sqr(x7) + 0.0166666666666667*sqr(x8) + 
     0.0166666666666667*sqr(x9) + 0.0166666666666667*sqr(x10) + 
     0.0166666666666667*sqr(x11) + 0.0166666666666667*sqr(x12) + 
     0.0166666666666667*sqr(x13) + 0.0166666666666667*sqr(x14) + 
     0.0166666666666667*sqr(x15) + 0.0166666666666667*sqr(x16) + 
     0.0166666666666667*sqr(x17) + 0.0166666666666667*sqr(x18) + 
     0.0166666666666667*sqr(x19) + 0.0166666666666667*sqr(x20) + 
     0.0166666666666667*sqr(x21) + 0.0166666666666667*sqr(x22) + 
     0.0166666666666667*sqr(x23) + 0.0166666666666667*sqr(x24) + 
     0.0166666666666667*sqr(x25) + 0.0166666666666667*sqr(x26) + 
     0.0166666666666667*sqr(x27) + 0.0166666666666667*sqr(x28) + 
     0.0166666666666667*sqr(x29) + 0.0166666666666667*sqr(x30))) + objvar
      =E= 1;

* set non default bounds


* set non default levels

x1.l = -1.03; 
x2.l = 1.07; 
x3.l = -1.1; 
x4.l = 1.13; 
x5.l = -1.17; 
x6.l = 1.2; 
x7.l = -1.23; 
x8.l = 1.27; 
x9.l = -1.3; 
x10.l = 1.33; 
x11.l = -1.37; 
x12.l = 1.4; 
x13.l = -1.43; 
x14.l = 1.47; 
x15.l = -1.5; 
x16.l = 1.53; 
x17.l = -1.57; 
x18.l = 1.6; 
x19.l = -1.63; 
x20.l = 1.67; 
x21.l = -1.7; 
x22.l = 1.73; 
x23.l = -1.77; 
x24.l = 1.8; 
x25.l = -1.83; 
x26.l = 1.87; 
x27.l = -1.9; 
x28.l = 1.93; 
x29.l = -1.97; 
x30.l = 2; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
