*  NLP written by GAMS Convert at 10/06/06 11:52:17
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          1        1        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         21        1       20        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Equations  e1;


e1..  - (sin((-1) + x1) + 100*sin(x2 - sqr(x1)) + 100*sin(x3 - sqr(x2)) + 100*
     sin(x4 - sqr(x3)) + 100*sin(x5 - sqr(x4)) + 100*sin(x6 - sqr(x5)) + 100*
     sin(x7 - sqr(x6)) + 100*sin(x8 - sqr(x7)) + 100*sin(x9 - sqr(x8)) + 100*
     sin(x10 - sqr(x9)) + 100*sin(x11 - sqr(x10)) + 100*sin(x12 - sqr(x11)) + 
     100*sin(x13 - sqr(x12)) + 100*sin(x14 - sqr(x13)) + 100*sin(x15 - sqr(x14)
     ) + 100*sin(x16 - sqr(x15)) + 100*sin(x17 - sqr(x16)) + 100*sin(x18 - sqr(
     x17)) + 100*sin(x19 - sqr(x18)) + 100*sin(x20 - sqr(x19))) + objvar =E= 0;

* set non default bounds

x1.lo = -4.71238898025; x1.up = 1.57079632675; 
x2.lo = -4.51073145611981; x2.up = 1.77245385088019; 
x3.lo = -4.51073145611981; x3.up = 1.77245385088019; 
x4.lo = -4.51073145611981; x4.up = 1.77245385088019; 
x5.lo = -4.51073145611981; x5.up = 1.77245385088019; 
x6.lo = -4.51073145611981; x6.up = 1.77245385088019; 
x7.lo = -4.51073145611981; x7.up = 1.77245385088019; 
x8.lo = -4.51073145611981; x8.up = 1.77245385088019; 
x9.lo = -4.51073145611981; x9.up = 1.77245385088019; 
x10.lo = -4.51073145611981; x10.up = 1.77245385088019; 
x11.lo = -4.51073145611981; x11.up = 1.77245385088019; 
x12.lo = -4.51073145611981; x12.up = 1.77245385088019; 
x13.lo = -4.51073145611981; x13.up = 1.77245385088019; 
x14.lo = -4.51073145611981; x14.up = 1.77245385088019; 
x15.lo = -4.51073145611981; x15.up = 1.77245385088019; 
x16.lo = -4.51073145611981; x16.up = 1.77245385088019; 
x17.lo = -4.51073145611981; x17.up = 1.77245385088019; 
x18.lo = -4.51073145611981; x18.up = 1.77245385088019; 
x19.lo = -4.51073145611981; x19.up = 1.77245385088019; 
x20.lo = -4.51073145611981; x20.up = 1.77245385088019; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
