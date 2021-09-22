*  NLP written by GAMS Convert at 06/26/06 16:29:37
*  
*  Equation counts
*      Total        E        G        L        N        X        C
*          2        2        0        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*         15       15        0        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*         29       15       14        0
*
*  Solve m using NLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14;

Equations  e1,e2;


e1..    5.47934*x1 + 0.83234*x2 + 0.94749*x3 + 1.11082*x4 + 2.64824*x5
      + 1.55868*x6 + 1.73215*x7 + 3.90896*x8 + 2.74284*x9 + 2.60541*x10
      + 5.96184*x11 + 3.29522*x12 + 1.83517*x13 + 2.81372*x14 =E= 1;

e2..  - (12842.275/x1 + 634.25/x2 + 634.25/x3 + 634.125/x4 + 1268/x5 + 633.875/
     x6 + 633.75/x7 + 1267/x8 + 760.05/x9 + 633.25/x10 + 1266.25/x11 + 632.875/
     x12 + 394.46/x13 + 940.838/x14) + objvar =E= 0;

* set non default bounds

x1.up = 0.04; 
x2.up = 0.04; 
x3.up = 0.04; 
x4.up = 0.04; 
x5.up = 0.04; 
x6.up = 0.03; 
x7.up = 0.03; 
x8.up = 0.03; 
x9.up = 0.03; 
x10.up = 0.03; 
x11.up = 0.03; 
x12.up = 0.03; 
x13.up = 0.03; 
x14.up = 0.03; 

* set non default levels

x1.l = 0.01; 
x2.l = 0.01; 
x3.l = 0.01; 
x4.l = 0.01; 
x5.l = 0.01; 
x6.l = 0.01; 
x7.l = 0.01; 
x8.l = 0.01; 
x9.l = 0.01; 
x10.l = 0.01; 
x11.l = 0.01; 
x12.l = 0.01; 
x13.l = 0.01; 
x14.l = 0.01; 

* set non default marginals


Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

Solve m using NLP minimizing objvar;
