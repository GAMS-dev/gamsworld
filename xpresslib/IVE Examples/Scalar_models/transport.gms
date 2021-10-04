*  LP written by GAMS Convert at 01/17/08 23:45:26
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*         10        6        0        4        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         21       21        0        0        0        0        0        0
*  FX      3        3        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         58       58        0        0
*
*  Solve m using LP minimizing objvar;
*

Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10;


e1..    x1 + x2 + x3 + x4 + x5 =L= 3000;

e2..    x6 + x7 + x8 + x9 + x10 =L= 2700;

e3..    x11 + x12 + x13 + x14 + x15 =L= 4500;

e4..    x16 + x17 + x18 + x19 + x20 =L= 4000;

e5..    x1 + x6 + x11 + x16 =E= 2840;

e6..    x2 + x7 + x12 + x17 =E= 2800;

e7..    x3 + x8 + x13 + x18 =E= 2600;

e8..    x4 + x9 + x14 + x19 =E= 2820;

e9..    x5 + x10 + x15 + x20 =E= 2750;

e10..  - 8500*x2 - 8500*x3 - 6800*x4 - 3400*x5 - 10100*x6 - 5000*x7 - 5000*x8
       - 5000*x9 - 8400*x10 - 5400*x11 - 8800*x12 - 10500*x13 - 17300*x14
       - 12300*x17 - 7200*x18 - 5500*x19 - 8900*x20 + objvar =E= 0;

* set non default bounds

x1.fx = 0; 
x2.up = 1000; 
x3.up = 1000; 
x4.up = 1000; 
x5.up = 2000; 
x6.up = 1000; 
x7.up = 2000; 
x8.up = 1000; 
x9.up = 1000; 
x10.up = 300; 
x11.up = 3000; 
x12.up = 2000; 
x13.up = 1000; 
x14.up = 200; 
x15.fx = 0; 
x16.fx = 0; 
x17.up = 2000; 
x18.up = 2000; 
x19.up = 2000; 
x20.up = 500; 

* set non default levels


* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using LP minimizing objvar;
